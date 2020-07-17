/obj/item/gun/projectile
	var/loaded_icon
	var/unwielded_loaded_icon
	var/wielded_loaded_icon
	var/unloaded_icon
	var/unwielded_unloaded_icon
	var/wielded_unloaded_icon


/obj/item/gun/projectile/warfare
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_warfare.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_warfare.dmi',
		)
	load_delay = 5
	icon = 'icons/obj/guns/warfare/warfare_guns.dmi'


/obj/item/gun/projectile/warfare/on_update_icon()
	if(ammo_magazine)
		set_loaded_icons()
	else
		set_unloaded_icons()


/obj/item/gun/projectile/proc/set_loaded_icons()
	if(loaded_icon)
		icon_state = loaded_icon
		if(!ammo_magazine.stored_ammo.len)
			icon_state = "[loaded_icon]-0"//Mag is loaded, but out of ammo.
		var/mob/living/M = loc
		if(istype(M))
			if(wielded)
				item_state_slots[slot_l_hand_str] = wielded_loaded_icon
				item_state_slots[slot_r_hand_str] = wielded_loaded_icon
			else
				item_state_slots[slot_l_hand_str] = unwielded_loaded_icon
				item_state_slots[slot_r_hand_str] = unwielded_loaded_icon

			item_state_slots[slot_back_str] = loaded_icon
			item_state_slots[slot_s_store_str] = loaded_icon

			M.update_inv_back()
			M.update_inv_l_hand()
			M.update_inv_r_hand()
			M.update_inv_s_store()
	else
		set_generic_icons()


/obj/item/gun/projectile/proc/set_unloaded_icons()
	if(unloaded_icon)
		icon_state = unloaded_icon
		var/mob/living/M = loc
		if(istype(M))
			if(wielded)
				item_state_slots[slot_l_hand_str] = wielded_unloaded_icon
				item_state_slots[slot_r_hand_str] = wielded_unloaded_icon
			else
				item_state_slots[slot_l_hand_str] = unwielded_unloaded_icon
				item_state_slots[slot_r_hand_str] = unwielded_unloaded_icon

			item_state_slots[slot_back_str] = unloaded_icon
			item_state_slots[slot_s_store_str] = unloaded_icon
			M.update_inv_back()
			M.update_inv_l_hand()
			M.update_inv_r_hand()
			M.update_inv_s_store()
	else
		set_generic_icons()


/obj/item/gun/projectile/proc/set_generic_icons()
	icon_state = initial(icon_state)//Default to the defaults
	var/mob/living/M = loc
	if(istype(M))
		if(wielded)
			item_state_slots[slot_l_hand_str] = wielded_item_state
			item_state_slots[slot_r_hand_str] = wielded_item_state
		else
			item_state_slots[slot_l_hand_str] = initial(item_state)
			item_state_slots[slot_r_hand_str] = initial(item_state)

		item_state_slots[slot_back_str] = initial(item_state)

		M.update_inv_back()
		M.update_inv_l_hand()
		M.update_inv_r_hand()
		M.update_inv_s_store()