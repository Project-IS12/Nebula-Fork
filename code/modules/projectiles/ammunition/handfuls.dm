//Handfuls by Matt.

/obj/item/ammo_magazine/handful
	name = "handful"
	desc = "If you see this Matt fucked something up."
	mag_type = SINGLE_LOAD
	max_ammo = 5
	multiple_sprites = 1
	//drop_sound = 'sound/items/handle/casing_drop.ogg'

/obj/item/ammo_magazine/handful/Initialize()
	. = ..()
	update_icon()

/obj/item/ammo_magazine/handful/on_update_icon()
	if(!stored_ammo.len)//There's no more ammo here, so delete the handful.
		qdel(src)
		return
	icon_state = "[initial(icon_state)][stored_ammo.len]"//If there is ammo then we take our initial icon_state and add the ammount of ammo in the stack to it.

/obj/item/ammo_magazine/handful/attack_self(mob/user)//We want to override the normal attack self with makes us "empty" our "clip".
	return


//Shotgun
/obj/item/ammo_magazine/handful/shotgun
	caliber = CALIBER_SHOTGUN
	//drop_sound = 'sound/weapons/guns/misc/shotgun_fall.ogg'

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful
	name = "\improper handful of shells"
	desc = "A handful of shotgun shells for your shotgun."
	icon_state = "gshell"
	caliber = "shotgun"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	//drop_sound = 'sound/weapons/guns/misc/shotgun_fall.ogg'

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/shotgun/slug_handful
	name = "\improper handful of slug shells"
	desc = "A handful of slugs, like buckshot without the spread."
	icon_state = "slshell"
	caliber = "shotgun"
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/ammo_magazine/handful/shotgun/slug_handful/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/shotgun/beanbag_handful
	name = "\improper handful of shells"
	desc = "A handful of shotgun shells for your shotgun."
	icon_state = "bshell"
	caliber = "shotgun"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

/obj/item/ammo_magazine/handful/shotgun/beanbag_handful/two
	initial_ammo = 2

//Revolver
/obj/item/ammo_magazine/handful/revolver
	name = "\improper handful of revolver ammo"
	desc = "For if you accidentally lose your quickloader somehow."
	icon_state = "revolver-handful"
	ammo_type = /obj/item/ammo_casing/pistol/magnum
	max_ammo = 6

/obj/item/ammo_magazine/handful/revolver/two
	initial_ammo = 2


/*
 * AMMO BOXES
 */


/obj/item/ammo_box
	name = "\improper box of ammo"
	desc = "You get bullets out of this."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "rbox"
	w_class = ITEM_SIZE_SMALL //So you can put it in your pocket.
	var/handful_type = null
	var/list/stored_handfuls = list()
	var/max_stacks = 4

/obj/item/ammo_box/Initialize()
	. = ..()
	for(var/i in 1 to max_stacks)
		stored_handfuls += new handful_type(src)

/obj/item/ammo_box/examine(mob/user)
	. = ..()
	if(stored_handfuls.len)
		to_chat(user, "It has [stored_handfuls.len] handfuls left.")
	else
		to_chat(user, "It is empty.")


/obj/item/ammo_box/attack_hand(var/mob/living/carbon/human/user)
	if(!istype(user))
		..()
		return
	if((src != user.r_store) && (src != user.l_store) && (src != user.belt) && (src != user.get_inactive_hand()))
		..()//If it's not in any of these slots then just return normally.
		return
	if(!stored_handfuls.len)//If there's no more handfuls then don't divide by 0 please.
		return
	var/obj/item/ammo_magazine/handful/A = src.stored_handfuls[1]//If it is in one of these slots though put it in our hand.
	if(A)
		stored_handfuls.Cut(1, 2)
		user.put_in_hands(A)
		user.visible_message("[user] takes [A] out.")

/obj/item/ammo_box/attackby(obj/item/C, mob/user)
	if(!istype(C, handful_type))
		to_chat(user, "\The [src] does not accept this handful.")
		return
	if(stored_handfuls.len == max_stacks)
		to_chat(user, "There's too many handfuls in there already.")
		return
	user.remove_from_mob(C)
	C.forceMove(src)
	stored_handfuls.Add(C)
	user.visible_message("[user] adds [C] to the box.")
	update_icon()


/obj/item/ammo_box/MouseDrop(var/obj/over_object)
	if (!over_object || !(ishuman(usr) || issmall(usr)))
		return

	if (!(src.loc == usr))
		return

	if (usr.incapacitated(INCAPACITATION_STUNNED|INCAPACITATION_RESTRAINED|INCAPACITATION_KNOCKOUT))
		return

	if (!usr.unEquip(src))
		return

	switch(over_object.name)
		if("r_hand")
			usr.put_in_r_hand(src)
		if("l_hand")
			usr.put_in_l_hand(src)

	src.add_fingerprint(usr)


//Box of handfuls of shotgun ammo.
/obj/item/ammo_box/shotgun
	name = "\improper shells box"
	icon_state = "shellbox"
	desc = "You get shells out of this."
	handful_type = /obj/item/ammo_magazine/handful/shotgun/shotgun_handful