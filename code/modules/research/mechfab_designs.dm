/* Pyro's note: Adding categories:
/datum/design/item/category_name
	category = "Name"

	Adding items to a category:

/datum/design/item/category/item_name // You just want to replace 'category' by the item's category (on the fabricator), and item_name is up to you. Recommended that you put the same name as the item you're printing
	name =  // Name shown on the fabricator
	desc = // Description. Override  the item's default description. Leave blank if not needed.
	id = "" // id name of your part, with no space (use _ instead). Unless you're trying to make a new mech or something that require multiple steps, it should be only present here.
	req_tech = list() // Research needed to craft. remove req_tech if none. Check in research.dm for the research type
	materials = list() // Material used. Be noted that while other materials follow their name ("diamond","glass", etc...) Steel is DEFAULT_WALL_MATERIAL. no ""
	build_path = /obj/item/weapon/rig/industrial // The item you want the fabricator to spawn and craft.
	time = // Time needed to craft items, in seconds, with default manipulators/lasers.
	category = "RIG" // Shouldn't be needed, unless you want your item in another category for reasons.

*/

/datum/design/item/mechfab
	build_type = MECHFAB
	category = "Other"
	req_tech = list(TECH_MATERIAL = 1)

/datum/design/item/mechfab/ripley
	category = "Ripley"

/datum/design/item/mechfab/ripley/chassis
	name = "Ripley Chassis"
	id = "ripley_chassis"
	build_path = /obj/item/mecha_parts/chassis/ripley
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 15000)

/datum/design/item/mechfab/ripley/chassis/firefighter
	name = "Firefigher Chassis"
	id = "firefighter_chassis"
	build_path = /obj/item/mecha_parts/chassis/firefighter

/datum/design/item/mechfab/ripley/torso
	name = "Ripley Torso"
	id = "ripley_torso"
	build_path = /obj/item/mecha_parts/part/ripley_torso
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "glass" = 11250)

/datum/design/item/mechfab/ripley/left_arm
	name = "Ripley Left Arm"
	id = "ripley_left_arm"
	build_path = /obj/item/mecha_parts/part/ripley_left_arm
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 18750)

/datum/design/item/mechfab/ripley/right_arm
	name = "Ripley Right Arm"
	id = "ripley_right_arm"
	build_path = /obj/item/mecha_parts/part/ripley_right_arm
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 18750)

/datum/design/item/mechfab/ripley/left_leg
	name = "Ripley Left Leg"
	id = "ripley_left_leg"
	build_path = /obj/item/mecha_parts/part/ripley_left_leg
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 22500)

/datum/design/item/mechfab/ripley/right_leg
	name = "Ripley Right Leg"
	id = "ripley_right_leg"
	build_path = /obj/item/mecha_parts/part/ripley_right_leg
	time = 15
	materials = list(DEFAULT_WALL_MATERIAL = 22500)

/datum/design/item/mechfab/odysseus
	category = "Odysseus"

/datum/design/item/mechfab/odysseus/chassis
	name = "Odysseus Chassis"
	id = "odysseus_chassis"
	build_path = /obj/item/mecha_parts/chassis/odysseus
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 15000)

/datum/design/item/mechfab/odysseus/torso
	name = "Odysseus Torso"
	id = "odysseus_torso"
	build_path = /obj/item/mecha_parts/part/odysseus_torso
	time = 18
	materials = list(DEFAULT_WALL_MATERIAL = 18750)

/datum/design/item/mechfab/odysseus/head
	name = "Odysseus Head"
	id = "odysseus_head"
	build_path = /obj/item/mecha_parts/part/odysseus_head
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 1500, "glass" = 7500)

/datum/design/item/mechfab/odysseus/left_arm
	name = "Odysseus Left Arm"
	id = "odysseus_left_arm"
	build_path = /obj/item/mecha_parts/part/odysseus_left_arm
	time = 12
	materials = list(DEFAULT_WALL_MATERIAL = 7500)

/datum/design/item/mechfab/odysseus/right_arm
	name = "Odysseus Right Arm"
	id = "odysseus_right_arm"
	build_path = /obj/item/mecha_parts/part/odysseus_right_arm
	time = 12
	materials = list(DEFAULT_WALL_MATERIAL = 7500)

/datum/design/item/mechfab/odysseus/left_leg
	name = "Odysseus Left Leg"
	id = "odysseus_left_leg"
	build_path = /obj/item/mecha_parts/part/odysseus_left_leg
	time = 13
	materials = list(DEFAULT_WALL_MATERIAL = 11250)

/datum/design/item/mechfab/odysseus/right_leg
	name = "Odysseus Right Leg"
	id = "odysseus_right_leg"
	build_path = /obj/item/mecha_parts/part/odysseus_right_leg
	time = 13
	materials = list(DEFAULT_WALL_MATERIAL = 11250)

/datum/design/item/mechfab/gygax
	category = "Gygax"

/datum/design/item/mechfab/gygax/chassis
	name = "Gygax Chassis"
	id = "gygax_chassis"
	build_path = /obj/item/mecha_parts/chassis/gygax
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 18750)

/datum/design/item/mechfab/gygax/torso
	name = "Gygax Torso"
	id = "gygax_torso"
	build_path = /obj/item/mecha_parts/part/gygax_torso
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 37500, "glass" = 15000)

/datum/design/item/mechfab/gygax/head
	name = "Gygax Head"
	id = "gygax_head"
	build_path = /obj/item/mecha_parts/part/gygax_head
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "glass" = 7500)

/datum/design/item/mechfab/gygax/left_arm
	name = "Gygax Left Arm"
	id = "gygax_left_arm"
	build_path = /obj/item/mecha_parts/part/gygax_left_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 22500)

/datum/design/item/mechfab/gygax/right_arm
	name = "Gygax Right Arm"
	id = "gygax_right_arm"
	build_path = /obj/item/mecha_parts/part/gygax_right_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 22500)

/datum/design/item/mechfab/gygax/left_leg
	name = "Gygax Left Leg"
	id = "gygax_left_leg"
	build_path = /obj/item/mecha_parts/part/gygax_left_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 26250)

/datum/design/item/mechfab/gygax/right_leg
	name = "Gygax Right Leg"
	id = "gygax_right_leg"
	build_path = /obj/item/mecha_parts/part/gygax_right_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 26250)

/datum/design/item/mechfab/gygax/armour
	name = "Gygax Armour Plates"
	id = "gygax_armour"
	build_path = /obj/item/mecha_parts/part/gygax_armour
	time = 60
	materials = list(DEFAULT_WALL_MATERIAL = 37500, "diamond" = 7500)

/datum/design/item/mechfab/durand
	category = "Durand"

/datum/design/item/mechfab/durand/chassis
	name = "Durand Chassis"
	id = "durand_chassis"
	build_path = /obj/item/mecha_parts/chassis/durand
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 18750)

/datum/design/item/mechfab/durand/torso
	name = "Durand Torso"
	id = "durand_torso"
	build_path = /obj/item/mecha_parts/part/durand_torso
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 41250, "glass" = 15000, "silver" = 7500)

/datum/design/item/mechfab/durand/head
	name = "Durand Head"
	id = "durand_head"
	build_path = /obj/item/mecha_parts/part/durand_head
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 18750, "glass" = 7500, "silver" = 2250)

/datum/design/item/mechfab/durand/left_arm
	name = "Durand Left Arm"
	id = "durand_left_arm"
	build_path = /obj/item/mecha_parts/part/durand_left_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 26250, "silver" = 2250)

/datum/design/item/mechfab/durand/right_arm
	name = "Durand Right Arm"
	id = "durand_right_arm"
	build_path = /obj/item/mecha_parts/part/durand_right_arm
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 26250, "silver" = 2250)

/datum/design/item/mechfab/durand/left_leg
	name = "Durand Left Leg"
	id = "durand_left_leg"
	build_path = /obj/item/mecha_parts/part/durand_left_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "silver" = 2250)

/datum/design/item/mechfab/durand/right_leg
	name = "Durand Right Leg"
	id = "durand_right_leg"
	build_path = /obj/item/mecha_parts/part/durand_right_leg
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "silver" = 2250)

/datum/design/item/mechfab/durand/armour
	name = "Durand Armour Plates"
	id = "durand_armour"
	build_path = /obj/item/mecha_parts/part/durand_armour
	time = 60
	materials = list(DEFAULT_WALL_MATERIAL = 37500, "uranium" = 7500)

/datum/design/item/mecha
	build_type = MECHFAB
	category = "Exosuit Equipment"
	time = 10
	materials = list(DEFAULT_WALL_MATERIAL = 7500)

/datum/design/item/mecha/AssembleDesignDesc()
	if(!desc)
		desc = "Allows for the construction of \a '[item_name]' exosuit module."

/datum/design/item/mecha/tracking
	name = "Exosuit Tracking Beacon"
	id = "mech_tracker"
	time = 5
	materials = list(DEFAULT_WALL_MATERIAL = 375)
	build_path = /obj/item/mecha_parts/mecha_tracking

/datum/design/item/mecha/hydraulic_clamp
	name = "Hydraulic Clamp"
	id = "hydraulic_clamp"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/hydraulic_clamp

/datum/design/item/mecha/drill
	name = "Drill"
	id = "mech_drill"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/drill

/datum/design/item/mecha/extinguisher
	name = "Extinguisher"
	id = "extinguisher"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/extinguisher

/datum/design/item/mecha/cable_layer
	name = "Cable Layer"
	id = "mech_cable_layer"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/cable_layer
	materials = list(DEFAULT_WALL_MATERIAL = 7500, "plastic" = 1000)

/datum/design/item/mecha/flaregun
	name = "Flare Launcher"
	id = "mecha_flare_gun"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flare
	materials = list(DEFAULT_WALL_MATERIAL = 9375)

/datum/design/item/mecha/sleeper
	name = "Sleeper"
	id = "mech_sleeper"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/sleeper
	materials = list(DEFAULT_WALL_MATERIAL = 3750, "glass" = 7500)

/datum/design/item/mecha/syringe_gun
	name = "Syringe Gun"
	id = "mech_syringe_gun"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/syringe_gun
	time = 20
	materials = list(DEFAULT_WALL_MATERIAL = 2250, "glass" = 1500)

/datum/design/item/mecha/passenger
	name = "Passenger Compartment"
	id = "mech_passenger"
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/passenger
	materials = list(DEFAULT_WALL_MATERIAL = 3750, "glass" = 3750)

/datum/design/item/mecha/taser
	name = "PBT \"Pacifier\" Mounted Taser"
	id = "mech_taser"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/taser

/datum/design/item/mecha/shocker
	name = "Exosuit Electrifier"
	desc = "A device to electrify the external portions of a mecha in order to increase its defensive capabilities."
	id = "mech_shocker"
	req_tech = list(TECH_COMBAT = 3, TECH_POWER = 6, TECH_MAGNET = 1)
	build_path = /obj/item/mecha_parts/mecha_equipment/shocker
	materials = list(DEFAULT_WALL_MATERIAL = 3500, "gold" = 750, "glass" = 1000)

/datum/design/item/mecha/lmg
	name = "Ultra AC 2"
	id = "mech_lmg"
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg

/datum/design/item/mecha/weapon
	req_tech = list(TECH_COMBAT = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 8000, "glass" = 2000)

// *** Weapon modules
/datum/design/item/mecha/weapon/scattershot
	name = "LBX AC 10 \"Scattershot\""
	id = "mech_scattershot"
	req_tech = list(TECH_COMBAT = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/scattershot
	materials = list(DEFAULT_WALL_MATERIAL = 8000, "glass" = 3000, "plastic" = 2000, "silver" = 2500)

/datum/design/item/mecha/weapon/laser
	name = "CH-PS \"Immolator\" Laser"
	id = "mech_laser"
	req_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser
	materials = list(DEFAULT_WALL_MATERIAL = 8000, "glass" = 3000, "plastic" = 2000)

/datum/design/item/mecha/weapon/laser_rigged
	name = "Jury-Rigged Welder-Laser"
	desc = "Allows for the construction of a welder-laser assembly package for non-combat exosuits."
	id = "mech_laser_rigged"
	req_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/riggedlaser

/datum/design/item/mecha/weapon/laser_heavy
	name = "CH-LC \"Solaris\" Laser Cannon"
	id = "mech_laser_heavy"
	req_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/heavy
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "glass" = 3000, "diamond" = 2000, "osmium" = 5000, "plastic" = 2000)

/datum/design/item/mecha/weapon/ion
	name = "MK-IV Ion Heavy Cannon"
	id = "mech_ion"
	req_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/ion
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "uranium" = 2000, "silver" = 2000, "osmium" = 4500, "plastic" = 2000)

/datum/design/item/mecha/weapon/grenade_launcher
	name = "SGL-6 Grenade Launcher"
	id = "mech_grenade_launcher"
	req_tech = list(TECH_COMBAT = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flashbang
	materials = list(DEFAULT_WALL_MATERIAL = 7000, "gold" = 2000, "plastic" = 3000)

/datum/design/item/mecha/weapon/clusterbang_launcher
	name = "SOP-6 Grenade Launcher"
	desc = "A weapon that violates the Geneva Convention at 6 rounds per minute."
	id = "clusterbang_launcher"
	req_tech = list(TECH_COMBAT= 5, TECH_MATERIAL = 5, TECH_ILLEGAL = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "gold" = 4500, "uranium" = 4500)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack/flashbang/clusterbang/limited

/datum/design/item/mecha/weapon/flamer
	name = "CR-3 Mark 8 Flamethrower"
	desc = "A weapon that violates the CCWC at two hundred gallons per minute."
	id = "mech_flamer_full"
	req_tech = list(TECH_MATERIAL = 4, TECH_COMBAT = 6, TECH_PHORON = 4, TECH_ILLEGAL = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 10000, "gold" = 2000, "uranium" = 3000, "phoron" = 8000)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/flamer

/datum/design/item/mecha/weapon/flamer_rigged
	name = "AA-CR-1 Mark 4 Flamethrower"
	desc = "A weapon that accidentally violates the CCWC at one hundred gallons per minute."
	id = "mech_flamer_rigged"
	req_tech = list(TECH_MATERIAL = 3, TECH_COMBAT = 3, TECH_PHORON = 3, TECH_ILLEGAL = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 8000, "gold" = 1500, "silver" = 1500, "uranium" = 2000, "phoron" = 6000)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/energy/flamer/rigged

/datum/design/item/mecha/weapon/flame_mg
	name = "DR-AC 3 Incendiary Rotary MG"
	desc = "A weapon that violates the CCWC at sixty rounds a minute."
	id = "mech_lmg_flamer"
	req_tech = list(TECH_MATERIAL = 4, TECH_COMBAT = 5, TECH_PHORON = 2, TECH_ILLEGAL = 1)
	materials = list(DEFAULT_WALL_MATERIAL = 8000, "gold" = 2000, "silver" = 1750, "uranium" = 1500, "phoron" = 4000)
	build_path = /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/incendiary

// *** Nonweapon modules
/datum/design/item/mecha/wormhole_gen
	name = "Wormhole Generator"
	desc = "An exosuit module that can generate small quasi-stable wormholes."
	id = "mech_wormhole_gen"
	req_tech = list(TECH_BLUESPACE = 3, TECH_MAGNET = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/wormhole_generator

/datum/design/item/mecha/teleporter
	name = "Teleporter"
	desc = "An exosuit module that allows teleportation to any position in view."
	id = "mech_teleporter"
	req_tech = list(TECH_BLUESPACE = 10, TECH_MAGNET = 5)
	build_path = /obj/item/mecha_parts/mecha_equipment/teleporter

/datum/design/item/mecha/rcd
	name = "RCD"
	desc = "An exosuit-mounted rapid construction device."
	id = "mech_rcd"
	time = 120
	materials = list(DEFAULT_WALL_MATERIAL = 20000, "plastic" = 10000, "phoron" = 18750, "silver" = 15000, "gold" = 15000)
	req_tech = list(TECH_MATERIAL = 4, TECH_BLUESPACE = 3, TECH_MAGNET = 4, TECH_POWER = 4, TECH_ENGINEERING = 4)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/rcd

/datum/design/item/mecha/gravcatapult
	name = "Gravitational Catapult"
	desc = "An exosuit-mounted gravitational catapult."
	id = "mech_gravcatapult"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/gravcatapult

/datum/design/item/mecha/repair_droid
	name = "Repair Droid"
	desc = "Automated repair droid, exosuits' best companion. BEEP BOOP"
	id = "mech_repair_droid"
	req_tech = list(TECH_MAGNET = 3, TECH_DATA = 3, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 7500, "gold" = 750, "silver" = 1500, "glass" = 3750)
	build_path = /obj/item/mecha_parts/mecha_equipment/repair_droid

/datum/design/item/mecha/jetpack
	name = "Ion Jetpack"
	desc = "Using directed ion bursts and cunning solar wind reflection technique, this device enables controlled space flight."
	id = "mech_jetpack"
	req_tech = list(TECH_ENGINEERING = 3, TECH_MAGNET = 4) //One less magnet than the actual got-damn teleporter.
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/jetpack
	materials = list(DEFAULT_WALL_MATERIAL = 7500, "silver" = 300, "glass" = 600)

/datum/design/item/mecha/phoron_generator
	desc = "Phoron Reactor"
	id = "mech_phoron_generator"
	req_tech = list(TECH_PHORON = 2, TECH_POWER= 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/generator
	materials = list(DEFAULT_WALL_MATERIAL = 7500, "silver" = 375, "glass" = 750)

/datum/design/item/mecha/energy_relay
	name = "Energy Relay"
	id = "mech_energy_relay"
	req_tech = list(TECH_MAGNET = 4, TECH_POWER = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 7500, "gold" = 1500, "silver" = 2250, "glass" = 1500)
	build_path = /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay

/datum/design/item/mecha/ccw_armor
	name = "CCW Armor Booster"
	desc = "Exosuit close-combat armor booster."
	id = "mech_ccw_armor"
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 11250, "silver" = 3750)
	build_path = /obj/item/mecha_parts/mecha_equipment/anticcw_armor_booster

/datum/design/item/mecha/proj_armor
	name = "Ranged Armor Booster"
	desc = "Exosuit projectile armor booster."
	id = "mech_proj_armor"
	req_tech = list(TECH_MATERIAL = 5, TECH_COMBAT = 5, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 15000, "gold" = 3750)
	build_path = /obj/item/mecha_parts/mecha_equipment/antiproj_armor_booster

/datum/design/item/mecha/diamond_drill
	name = "Diamond Drill"
	desc = "A diamond version of the exosuit drill. It's harder, better, faster, stronger."
	id = "mech_diamond_drill"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 7500, "diamond" = 4875)
	build_path = /obj/item/mecha_parts/mecha_equipment/tool/drill/diamonddrill

/datum/design/item/mecha/generator_nuclear
	name = "Nuclear Reactor"
	desc = "Exosuit-held nuclear reactor. Converts uranium and everyone's health to energy."
	id = "mech_generator_nuclear"
	req_tech = list(TECH_POWER= 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 7500, "silver" = 375, "glass" = 750)
	build_path = /obj/item/mecha_parts/mecha_equipment/generator/nuclear

/datum/design/item/synthetic_flash
	name = "Synthetic Flash"
	id = "sflash"
	req_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 2)
	build_type = MECHFAB
	materials = list(DEFAULT_WALL_MATERIAL = 562, "glass" = 562)
	build_path = /obj/item/device/flash/synthetic
	category = "Misc"

/* RIG and RIG Modules. */

// RIG Firsts, because we're not savage.

/datum/design/item/rig
	build_type = MECHFAB
	category = "RIG suits"

/datum/design/item/rig/industrial
	name = "Industrial RIG suit"
	id = "rig_industrial"
	req_tech = list(TECH_ENGINEERING = 5, TECH_COMBAT = 2, TECH_POWER = 5, TECH_BIO = 2, TECH_MATERIAL = 4)
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 35000, "plasteel" = 10000, "glass" = 500, "plastic" = 2500, "silver" = 1000, "gold" = 500)
	build_path = /obj/item/weapon/rig/industrial

/datum/design/item/rig/eva
	name = "Engineer RIG Suit"
	id = "rig_eva"
	req_tech = list(TECH_ENGINEERING = 4, TECH_COMBAT = 1, TECH_POWER = 2, TECH_BIO = 1, TECH_MATERIAL = 3)
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 25000, "plasteel" = 5000, "glass" = 600, "plastic" = 5500, "silver" = 500, "gold" = 250)
	build_path = /obj/item/weapon/rig/eva

/datum/design/item/rig/medical
	name = "Medical RIG suit"
	id = "rig_medical"
	req_tech = list(TECH_ENGINEERING = 3, TECH_COMBAT = 2, TECH_POWER = 5, TECH_BIO = 4, TECH_MATERIAL = 4)
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "plasteel" = 15000, "glass" = 1000, "plastic" = 15000, "silver" = 1500, "gold" = 500)
	build_path = /obj/item/weapon/rig/medical

/datum/design/item/rig/hazard
	name = "Security RIG suit"
	id = "rig_security"
	req_tech = list(TECH_ENGINEERING = 6, TECH_COMBAT = 5, TECH_POWER = 5, TECH_BIO = 2, TECH_MATERIAL = 6)
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 40000, "plasteel" = 20000, "glass" = 500, "silver" = 1300, "gold" = 700, "diamond" = 500)
	build_path = /obj/item/weapon/rig/hazard


// And now, for the less Family-friendly RIG suits

/datum/design/item/rig/light
	name = "Non-Standard RIG suit"
	id = "rig_light"
	req_tech = list(TECH_ENGINEERING = 5, TECH_COMBAT = 5, TECH_POWER = 5, TECH_BIO = 2, TECH_MATERIAL = 5, TECH_ILLEGAL = 2)
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 70000, "plasteel" = 15000, "durasteel" = 2000, "glass" = 500, "silver" = 1300, "gold" = 700, "diamond" = 500)
	build_path = /obj/item/weapon/rig/light

/datum/design/item/rig/stealth
	name = "Stealth Ops RIG suit"
	id = "rig_stealth"
	req_tech = list(TECH_ENGINEERING = 6, TECH_COMBAT = 6, TECH_POWER = 6, TECH_BIO = 2, TECH_MATERIAL = 5, TECH_ILLEGAL = 3)
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 80000, "plasteel" = 20000, "durasteel" = 5000, "glass" = 500, "silver" = 1300, "gold" = 700, "diamond" = 500)
	build_path = /obj/item/weapon/rig/light/stealth

/datum/design/item/rig/combat
	name = "Combat RIG suit"
	id = "rig_combat"
	req_tech = list(TECH_ENGINEERING = 6, TECH_COMBAT = 6, TECH_POWER = 6, TECH_BIO = 5, TECH_MATERIAL = 5, TECH_ILLEGAL = 5)
	time = 30
	materials = list(DEFAULT_WALL_MATERIAL = 120000, "plasteel" = 25000, "durasteel" = 10000, "glass" = 1500, "silver" = 3000, "gold" = 2000, "diamond" = 2500)
	build_path = /obj/item/weapon/rig/combat

// RIG modules

/datum/design/item/rig_module
	build_type = MECHFAB
	category = "RIG equipments"

// Utility Modules

/datum/design/item/rig_module/plasmacutter
	name = "Mounted Plasma Cutter"
	id = "rig_plasmacutter"
	req_tech = list(TECH_MATERIAL = 4, TECH_PHORON = 3, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 2500, "glass" = 1000, "gold" = 750, "phoron" = 750)
	build_path = /obj/item/rig_module/device/plasmacutter

/datum/design/item/rig_module/healthscanner
	name = "Mounted Health Scanner"
	id = "rig_healthscanner"
	req_tech = list(TECH_MAGNET = 5, TECH_BIO = 6)
	materials = list(DEFAULT_WALL_MATERIAL = 3000, "glass" = 1500, "silver" = 1000)
	build_path = /obj/item/rig_module/device/healthscanner

/datum/design/item/rig_module/drill
	name = "Mounted Drill"
	id = "rig_drill"
	req_tech = list(TECH_MATERIAL = 6, TECH_POWER = 4, TECH_ENGINEERING = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 5000, "glass" = 2000, "diamond" = 2000)
	build_path = /obj/item/rig_module/device/drill

/datum/design/itemrig_module/ano_scanner
	name = "Mounted Anomaly Scanner"
	id = "rig_elderscanner"
	req_tech = list(TECH_BLUESPACE = 3, TECH_MAGNET = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 15000,"glass" = 5000)
	build_path = /obj/item/rig_module/device/anomaly_scanner

/datum/design/item/rig_module/ore_scanner
	name = "Mounted Ore Scanner"
	id = "rig_orescanner"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 10000,"glass" = 2000)
	build_path = /obj/item/weapon/mining_scanner

/datum/design/item/rig_module/rcd
	name = "Mounted RCD"
	id = "rig_rcd"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 15000)
	build_path = /obj/item/rig_module/device/rcd

/datum/design/item/rig_module/sprinter
	name = "RIG Sprint Module"
	id = "rig_sprinter"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 6)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 15000, "gold" = 2000, "diamond" = 500)
	build_path = /obj/item/rig_module/sprinter

/datum/design/item/rig_module/jetpack
	name = "RIG Jetpack"
	id = "rig_sprinter"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 4, TECH_COMBAT = 3)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 15000, "silver" = 3000, "gold" = 2000, "diamond" = 1000)
	build_path = /obj/item/rig_module/maneuvering_jets

/datum/design/item/rig_module/chemicaldispenser
	name = "RIG Pre-Filled Chemical Dispenser"
	id = "rig_chemicaldispenser"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 4, TECH_COMBAT = 2, TECH_BIO = 6)
	materials = list(DEFAULT_WALL_MATERIAL = 40000,"glass" = 30000, "silver" = 10000, "gold" = 6000, "diamond" = 4000, "phoron" = 10000)
	build_path = /obj/item/rig_module/chem_dispenser

// Computer and electronics module

/datum/design/item/rig_module/aimodule
	name = "RIG AI Module"
	id = "rig_aimodule"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 2, TECH_DATA = 6)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 1000, "silver" = 4000, "gold" = 1000)
	build_path = /obj/item/rig_module/ai_container

/datum/design/item/rig_module/datajack
	name = "RIG Datajack module"
	id = "rig_datajack"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 2, TECH_ILLEGAL = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 1000, "silver" = 1000, "gold" = 500)
	build_path = /obj/item/rig_module/datajack

/datum/design/item/rig_module/electrowarfare
	name = "RIG Electrowarfare Module"
	id = "rig_electrowarfare"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MAGNET = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 2, TECH_DATA = 6, TECH_ILLEGAL = 6)
	materials = list(DEFAULT_WALL_MATERIAL = 30000, "glass" = 1000, "silver" = 4000, "gold" = 2000, "phoron" = 6000, "diamond" = 1000)
	build_path = /obj/item/rig_module/electrowarfare_suite

/datum/design/item/rig_module/powersink
	name = "RIG Powersink"
	id = "rig_powersink"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 6, TECH_ENGINEERING = 7, TECH_COMBAT = 6, TECH_DATA = 6, TECH_ILLEGAL = 6)
	materials = list(DEFAULT_WALL_MATERIAL = 100000,"glass" = 10000, "silver" = 40000, "gold" = 20000, "phoron" = 60000, "diamond" = 10000)
	build_path = /obj/item/rig_module/power_sink

// Mounted pewpew


/datum/design/item/rig_module/flash
	name = "RIG Flash"
	id = "rig_flash"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 4, TECH_COMBAT = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "gold" = 2000)
	build_path = /obj/item/device/flash

/datum/design/item/rig_module/mountedcannon
	name = "RIG Mounted Laser Cannon"
	id = "rig_lasercannon"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 6, TECH_ENGINEERING = 7, TECH_COMBAT = 6)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 1000, "gold" = 6000, "phoron" = 5000, "diamond" = 1000)
	build_path = /obj/item/rig_module/mounted

/datum/design/item/rig_module/taser
	name = "RIG Taser"
	id = "rig_taser"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 3, TECH_ENGINEERING = 5, TECH_COMBAT = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 6000, "gold" = 6000)
	build_path = /obj/item/rig_module/mounted/taser

/datum/design/item/rig_module/egun
	name = "RIG Energy Gun"
	id = "rig_egun"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 5, TECH_ENGINEERING = 6, TECH_COMBAT = 5)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "gold" = 2000, "phoron" = 2000)
	build_path = /obj/item/rig_module/mounted/egun

// Vision modules

/datum/design/item/rig_module/miningoptical
	name = "RIG Meson&Material optical visor"
	id = "rig_miningoptical"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "uranium" = 2000)
	build_path = /obj/item/rig_module/vision/multi_mining

/datum/design/item/rig_module/secdocoptical
	name = "RIG Sechud & Medhud Package"
	id = "rig_secdocoptical"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 5, TECH_BIO = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 10000, "gold" = 2000)
	build_path = /obj/item/rig_module/vision/multi_emergency

/datum/design/item/rig_module/meson
	name = "RIG Meson scanner"
	id = "rig_mopticalpack"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "uranium" = 2000)
	build_path = /obj/item/rig_module/vision/meson

/datum/design/item/rig_module/mopticalpack
	name = "RIG Material Scanner"
	id = "rig_mopticalpack"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "uranium" = 2000)
	build_path = /obj/item/rig_module/vision/material

/datum/design/item/rig_module/medhud
	name = "RIG Medhud"
	id = "rig_medhud"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 2, TECH_BIO = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "uranium" = 2000)
	build_path = /obj/item/rig_module/vision/medhud

/datum/design/item/rig_module/sedhud
	name = "RIG Sechud"
	id = "rig_sedhud"
	req_tech = list(TECH_BLUESPACE = 2, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 2, TECH_BIO = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "uranium" = 2000)
	build_path = /obj/item/rig_module/vision/sechud

// illegalish vision module

/datum/design/item/rig_module/mopticalpack
	name = "RIG Multi Optical Package"
	id = "rig_mopticalpack"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 4, TECH_ILLEGAL = 6, TECH_BIO = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 10000, "gold" = 6000, "uranium" = 10000, "diamond" = 6000)
	build_path = /obj/item/rig_module/vision/multi


/datum/design/item/rig_module/thermal
	name = "RIG Thermal optics"
	id = "rig_thermal"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 4, TECH_ILLEGAL = 2, TECH_BIO = 4)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "gold" = 2000, "uranium" = 2000, "diamond" = 2000)
	build_path = /obj/item/rig_module/vision/thermal

/datum/design/item/rig_module/nvg
	name = "RIG Night Vision"
	id = "rig_nvg"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MAGNET = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 4, TECH_ILLEGAL = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 30000,"glass" = 5000, "silver" = 4000, "gold" = 2000, "uranium" = 2000, "diamond" = 2000)
	build_path = /obj/item/rig_module/vision/nvg


