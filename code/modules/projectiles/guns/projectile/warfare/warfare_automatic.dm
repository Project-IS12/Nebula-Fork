/obj/item/gun/projectile/warfare/automatic//Base of all automatics.
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK|SLOT_S_STORE
	load_method = MAGAZINE
	accuracy = -2
	accuracy_power = 7
	one_hand_penalty = 8
	bulk = GUN_BULK_RIFLE
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null, automatic = 0),
		list(mode_name="automatic",      burst=1, fire_delay=1, one_hand_penalty=7, burst_accuracy=null, dispersion=list(0.0, 0.8, 1.5), burst_delay = 0, automatic = 1),
		)

/obj/item/gun/projectile/warfare/automatic/sts
	name = "STS Mk. 2"
	desc = "A fully automatic battle rifle. Fires faster, and more reliably than the old shitty bolt action rifles from the old war."
	icon_state = "sts"
	item_state = "sts"
	wielded_item_state = "sts-wielded"
	dispersion_build = 0.1
	magazine_type = /obj/item/ammo_magazine/rifle/sts
	allowed_magazines = /obj/item/ammo_magazine/rifle/sts
	caliber = CALIBER_RIFLE
	fire_sound = 'sound/weapons/gunshot/ak_fire.ogg'
	ammo_type = /obj/item/ammo_casing/rifle
	mag_insert_sound = 'sound/weapons/guns/interaction/ak_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ak_magout.ogg'
	cock_sound = 'sound/weapons/guns/interaction/ak_cock.ogg'

	loaded_icon = "sts"
	unwielded_loaded_icon = "sts"
	wielded_loaded_icon = "sts-wielded"
	unloaded_icon = "sts-e"
	unwielded_unloaded_icon = "sts-e"
	wielded_unloaded_icon = "sts-wielded-e"

/obj/item/ammo_magazine/rifle/sts
	name = "STS magazine"
	icon_state = "sts"
	max_ammo = 30



/obj/item/gun/projectile/warfare/automatic/combatrifle
	name = "Mk. 2 Nightfall"
	desc = "An advanced post war rifle, this one has different fire modes and relative accuracy!"
	icon_state = "wintermute"
	item_state ="wintermute"
	accuracy = 2
	wielded_item_state = "wintermute-wielded"
	magazine_type = /obj/item/ammo_magazine/mil_rifle/combatrifle
	allowed_magazines = /obj/item/ammo_magazine/mil_rifle/combatrifle
	caliber = CALIBER_RIFLE_MILITARY
	fire_sound = 'sound/weapons/gunshot/combatrifle_fire.ogg'
	ammo_type = /obj/item/ammo_casing/rifle/military
	mag_insert_sound = 'sound/weapons/guns/interaction/sfrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/sfrifle_magout.ogg'
	cock_sound = 'sound/weapons/guns/interaction/sfrifle_cock.ogg'

	loaded_icon = "wintermute"
	unwielded_loaded_icon = "wintermute"
	wielded_loaded_icon = "wintermute-wielded"
	unloaded_icon = "wintermute-e"
	unwielded_unloaded_icon = "wintermute-e"
	wielded_unloaded_icon = "wintermute-wielded-e"

/obj/item/ammo_magazine/mil_rifle/combatrifle
	name = "Nightfall magazine"
	icon_state = "srifle"
	max_ammo = 30

/obj/item/gun/projectile/warfare/automatic/combatrifle/blue
	icon_state = "bluemute"
	item_state ="bluemute"
	wielded_item_state = "bluemute-wielded"
	magazine_type = /obj/item/ammo_magazine/mil_rifle/combatrifle/blue
	allowed_magazines = /obj/item/ammo_magazine/mil_rifle/combatrifle/blue

	loaded_icon = "bluemute"
	unwielded_loaded_icon = "bluemute"
	wielded_loaded_icon = "bluemute-wielded"
	unloaded_icon = "bluemute-e"
	unwielded_unloaded_icon = "bluemute-e"
	wielded_unloaded_icon = "bluemute-wielded-e"

/obj/item/ammo_magazine/mil_rifle/combatrifle/blue
	icon_state = "bluerifle"