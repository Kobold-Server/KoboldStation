/datum/outfit/admin/ert/nanotrasen
	name = "Nanotrasen ERT Responder"

	uniform = /obj/item/clothing/under/ert
	suit = null
	suit_store = null
	belt = /obj/item/storage/belt/military
	shoes = /obj/item/clothing/shoes/swat
	accessory = /obj/item/clothing/accessory/storage/black_vest
	gloves = null
	id = /obj/item/card/id/ert
	back = /obj/item/rig/ert/security

	l_ear = /obj/item/device/radio/headset/ert

	belt_contents = list(
		/obj/item/handcuffs = 2,
		/obj/item/shield/riot/tact = 1,
		/obj/item/ammo_magazine/a556 = 2,
		/obj/item/ammo_magazine/a556/ap = 1
	)

/datum/outfit/admin/ert/nanotrasen/get_id_access()
	return get_all_accesses() | get_centcom_access("Emergency Response Team")

/datum/outfit/admin/ert/nanotrasen/specialist
	name = "Nanotrasen ERT Engineer Specialist"

	belt = /obj/item/storage/belt/utility/full
	back = /obj/item/rig/ert/engineer

	belt_contents = null

/datum/outfit/admin/ert/nanotrasen/specialist/medical
	name = "Nanotrasen ERT Medical Specialist"

	belt = /obj/item/storage/belt/medical
	back = /obj/item/rig/ert/medical
	r_hand = /obj/item/storage/firstaid/combat

	belt_contents = list(
		/obj/item/reagent_containers/hypospray = 1,
		/obj/item/stack/medical/advanced/bruise_pack = 1,
		/obj/item/stack/medical/advanced/ointment = 1,
		/obj/item/reagent_containers/glass/bottle/thetamycin = 1
	)

/datum/outfit/admin/ert/nanotrasen/leader
	name = "Nanotrasen ERT Leader"

	back = /obj/item/rig/ert

	belt_contents = list(
		/obj/item/handcuffs = 1,
		/obj/item/shield/riot/tact = 1,
		/obj/item/ammo_magazine/a556 = 2,
		/obj/item/ammo_magazine/a556/ap = 2
	)

//TCFL
/datum/outfit/admin/ert/legion
	name = "TCFL Responder"

	uniform = /obj/item/clothing/under/legion
	l_ear = /obj/item/device/radio/headset/legion
	shoes = /obj/item/clothing/shoes/swat
	gloves = /obj/item/clothing/gloves/swat
	glasses =  /obj/item/clothing/glasses/sunglasses
	back = /obj/item/storage/backpack/legion
	id = /obj/item/card/id/distress/legion

	backpack_contents = list(
		/obj/item/storage/belt/utility/full = 1
	)

/datum/outfit/admin/ert/legion/get_id_access()
	return get_distress_access()

/datum/outfit/admin/ert/legion/specialist
	name = "TCFL Medic"

	l_hand = /obj/item/storage/firstaid/adv
	r_hand = /obj/item/storage/firstaid/combat
	belt = /obj/item/storage/belt/medical

	belt_contents = list(
		/obj/item/reagent_containers/hypospray = 1,
		/obj/item/stack/medical/advanced/bruise_pack = 1,
		/obj/item/stack/medical/advanced/ointment = 1,
		/obj/item/reagent_containers/glass/bottle/thetamycin = 1
	)

//Mercenary
/datum/outfit/admin/ert/mercenary
	name = "Mercenary Freelancer"

	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/swat
	gloves = /obj/item/clothing/gloves/yellow
	belt = /obj/item/storage/belt/military
	back = /obj/item/storage/backpack/satchel_syndie
	suit = /obj/item/clothing/suit/space/void/merc
	head = /obj/item/clothing/head/helmet/space/void/merc
	suit_store = /obj/item/tank/oxygen
	id = /obj/item/card/id/syndicate

	l_ear = /obj/item/device/radio/headset/distress

	backpack_contents = list(
		/obj/item/gun/projectile/automatic/c20r = 1,
		/obj/item/storage/belt/utility/full = 1
	)

	belt_contents = list(
		/obj/item/ammo_magazine/a10mm = 3,
		/obj/item/handcuffs/ziptie = 2,
		/obj/item/shield/energy = 1
	)

/datum/outfit/admin/ert/mercenary/get_id_access()
	return get_distress_access()

/datum/outfit/admin/ert/mercenary/specialist
	name = "Mercenary Freelancer Medic"

	belt = /obj/item/storage/belt/medical
	l_hand = /obj/item/storage/firstaid/adv
	r_hand = /obj/item/storage/firstaid/combat

	backpack_contents = list(
		/obj/item/gun/projectile/automatic/c20r = 1,
		/obj/item/ammo_magazine/a10mm = 2
	)

	belt_contents = list(
		/obj/item/reagent_containers/hypospray = 1,
		/obj/item/stack/medical/advanced/bruise_pack = 1,
		/obj/item/stack/medical/advanced/ointment = 1,
		/obj/item/reagent_containers/glass/bottle/thetamycin = 1
	)

/datum/outfit/admin/ert/mercenary/leader
	name = "Mercenary Freelancer Leader"
	l_hand = /obj/item/gun/projectile/automatic/rifle/sts35
	back = /obj/item/rig/merc/distress
	suit_store = null
	suit = null
	head = null

	backpack_contents = list()

	belt_contents = list(
		/obj/item/ammo_magazine/c762 = 3,
		/obj/item/handcuffs/ziptie = 2,
		/obj/item/shield/energy = 1
	)

// Deathsquads -- Admin Spawn Only
/datum/outfit/admin/deathsquad
	name = "Asset Protection"

	uniform = /obj/item/clothing/under/ert
	back = null
	belt = /obj/item/storage/belt/security/tactical
	shoes = null
	gloves = null
	mask = /obj/item/clothing/mask/gas/swat
	l_ear = /obj/item/device/radio/headset/ert
	glasses = /obj/item/clothing/glasses/sunglasses/sechud/tactical
	id = /obj/item/card/id/asset_protection
	l_pocket = /obj/item/plastique
	r_pocket = /obj/item/melee/energy/sword
	l_hand = /obj/item/gun/energy/rifle/pulse

	belt_contents = list(
		/obj/item/ammo_magazine/a454 = 2,
		/obj/item/melee/baton/loaded = 1,
		/obj/item/shield/energy = 1,
		/obj/item/grenade/flashbang = 2,
		/obj/item/handcuffs = 2,
		/obj/item/grenade/frag = 1
	)

	var/syndie = FALSE

/datum/outfit/admin/deathsquad/leader
	name = "Asset Protection Lead"

/datum/outfit/admin/deathsquad/syndicate
	name = "Syndicate Commando"

	uniform = /obj/item/clothing/under/syndicate
	belt = /obj/item/storage/belt/military/syndicate
	mask = /obj/item/clothing/mask/gas/syndicate
	l_ear = /obj/item/device/radio/headset/syndicate
	glasses = /obj/item/clothing/glasses/thermal
	id = /obj/item/card/id/syndicate_ert
	l_pocket = /obj/item/ammo_magazine/c45m
	l_hand = /obj/item/gun/projectile/automatic/rifle/sts35

	belt_contents = list(
		/obj/item/ammo_magazine/c762 = 3,
		/obj/item/shield/energy = 1,
		/obj/item/handcuffs = 1,
		/obj/item/grenade/flashbang = 1,
		/obj/item/grenade/frag = 1,
		/obj/item/plastique = 1
	)

	syndie = TRUE

/datum/outfit/admin/deathsquad/syndicate/leader
	name = "Syndicate Commando Lead"

/datum/outfit/admin/deathsquad/get_id_access()
	return get_all_accesses()

/datum/outfit/admin/deathsquad/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(visualsOnly)
		return

	var/obj/item/clothing/accessory/holster/armpit/hold = new(H)
	var/obj/item/gun/projectile/weapon


	if(syndie)
		weapon = new /obj/item/gun/projectile/silenced(H)
	else
		weapon = new /obj/item/gun/projectile/revolver/mateba(H)

	if(weapon)
		hold.contents += weapon
		hold.holstered = weapon

	var/obj/item/clothing/under/U = H.get_equipped_item(slot_w_uniform)
	U.attackby(hold, H)

	var/obj/item/rig/mercrig

	if(syndie)
		mercrig = new /obj/item/rig/merc(get_turf(H))
	else
		mercrig = new /obj/item/rig/ert/assetprotection(get_turf(H))

	if(mercrig)
		H.put_in_hands(mercrig)
		H.equip_to_slot_or_del(mercrig, slot_back)
		addtimer(CALLBACK(mercrig, /obj/item/rig/.proc/toggle_seals, H, TRUE), 2 SECONDS)