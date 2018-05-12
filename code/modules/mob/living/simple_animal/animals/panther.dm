/mob/living/simple_animal/hostile/panther
	name = "panther"
	desc = "Runtime's larger, less cuddly cousin."
	icon = 'icons/mob/64x64.dmi'
	icon_state = "panther"
	icon_living = "panther"
	icon_dead = "panther-dead"

	faction = "panther"
	maxHealth = 200
	health = 200
	move_to_delay = 4

	speak_chance = 2
	speak = list("RAWR!","Rawr!","GRR!","Growl!")
	speak_emote = list("growls", "roars")
	emote_hear = list("rawrs","rumbles","rowls")
	emote_see = list("stares ferociously", "snarls")

	melee_damage_lower = 10
	melee_damage_upper = 30
	attack_sharp = 1
	attack_edge = 1

	old_x = -16
	old_y = 0
	pixel_x = -16
	pixel_y = 0