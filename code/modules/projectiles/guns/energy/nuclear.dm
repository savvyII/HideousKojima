/obj/item/weapon/gun/energy/gun
	name = "AE10 energy carbine"
	desc = "An Ace Energy Consortium energy carbine with two settings: Stun and kill."
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	fire_delay = 4
	projectile_type = /obj/item/projectile/beam/stun/med
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "energystun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/med, modifystate="energystun", charge_cost = 240),
		list(mode_name="lethal", projectile_type=/obj/item/projectile/beam, modifystate="energykill", charge_cost = 240),
		)

/obj/item/weapon/gun/energy/gun/mounted
	name = "mounted energy gun"
	self_recharge = 1
	use_external_power = 1


/obj/item/weapon/gun/energy/gun/burst
	name = "AE11x energy machine gun"
	desc = "The AE11x is based off the popular AE10 carbine design, but with a burst function in a slimmer package."
	icon_state = "fm-2tstun100"	//May resprite this to be more rifley
	item_state = null	//so the human update icon uses the icon_state instead.
	charge_cost = 100
	force = 8
	w_class = ITEMSIZE_LARGE	//Probably gonna make it a rifle sooner or later
	fire_delay = 6

	projectile_type = /obj/item/projectile/beam/stun/weak
	origin_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 2, TECH_ILLEGAL = 3)
	modifystate = "fm-2tstun"

//	requires_two_hands = 1
//	one_handed_penalty = 30

	firemodes = list(
		list(mode_name="stun", burst=1, projectile_type=/obj/item/projectile/beam/stun/weak, modifystate="fm-2tstun", charge_cost = 100),
		list(mode_name="stun burst", burst=3, fire_delay=null, move_delay=4, burst_accuracy=list(0,0,0), dispersion=list(0.0, 0.2, 0.5), projectile_type=/obj/item/projectile/beam/stun/weak, modifystate="fm-2tstun"),
		list(mode_name="lethal", burst=1, projectile_type=/obj/item/projectile/beam/burstlaser, modifystate="fm-2tkill", charge_cost = 200),
		list(mode_name="lethal burst", burst=3, fire_delay=null, move_delay=4, burst_accuracy=list(0,0,0), dispersion=list(0.0, 0.2, 0.5), projectile_type=/obj/item/projectile/beam/burstlaser, modifystate="fm-2tkill"),
		)

/obj/item/weapon/gun/energy/gun/nuclear
	name = "advanced energy gun"
	desc = "An energy gun with an experimental miniaturized reactor."
	icon_state = "nucgunstun"
	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 5, TECH_POWER = 3)
	slot_flags = SLOT_BELT
	force = 8 //looks heavier than a pistol
	w_class = ITEMSIZE_LARGE	//Looks bigger than a pistol, too.
	fire_delay = 6	//This one's not a handgun, it should have the same fire delay as everything else
	cell_type = /obj/item/weapon/cell/device/weapon/recharge
	battery_lock = 1
	modifystate = null

//	requires_two_hands = 1
//	one_handed_penalty = 15 // It's rather bulky, so holding it in one hand is a little harder than with two, however it's not 'required'.

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="nucgunstun", charge_cost = 240),
		list(mode_name="lethal", projectile_type=/obj/item/projectile/beam, modifystate="nucgunkill", charge_cost = 480),
		)

/obj/item/weapon/gun/energy/pistol
	name = "AE5 energy pistol"
	desc = "An Ace Energy Consortium hold-out energy pistol commonly seen in human space. The trade off for the smaller size is weaker firepower."
	icon_state = "epistolstun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	fire_sound = 'sound/weapons/Taser.ogg'
	w_class = ITEMSIZE_SMALL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	fire_delay = 10
	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "epistolstun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/weak, modifystate="epistolstun", fire_sound='sound/weapons/Taser.ogg', charge_cost = 480),
		list(mode_name="lethal", projectile_type=/obj/item/projectile/beam/pistol, modifystate="epistolkill", fire_sound='sound/weapons/Laser.ogg', charge_cost = 480)
		)

/obj/item/weapon/gun/energy/rifle
	name = "AE15 energy rifle"
	desc = "An Ace Energy Consortium rifle with two settings: Stun and kill. Renowned for it's relatively low energy consumption and firepower."
	icon_state = "eriflestun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	fire_delay = 6
	w_class = ITEMSIZE_LARGE
	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "eriflestun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="eriflestun", charge_cost = 120),
		list(mode_name="lethal", projectile_type=/obj/item/projectile/beam, modifystate="eriflekill", charge_cost = 120),
		)