/obj/item/material/blacksmith_piece
	name = "shovel head"
	desc = "A head of a shovel, useless for digging."
	icon = 'icons/obj/blacksmith.dmi'
	icon_state = "shovel_head"
	w_class = 3
	var/second_piece = /obj/item/material/shaft
	var/use_material = FALSE
	var/result = /obj/item/shovel

/obj/item/material/blacksmith_piece/attackby(var/obj/item/I, mob/user as mob)
	..()
	if(istype(I, second_piece))
		create_object(I, user)

/obj/item/material/blacksmith_piece/proc/create_object(var/obj/item/I, mob/user as mob)
	var/obj/item/finished
	if(use_material)
		finished = new result(get_turf(user), src.material.name)
	else
		finished = new result(get_turf(user))

	qdel(I)
	qdel(src)
	user.put_in_hands(finished)
	update_icon(user)


/obj/item/material/blacksmith_piece/pickaxe
	name = "pickaxe head"
	desc = "A head of a pickaxe, useless for digging."
	icon_state = "pickaxe_head"
	result = /obj/item/pickaxe

/obj/item/material/blacksmith_piece/pickaxe/create_object(var/obj/item/I, mob/user as mob)
	var/finished

	var/pickaxe_material = src.material.name

	switch(pickaxe_material)

		if("silver")
			finished = /obj/item/pickaxe/silver

		if("gold")
			finished = /obj/item/pickaxe/gold

		else
			finished = /obj/item/pickaxe

	new finished(get_turf(user))

	qdel(I)
	qdel(src)
	user.put_in_hands(finished)
	update_icon(user)

/obj/item/material/blacksmith_piece/axe
	name = "axe head"
	desc = "A sharp head of a axe, useless for cutting."
	icon_state = "axe_head"
	use_material = TRUE
	result = /obj/item/material/axe

/obj/item/material/blacksmith_piece/halberd
	name = "halberd head"
	desc = "A sharp head of a halberd."
	icon_state = "halberd_head"
	use_material = TRUE
	result = /obj/item/material/twohanded/pike/halberd

/obj/item/material/blacksmith_piece/blacksmith_hammer
	name = "hammer head"
	desc = "A hammer head. Not the fish. That'd be weird."
	icon_state = "hammer_rh"
	use_material = TRUE
	result = /obj/item/material/blacksmith_hammer