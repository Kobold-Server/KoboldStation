/obj/item/mold
	name = "spoon mold"
	desc = "A mold used in blacksmithing."
	icon = 'icons/obj/blacksmith.dmi'
	icon_state = "mold"
	w_class = 2
	var/material/filling
	var/outcome = /obj/item/material/kitchen/utensil/spoon
	var/needed_ammount = 1
	var/list/allowed_materials = list("iron", DEFAULT_WALL_MATERIAL, "bronze", "silver", "gold", "plasteel", "titanium", "platinum", "meteoric iron")
	var/use_material = TRUE

/obj/item/mold/update_icon()
	overlays.Cut()
	if(filling)
		add_overlay("[icon_state]_filling")

/obj/item/mold/proc/create_result(var/turf/T)
	if(use_material)
		new outcome(T, filling.name)
	else
		new outcome(T)

/obj/item/mold/fork
	name = "fork mold"
	outcome = /obj/item/material/kitchen/utensil/fork

/obj/item/mold/knife
	name = "knife mold"
	outcome = /obj/item/material/kitchen/utensil/knife

/obj/item/mold/pot
	name = "pot mold"
	needed_ammount = 3
	outcome = /obj/item/reagent_containers/cooking_container/fire/pot

/obj/item/mold/shovel
	name = "shovel mold"
	icon_state = "mold_shovel"
	allowed_materials = list("iron", DEFAULT_WALL_MATERIAL, "plasteel")
	use_material = FALSE
	outcome = /obj/item/material/blacksmith_piece
	needed_ammount = 3

/obj/item/mold/shield
	name = "shield fittings mold"
	icon_state = "mold_shield"
	allowed_materials = list("iron", DEFAULT_WALL_MATERIAL, "plasteel")
	outcome = /obj/item/material/shieldbits
	needed_ammount = 5

/obj/item/mold/pike
	name = "spearhead mold"
	icon_state = "mold_blade"
	outcome = /obj/item/material/spearhead
	needed_ammount = 5

/obj/item/mold/butterflyblade
	name = "knife blade mold"
	outcome = /obj/item/material/butterflyblade
	needed_ammount = 3

/obj/item/mold/butterflyhandle
	name = "knife grip mold"
	outcome = /obj/item/material/butterflyhandle
	needed_ammount = 4

/obj/item/mold/pickaxe
	name = "pickaxe head mold"
	outcome = /obj/item/material/blacksmith_piece/pickaxe
	needed_ammount = 6
	allowed_materials = list("iron", DEFAULT_WALL_MATERIAL, "silver", "gold", "plasteel")

/obj/item/mold/axehead
	name = "axe head mold"
	outcome = /obj/item/material/blacksmith_piece/axe
	needed_ammount = 6

/obj/item/mold/ring
	name = "ring mold"
	icon_state = "mold_shield"
	outcome = /obj/item/clothing/ring/material
	needed_ammount = 2

/obj/item/mold/key
	name = "key mold"
	icon_state = "mold_key"
	outcome = /obj/item/key
	needed_ammount = 1
	var/key_data

/obj/item/mold/key/create_result(var/turf/T)
	var/obj/item/key/S = new(T, filling.name)
	if(key_data)
		S.key_data = key_data

/obj/item/mold/key/attackby(var/obj/item/I, var/mob/user)
	if(istype(I, /obj/item/key))
		to_chat(user, "<span class='notice'>You imprint \the [I] into \the [src].</span>")
		var/obj/item/key/K = I
		key_data = K.key_data
	return
	..()

/obj/item/mold/lock
	name = "lock mold"
	icon_state = "mold_key"
	outcome = /obj/item/material/lock_construct
	needed_ammount = 1

/obj/item/mold/bat
	name = "bat mold"
	outcome = /obj/item/material/twohanded/baseballbat
	needed_ammount = 10

/obj/item/mold/halberd
	name = "halberd mold"
	icon_state = "mold_shovel"
	outcome = /obj/item/material/blacksmith_piece/halberd
	needed_ammount = 15

/obj/item/mold/blacksmith_hammer
	name = "smithing hammer mold"
	outcome = /obj/item/material/blacksmith_piece/blacksmith_hammer
	needed_ammount = 2

/obj/item/mold/tools/screwdriver
	name = "screwdriver mold"
	outcome = /obj/item/screwdriver
	needed_ammount = 1
	allowed_materials = list("iron", DEFAULT_WALL_MATERIAL, "plasteel")

/obj/item/mold/tools/crowbar
	name = "crowbar mold"
	outcome = /obj/item/crowbar

/obj/item/mold/tools/wrench
	name = "wrench mold"
	outcome = /obj/item/wrench

/obj/item/mold/ingot
	name = "ingot mold"
	outcome = null
	needed_ammount = 1
	allowed_materials = null

/obj/item/mold/ingot/create_result(var/turf/T)
	if(filling == "iron")
		new /obj/item/stack/material/iron(T)
		return

	if(filling == "gold")
		new /obj/item/stack/material/gold(T)
		return

	if(filling == "silver")
		new /obj/item/stack/material/silver(T)
		return

	if(filling == "platinum")
		new /obj/item/stack/material/osmium(T)
		return

	else
		new /obj/item/ore/slag(T)
		return