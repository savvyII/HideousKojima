//Simple borg hand.
//Limited use.
/obj/item/weapon/gripper
	name = "magnetic gripper"
	desc = "A simple grasping tool specialized in construction and engineering work."
	icon = 'icons/obj/device.dmi'
	icon_state = "gripper"

	flags = NOBLUDGEON

	//Has a list of items that it can hold.
	var/list/can_hold = list(
		/obj/item/weapon/cell,
		/obj/item/weapon/airlock_electronics,
		/obj/item/weapon/tracker_electronics,
		/obj/item/weapon/module/power_control,
		/obj/item/weapon/stock_parts,
		/obj/item/frame,
		/obj/item/weapon/camera_assembly,
		/obj/item/weapon/tank,
		/obj/item/weapon/circuitboard,
		/obj/item/weapon/smes_coil,
		/obj/item/device/assembly //Primarily for making improved cameras, but opens many possibilities
		)

	var/obj/item/wrapped = null // Item currently being held.

	var/force_holder = null //
	var/justdropped = 0//When set to 1, the gripper has just dropped its item, and should not attempt to trigger anything

/obj/item/weapon/gripper/examine(var/mob/user)
	..()
	if (wrapped)
		user << span("notice", "It is holding \the [wrapped]")
	else
		user << "It is empty."


/proc/grippersafety(var/obj/item/weapon/gripper/G)
	if (!G || !G.wrapped)//The object must have been lost
		return 0

	//The object left the gripper but it still exists. Maybe placed on a table
	if (G.wrapped.loc != G)
		//Reset the force and then remove our reference to it
		G.wrapped.force = G.force_holder
		G.wrapped = null
		G.force_holder = null
		G.update_icon()
		return 0

	return 1



/obj/item/weapon/gripper/proc/grip_item(obj/item/I as obj, mob/user as mob, var/feedback = 1)
	//This function returns 1 if we successfully took the item, or 0 if it was invalid. This information is useful to the caller
	if (!wrapped)
		for(var/typepath in can_hold)
			if(istype(I,typepath))
				if (feedback)
					user << "You collect \the [I]."
				I.loc = src
				wrapped = I
				update_icon()
				return 1
		if (feedback)
			user << "<span class='danger'>Your gripper cannot hold \the [I].</span>"
		return 0
	if (feedback)
		user << "<span class='danger'>Your gripper is already holding \the [wrapped].</span>"
	return 0

/obj/item/weapon/gripper/update_icon()
	overlays.Cut()//Dummy object will be picked up by garbage collection
	if (wrapped && wrapped.icon)


		var/obj/dummy = new //We create a dummy object which looks like the gripped item, to use as an overlay
		dummy.icon = wrapped.icon
		dummy.icon_state = wrapped.icon_state
		dummy.overlays = wrapped.overlays
		dummy.layer = 20
		dummy.pixel_y = -8
		overlays += dummy

		var/image/I = image(icon, src, icon_state)//Overlaying ourselves ontop of the thing.
		I.layer = 20
		overlays += I
		//Layering overlays seems faster than blending the images


/obj/item/weapon/gripper/attack_self(mob/user as mob)
	if(wrapped)
		.=wrapped.attack_self(user)
		update_icon()
		return
	return ..()

/obj/item/weapon/gripper/AltClick(mob/user as mob)
	if(wrapped)
		.=wrapped.AltClick(user)
		update_icon()
	return ..()

/obj/item/weapon/gripper/verb/drop_item()

	set name = "Drop Item"
	set desc = "Release an item from your magnetic gripper."
	set category = "Robot Commands"

	drop(get_turf(src))

/obj/item/weapon/gripper/proc/drop(var/atom/target)
	if(wrapped.loc != src)
		wrapped = null
		return

	wrapped.forceMove(target)
	wrapped = null
	update_icon()
	return 1

/obj/item/weapon/gripper/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(wrapped) 	//The force of the wrapped obj gets set to zero during the attack() and afterattack().
		force_holder = wrapped.force
		wrapped.force = 0.0
		wrapped.attack(M,user)
		if(QDELETED(wrapped))
			wrapped = null
		return 1
	else// mob interactions
		switch (user.a_intent)
			if ("help")
				user.visible_message("[user] [pick("boops", "squeezes", "pokes", "prods", "strokes", "bonks")] [M] with the [src]")
			if ("harm")
				M.attack_generic(user,user.mob_size,"crushed")//about 16 dmg for a cyborg
				//Attack generic does a visible message so we dont need one here
				user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN*3)
				playsound(user, 'sound/effects/attackblob.ogg', 60, 1)
				//Slow,powerful attack for borgs. No spamclicking
	return 0

/obj/item/weapon/gripper/attackby(var/obj/item/O as obj, var/mob/user as mob)
	if (wrapped)
		var/resolved = wrapped.attackby(O,user)
		if(!resolved && wrapped && O)
			O.afterattack(wrapped,user,1)//We pass along things targeting the gripper, to objects inside the gripper. So that we can draw chemicals from held beakers for instance
	return

/obj/item/weapon/gripper/afterattack(var/atom/target, var/mob/living/user, proximity, params)

	if(!proximity)
		return // This will prevent them using guns at range but adminbuse can add them directly to modules, so eh.

	//There's some weirdness with items being lost inside the arm. Trying to fix all cases. ~Z
	if(!wrapped)
		for(var/obj/item/thing in src.contents)
			wrapped = thing
			break

	if(wrapped) //Already have an item.
		return//This is handled in /mob/living/silicon/robot/GripperClickOn

	else if (istype(target, /obj/item/weapon/storage) && !istype(target, /obj/item/weapon/storage/secure))
		for (var/obj/item/C in target.contents)
			if (grip_item(C, user, 0))
				user << "You grab the [C] from inside the [target.name]."
				return
		user << "There is nothing inside the box that your gripper can collect"
		return

	else if(istype(target,/obj/item)) //Check that we're not pocketing a mob.

		//...and that the item is not in a container.
		if(!isturf(target.loc))
			return

		grip_item(target, user)

	else if (!justdropped)
		target.attack_ai(user)

	justdropped = 0







/*
	//Definitions of gripper subtypes
*/

// VEEEEERY limited version for mining borgs. Basically only for swapping cells and upgrading the drills.
/obj/item/weapon/gripper/miner
	name = "drill maintenance gripper"
	desc = "A simple grasping tool for the maintenance of heavy drilling machines."
	icon_state = "gripper-mining"

	can_hold = list(
	/obj/item/weapon/cell,
	/obj/item/weapon/stock_parts
	)

/obj/item/weapon/gripper/paperwork
	name = "paperwork gripper"
	desc = "A simple grasping tool for clerical work."

	can_hold = list(
		/obj/item/weapon/clipboard,
		/obj/item/weapon/paper,
		/obj/item/weapon/paper_bundle,
		/obj/item/weapon/card/id,
		/obj/item/weapon/book,
		/obj/item/weapon/newspaper
		)

/obj/item/weapon/gripper/research //A general usage gripper, used for toxins/robotics/xenobio/etc
	name = "scientific gripper"
	icon_state = "gripper-sci"
	desc = "A simple grasping tool suited to assist in a wide array of research applications."

	can_hold = list(
		/obj/item/weapon/cell,
		/obj/item/weapon/stock_parts,
		/obj/item/device/mmi,
		/obj/item/robot_parts,
		/obj/item/borg/upgrade,
		/obj/item/device/flash, //to build borgs,
		/obj/item/organ/internal/brain, //to insert into MMIs,
		/obj/item/stack/cable_coil, //again, for borg building,
		/obj/item/weapon/circuitboard,
		/obj/item/slime_extract,
		/obj/item/weapon/reagent_containers/glass,
		/obj/item/weapon/reagent_containers/food/snacks/monkeycube,
		/obj/item/device/assembly,//For building bots and similar complex R&D devices
		/obj/item/device/healthanalyzer,//For building medibots
		/obj/item/weapon/disk,
		/obj/item/device/analyzer/plant_analyzer,//For farmbot construction
		/obj/item/weapon/material/minihoe
		)

/obj/item/weapon/gripper/chemistry //A gripper designed for chemistry, to allow borgs to work efficiently in the lab
	name = "chemistry gripper"
	icon_state = "gripper-sci"
	desc = "A specialised grasping tool designed for working in chemistry and pharmaceutical labs"

	can_hold = list(
		/obj/item/weapon/reagent_containers/glass,
		/obj/item/weapon/reagent_containers/pill,
		/obj/item/weapon/reagent_containers/spray,
		/obj/item/weapon/storage/pill_bottle,
		/obj/item/weapon/hand_labeler,
		/obj/item/stack/material/phoron
		)

/obj/item/weapon/gripper/service //Used to handle food, drinks, and seeds.
	name = "service gripper"
	icon_state = "gripper"
	desc = "A simple grasping tool used to perform tasks in the service sector, such as handling food, drinks, and seeds."

	can_hold = list(
		/obj/item/weapon/reagent_containers/glass,
		/obj/item/weapon/reagent_containers/food,
		/obj/item/seeds,
		/obj/item/weapon/grown
		)

/obj/item/weapon/gripper/no_use //Used when you want to hold and put items in other things, but not able to 'use' the item

/obj/item/weapon/gripper/no_use/attack_self(mob/user as mob)
	return

/obj/item/weapon/gripper/no_use/loader //This is used to disallow building with metal.
	name = "sheet loader"
	desc = "A specialized loading device, designed to pick up and insert sheets of materials inside machines."
	icon_state = "gripper-sheet"

	can_hold = list(
		/obj/item/stack/material
		)

/obj/item/weapon/matter_decompiler

	name = "matter decompiler"
	desc = "Eating trash, bits of glass, or other debris will replenish your stores."
	icon = 'icons/obj/device.dmi'
	icon_state = "decompiler"

	//Metal, glass, wood, plastic.
	var/datum/matter_synth/metal = null
	var/datum/matter_synth/glass = null
	var/datum/matter_synth/wood = null
	var/datum/matter_synth/plastic = null

/obj/item/weapon/matter_decompiler/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	return

/obj/item/weapon/matter_decompiler/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, proximity, params)

	if(!proximity) return //Not adjacent.

	//We only want to deal with using this on turfs. Specific items aren't important.
	var/turf/T = get_turf(target)
	if(!istype(T))
		return

	//Used to give the right message.
	var/grabbed_something = 0

	for(var/mob/M in T)
		if(istype(M,/mob/living/simple_animal/lizard) || istype(M,/mob/living/simple_animal/mouse))
			src.loc.visible_message("<span class='danger'>[src.loc] sucks [M] into its decompiler. There's a horrible crunching noise.</span>","<span class='danger'>It's a bit of a struggle, but you manage to suck [M] into your decompiler. It makes a series of visceral crunching noises.</span>")
			new/obj/effect/decal/cleanable/blood/splatter(get_turf(src))
			qdel(M)
			if(wood)
				wood.add_charge(2000)
			if(plastic)
				plastic.add_charge(2000)
			return

		else if(istype(M,/mob/living/silicon/robot/drone) && !M.client)

			var/mob/living/silicon/robot/D = src.loc

			if(!istype(D))
				return

			to_chat(D, "<span class='danger'>You begin decompiling [M].</span>")

			if(!do_after(D,50))
				to_chat(D, "<span class='danger'>You need to remain still while decompiling such a large object.</span>")
				return

			if(!M || !D) return

			to_chat(D, "<span class='danger'>You carefully and thoroughly decompile [M], storing as much of its resources as you can within yourself.</span>")
			qdel(M)
			new/obj/effect/decal/cleanable/blood/oil(get_turf(src))

			if(metal)
				metal.add_charge(15000)
			if(glass)
				glass.add_charge(15000)
			if(wood)
				wood.add_charge(2000)
			if(plastic)
				plastic.add_charge(1000)
			return
		else
			continue

	for(var/obj/W in T)
		//Different classes of items give different commodities.
		if(istype(W,/obj/item/weapon/cigbutt))
			if(plastic)
				plastic.add_charge(500)
		else if(istype(W,/obj/effect/spider/spiderling))
			if(wood)
				wood.add_charge(2000)
			if(plastic)
				plastic.add_charge(2000)
		else if(istype(W,/obj/item/weapon/light))
			var/obj/item/weapon/light/L = W
			if(L.status >= 2) //In before someone changes the inexplicably local defines. ~ Z
				if(metal)
					metal.add_charge(250)
				if(glass)
					glass.add_charge(250)
			else
				continue
		else if(istype(W,/obj/effect/decal/remains/robot))
			if(metal)
				metal.add_charge(2000)
			if(plastic)
				plastic.add_charge(2000)
			if(glass)
				glass.add_charge(1000)
		else if(istype(W,/obj/item/trash))
			if(metal)
				metal.add_charge(1000)
			if(plastic)
				plastic.add_charge(3000)
		else if(istype(W,/obj/effect/decal/cleanable/blood/gibs/robot))
			if(metal)
				metal.add_charge(2000)
			if(glass)
				glass.add_charge(2000)
		else if(istype(W,/obj/item/ammo_casing))
			if(metal)
				metal.add_charge(1000)
		else if(istype(W,/obj/item/weapon/material/shard/shrapnel))
			if(metal)
				metal.add_charge(1000)
		else if(istype(W,/obj/item/weapon/material/shard))
			if(glass)
				glass.add_charge(1000)
		else if(istype(W,/obj/item/weapon/reagent_containers/food/snacks/grown))
			if(wood)
				wood.add_charge(4000)
		else if(istype(W,/obj/item/pipe))
			// This allows drones and engiborgs to clear pipe assemblies from floors.
		else
			continue

		qdel(W)
		grabbed_something = 1

	if(grabbed_something)
		to_chat(user, "<span class='notice'>You deploy your decompiler and clear out the contents of \the [T].</span>")
	else
		to_chat(user, "<span class='danger'>Nothing on \the [T] is useful to you.</span>")
	return

/obj/item/weapon/gripper/no_use/organ
	name = "organ gripper"
	icon_state = "gripper-flesh"
	desc = "A specialized grasping tool used to preserve and manipulate organic material."

	can_hold = list(
		/obj/item/organ
		)

/obj/item/weapon/gripper/no_use/organ/Entered(var/atom/movable/AM)
	if(istype(AM, /obj/item/organ))
		var/obj/item/organ/O = AM
		O.preserved = 1
		for(var/obj/item/organ/organ in O)
			organ.preserved = 1
	..()

/obj/item/weapon/gripper/no_use/organ/Exited(var/atom/movable/AM)
	if(istype(AM, /obj/item/organ))
		var/obj/item/organ/O = AM
		O.preserved = 0
		for(var/obj/item/organ/organ in O)
			organ.preserved = 0
	..()

/obj/item/weapon/gripper/no_use/organ/robotics
	name = "robotics organ gripper"
	icon_state = "gripper-flesh"
	desc = "A specialized grasping tool used in robotics work."

	can_hold = list(
		/obj/item/organ/external,
		/obj/item/organ/internal/brain, //to insert into MMIs,
		/obj/item/organ/internal/cell,
		/obj/item/organ/internal/eyes/robot
		)

/obj/item/weapon/gripper/no_use/mech
	name = "exosuit gripper"
	icon_state = "gripper-mech"
	desc = "A large, heavy-duty grasping tool used in construction of mechs."

	can_hold = list(
		/obj/item/mecha_parts/part,
		/obj/item/mecha_parts/mecha_equipment,
		/obj/item/mecha_parts/mecha_tracking
		)

/obj/item/weapon/gripper/gravekeeper	//Used for handling grave things, flowers, etc.
	name = "grave gripper"
	icon_state = "gripper"
	desc = "A specialized grasping tool used in the preparation and maintenance of graves."

	can_hold = list(
		/obj/item/seeds,
		/obj/item/weapon/grown,
		/obj/item/weapon/material/gravemarker
		)