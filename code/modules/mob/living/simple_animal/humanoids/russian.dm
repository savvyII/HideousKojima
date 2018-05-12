/mob/living/simple_animal/hostile/russian
	name = "russian"
	desc = "For the Motherland!"
	icon_state = "russianmelee"
	icon_living = "russianmelee"
	icon_dead = "russianmelee_dead"
	icon_gib = "syndicate_gib"
	intelligence_level = SA_HUMANOID

	faction = "russian"
	maxHealth = 100
	health = 100
	speed = 4

	run_at_them = 0
	cooperative = 1
	investigates = 1
	firing_lines = 1
	returns_home = 1
	reacts = 1

	turns_per_move = 5
	stop_when_pulled = 0
	status_flags = CANPUSH

	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"

	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	attacktext = list("punched")

	min_oxy = 5
	max_oxy = 0
	min_tox = 0
	max_tox = 1
	min_co2 = 0
	max_co2 = 5
	min_n2 = 0
	max_n2 = 0
	unsuitable_atoms_damage = 15

	loot_list = list(/obj/item/weapon/material/knife = 100)

	var/corpse = /obj/effect/landmark/mobcorpse/russian

	speak_chance = 1
	speak = list("I khuy moy tantseval chechotku, vbivaya Yan' v nogi in', ostyn', ostyn'.",
				"A, bashka bolit.. Bukhat' nado men'she...",
				"Stromnoye mestechko...",
				"Shcha k barygam, a potom - po babam...",
				"Khot' i mne tut pizdets kak ne nravitsya, no vykhoda u nas net.",
				"Kak zhe zayebalo vso...")
	emote_hear = list("sniffs","coughs","taps his foot")
	emote_see = list("looks around","checks his equipment")
	say_understood = list()
	say_cannot = list()
	say_maybe_target = list()
	say_got_target = list("YA VAS UYOBKOV DAVIL, DAVLYU I DAVIT' BUDU! ","DAVAY MOCHI IKH!","VOT PADLA!","NU DAVAY, DAVAY!")
	reactions = list()

/mob/living/simple_animal/hostile/russian/ranged
	icon_state = "russianranged"
	icon_living = "russianranged"

	ranged = 1
	projectiletype = /obj/item/projectile/bullet
	casingtype = /obj/item/ammo_casing/spent
	projectilesound = 'sound/weapons/Gunshot.ogg'

	loot_list = list(/obj/item/weapon/gun/projectile/revolver/mateba = 100)

	corpse = /obj/effect/landmark/mobcorpse/russian/ranged

/mob/living/simple_animal/hostile/russian/death()
	..()
	if(corpse)
		new corpse (src.loc)
	qdel(src)
	return
