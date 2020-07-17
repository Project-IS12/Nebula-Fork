/*
For zooming with scope or binoculars. This is called from
modules/mob/mob_movement.dm if you move you will be zoomed out
modules/mob/living/carbon/human/life.dm if you die, you will be zoomed out.
*/

/mob/
	var/zoomed = FALSE

//Looking through a scope or binoculars should /not/ improve your periphereal vision. Still, increase viewsize a tiny bit so that sniping isn't as restricted to NSEW
/mob/verb/zoom() //tileoffset is client view offset in the direction the user is facing. viewsize is how far out this thing zooms. 7 is normal view
	set category = "Object"
	set name = "Look into distance"

	if(!client)
		return

	if(incapacitated(INCAPACITATION_DISABLED))
		if(zoomed)
			client.view = world.view
			toggle_zoom_hud()
			zoomed = 0
			client.pixel_x = 0
			client.pixel_y = 0
			face_direction()
		else
			to_chat(src, "<span class='warning'>You are unable to focus your vision.</span>")
		return

	if(!zoomed)
		toggle_zoom_hud()	// If the user has already limited their HUD this avoids them having a HUD when they zoom in
		client.view = 9
		zoomed = 1

		var/tilesize = 35
		var/viewoffset = tilesize * 6

		switch(dir)
			if (NORTH)
				client.pixel_x = 0
				client.pixel_y = viewoffset
			if (SOUTH)
				client.pixel_x = 0
				client.pixel_y = -viewoffset
			if (EAST)
				client.pixel_x = viewoffset
				client.pixel_y = 0
			if (WEST)
				client.pixel_x = -viewoffset
				client.pixel_y = 0
		visible_message("[src] looks off into the distance.")
		face_direction()


	else
		client.view = world.view
		toggle_zoom_hud()
		zoomed = 0
		client.pixel_x = 0
		client.pixel_y = 0
		face_direction()

/mob/proc/do_zoom()
	if(!zoomed)
		if(lying)
			return
		toggle_zoom_hud()
		face_direction()
		var/_x = 0
		var/_y = 0
		switch(dir)
			if (NORTH)
				_y = 7
			if (EAST)
				_x = 7
			if (SOUTH)
				_y = -7
			if (WEST)
				_x = -7

		animate(client, pixel_x = world.icon_size*_x, pixel_y = world.icon_size*_y, 4, TRUE)
		animate(client, pixel_x = 0, pixel_y = 0)
		client.pixel_x = world.icon_size*_x
		client.pixel_y = world.icon_size*_y
		zoomed = TRUE
		visible_message("<span class='notice'>[src] peers into the distance.</span>")

	else
		toggle_zoom_hud()
		face_direction()
		zoomed = FALSE
		client.pixel_x = 0
		client.pixel_y = 0

/atom/AltRightClick(var/mob/living/carbon/human/user)
	..()
	if(!istype(user))
		return
	user.face_atom(src)
	user.do_zoom()