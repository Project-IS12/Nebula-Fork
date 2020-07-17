//If we intercept it return true else return false
/atom/proc/RelayMouseDrag(src_object, over_object, src_location, over_location, src_control, over_control, params, var/mob/user)
	return FALSE

/mob/proc/OnMouseDrag(src_object, over_object, src_location, over_location, src_control, over_control, params)
	if(istype(loc, /atom))
		var/atom/A = loc
		if(A.RelayMouseDrag(src_object, over_object, src_location, over_location, src_control, over_control, params, src))
			return