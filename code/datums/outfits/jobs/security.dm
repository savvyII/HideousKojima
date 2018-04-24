/decl/hierarchy/outfit/job/security
	hierarchy_type = /decl/hierarchy/outfit/job/security
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	l_ear = /obj/item/device/radio/headset/headset_sec
	gloves = /obj/item/clothing/gloves/black
	shoes = /obj/item/clothing/shoes/boots/jackboots
	backpack = /obj/item/weapon/storage/backpack/security
	satchel_one = /obj/item/weapon/storage/backpack/satchel/sec
	backpack_contents = list(/obj/item/weapon/handcuffs = 1)
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/sec

/decl/hierarchy/outfit/job/security/hos
	name = OUTFIT_JOB_NAME("Head of security")
	l_ear = /obj/item/device/radio/headset/heads/hos
	uniform = /obj/item/clothing/under/rank/head_of_security
	id_type = /obj/item/weapon/card/id/security/head
	pda_type = /obj/item/device/pda/heads/hos

/decl/hierarchy/outfit/job/security/warden
	name = OUTFIT_JOB_NAME("Warden")
	uniform = /obj/item/clothing/under/rank/warden
	l_pocket = /obj/item/device/flash
	id_type = /obj/item/weapon/card/id/security/warden
	pda_type = /obj/item/device/pda/warden

/*
/decl/hierarchy/outfit/job/security/detective
	name = OUTFIT_JOB_NAME("Detective")
	head = /obj/item/clothing/head/det
	uniform = /obj/item/clothing/under/det
	suit = /obj/item/clothing/suit/storage/det_trench
	l_pocket = /obj/item/weapon/flame/lighter/zippo
	shoes = /obj/item/clothing/shoes/laceup
	r_hand = /obj/item/weapon/storage/briefcase/crimekit
	id_type = /obj/item/weapon/card/id/security/detective
	pda_type = /obj/item/device/pda/detective
	backpack = /obj/item/weapon/storage/backpack
	satchel_one = /obj/item/weapon/storage/backpack/satchel/norm
	backpack_contents = list(/obj/item/weapon/storage/box/evidence = 1)

/decl/hierarchy/outfit/job/security/detective/forensic
	name = OUTFIT_JOB_NAME("Forensic technician")
	head = null
	suit = /obj/item/clothing/suit/storage/forensics/blue
*/

/decl/hierarchy/outfit/job/security/officer
	name = OUTFIT_JOB_NAME("Security Officer")
	uniform = /obj/item/clothing/under/rank/security
	l_pocket = /obj/item/device/flash
	id_type = /obj/item/weapon/card/id/security/officer
	pda_type = /obj/item/device/pda/security

/decl/hierarchy/outfit/job/security/internal_affairs_agent
	name = OUTFIT_JOB_NAME("Internal affairs agent")
	l_ear = /obj/item/device/radio/headset/ia
	uniform = /obj/item/clothing/under/rank/internalaffairs
	suit = /obj/item/clothing/suit/storage/toggle/internalaffairs
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses/big
	l_hand = /obj/item/weapon/clipboard
	id_type = /obj/item/weapon/card/id/security/internal_affairs_agent
	pda_type = /obj/item/device/pda/lawyer
	l_pocket = /obj/item/device/flash

/decl/hierarchy/outfit/job/security/police
	name = OUTFIT_JOB_NAME("ICE Agent")
	uniform = /obj/item/clothing/under/pants/classicjeans
	l_ear = /obj/item/device/radio/headset/ice
	l_pocket = /obj/item/clothing/accessory/badge/holo/police
	r_pocket = /obj/item/ammo_magazine/m57
	satchel_one = /obj/item/weapon/storage/backpack/satchel/norm
	id_type = /obj/item/weapon/card/id/security/ice
	pda_type = /obj/item/device/pda/security
	backpack_contents = list(/obj/item/weapon/gun/projectile/fiveseven = 1, /obj/item/weapon/handcuffs = 1)