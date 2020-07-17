/*
	These defines specificy screen locations.  For more information, see the byond documentation on the screen_loc var.

	The short version:

	Everything is encoded as strings because apparently that's how Byond rolls.

	"1,1" is the bottom left square of the user's screen.  This aligns perfectly with the turf grid.
	"1:2,3:4" is the square (1,3) with pixel offsets (+2, +4); slightly right and slightly above the turf grid.
	Pixel offsets are used so you don't perfectly hide the turf under them, that would be crappy.

	The size of the user's screen is defined by client.view (indirectly by world.view), in our case "15x15".
	Therefore, the top right corner (except during admin shenanigans) is at "15,15"
*/

#define ui_entire_screen "WEST,SOUTH to EAST,NORTH"

//Upper left action buttons, displayed when you pick up an item that has this enabled.
#define ui_action_slot1 "1:6,14:26"
#define ui_action_slot2 "2:8,14:26"
#define ui_action_slot3 "3:10,14:26"
#define ui_action_slot4 "4:12,14:26"
#define ui_action_slot5 "5:14,14:26"

//Lower left, persistant menu
#define ui_inventory "SOUTH-1,4"

//Lower center, persistant menu
#define ui_sstore1 "SOUTH-1,12"//"SOUTH-1,13"
#define ui_id "SOUTH-2,1"
#define ui_belt "SOUTH-2,3"
#define ui_back "SOUTH-1,6"
#define ui_rhand "SOUTH-1,1"
#define ui_lhand "SOUTH-1,3"
#define ui_swaphand2 "8:16,2:5"
#define ui_storage1 "SOUTH-2,4"
#define ui_storage2 "SOUTH-2,5"

#define ui_alien_head "CENTER-3:12,SOUTH:5"		//aliens
#define ui_alien_oclothing "CENTER-2:14,SOUTH:5"//aliens
/*
#define ui_inv1 "6:16,1:5"			//borgs
#define ui_inv2 "7:16,1:5"			//borgs
#define ui_inv3 "8:16,1:5"			//borgs
#define ui_borg_store "9:16,1:5"	//borgs
*/

//Lower right, persistant menu
#define ui_swaphand1 "SOUTH-2,6"
#define ui_dropbutton "SOUTH-2,9"
#define ui_drop_throw "SOUTH-2, 9"//"SOUTH-2,13"
#define ui_pull "SOUTH-2,10"
#define ui_jmp_kck "SOUTH-2, 8"
#define ui_resist "SOUTH-2, 15"//"EAST+1,SOUTH-2"
#define ui_acti "SOUTH-2,7"
#define ui_combat "SOUTH-2,12"//COMBAT MODE!
#define ui_movi "EAST,SOUTH-2"
#define ui_zonesel "SOUTH-2, 16"
#define ui_acti_alt "SOUTH-2,9" //alternative intent switcher for when the interface is hidden (F12)



//Gun buttons
#define ui_gun4 "EAST-3:24,SOUTH+2:7"

#define ui_inv1 "CENTER-1,SOUTH:5"			//borgs
#define ui_inv2 "CENTER,SOUTH:5"			//borgs
#define ui_inv3 "CENTER+1,SOUTH:5"			//borgs
#define ui_borg_store "CENTER+2,SOUTH:5"	//borgs
#define ui_borg_inventory "CENTER-2,SOUTH:5"//borgs

#define ui_monkey_mask "WEST+4:14,SOUTH:5"	//monkey
#define ui_monkey_back "WEST+5:14,SOUTH:5"	//monkey

#define ui_construct_health "EAST:00,CENTER:15" //same height as humans, hugging the right border
#define ui_construct_purge "EAST:00,CENTER-1:15"
#define ui_construct_fire "EAST-1:16,CENTER+1:13" //above health, slightly to the left
#define ui_construct_pull "EAST-1:28,SOUTH+1:10" //above the zone_sel icon

#define ui_borg_pull "EAST-3:24,SOUTH+1:7"
#define ui_borg_module "EAST-2:26,SOUTH+1:7"
#define ui_borg_panel "EAST-1:28,SOUTH+1:7"

#define ui_kick_jump "CENTER+3:16,SOUTH:5"

//Gun buttons
#define ui_gun1 "9, SOUTH"
#define ui_gun2 "10, SOUTH"
#define ui_gun3 "11, SOUTH"
#define ui_gun_select "10, SOUTH-1"

//Upper-middle right (damage indicators)
#define ui_toxin "EAST+1, NORTH-8"//6
#define ui_fire "NORTH,14"//8
#define ui_oxygen "EAST+1, NORTH-7"//NORTH-3"
#define ui_pressure "EAST+1, NORTH-11"//7
#define ui_surrender "EAST+1, NORTH-5"
#define ui_fixeye "SOUTH-2, 11"//"EAST+1, NORTH-6"

#define ui_alien_toxin "14:28,13:25"
#define ui_alien_fire "14:28,12:25"
#define ui_alien_oxygen "14:28,11:25"

//Middle right (status indicators)
#define ui_stamina "EAST+1, NORTH-14"
#define ui_temp "SOUTH-2, 13"//"EAST+1, NORTH-12"
#define ui_health "SOUTH-2, 10"
#define ui_happiness "EAST+1, NORTH-4"
#define ui_nutrition "SOUTH-2, 12"
#define ui_internal "SOUTH-2,14"//"EAST+1, NORTH-3"
									//borgs
#define ui_borg_health "EAST-1:28,CENTER-1:13" //borgs have the health display where humans have the pressure damage indicator.
#define ui_alien_health "EAST-1:28,CENTER-1:13" //aliens have the health display where humans have the pressure damage indicator.

//Pop-up inventory
#define ui_shoes "SOUTH-1,7"

#define ui_iclothing "SOUTH-2,2"
#define ui_oclothing "SOUTH-1,2"
#define ui_gloves "SOUTH-1,8"

#define ui_glasses "SOUTH-1,11"//"SOUTH-1,12"
#define ui_mask "SOUTH-1,4"
#define ui_l_ear "SOUTH-1,9"//"SOUTH-1,10"
#define ui_r_ear "SOUTH-1,10"//"SOUTH-1,11"
//#define ui_neck "SOUTH-1,9"

#define ui_head "SOUTH-1,5"

//Attack intent
#define ui_att_int "SOUTH-2,7"//"SOUTH-2,9"

//#define ui_swapbutton "6:-16,1:5" //Unused

//#define ui_headset "SOUTH-1,8"
#define ui_hstore1 "5,5"
#define ui_sleep "EAST+1, NORTH-14"
#define ui_rest "EAST+1, NORTH-15"


#define ui_iarrowleft "SOUTH-2,11"
#define ui_iarrowright "SOUTH-2,13"

#define ui_spell_master "EAST-1:16,NORTH-1:16"
#define ui_genetic_master "EAST-1:16,NORTH-3:16"

#define ui_up_hint "NORTH,EAST+1"

// AI
#define ui_ai_core "LEFT:6,BOTTOM:5"
#define ui_ai_announcement "LEFT+1:10,BOTTOM:5"
#define ui_ai_cam_track "LEFT+2:12,BOTTOM:5"
#define ui_ai_cam_light "LEFT+3:14,BOTTOM:5"
#define ui_ai_cam_change_network "LEFT+4:16,BOTTOM:5"
#define ui_ai_sensor "CENTER-2:18,BOTTOM:5"
#define ui_ai_crew_manifest "CENTER-1:20,BOTTOM:5"
#define ui_ai_take_image "CENTER:22,BOTTOM:5"
#define ui_ai_view_images "CENTER+1:24,BOTTOM:5"
#define ui_ai_state_laws "CENTER+2:26,BOTTOM:5"
#define ui_ai_call_shuttle "RIGHT-4:28,BOTTOM:5"

#define ui_ai_up "RIGHT-1:30,BOTTOM+1:5"
#define ui_ai_down "RIGHT-1:30,BOTTOM:5"

// AI: Customization
#define ui_ai_holo_change "RIGHT-1:30,BOTTOM+2:5"
#define ui_ai_color "RIGHT-1:30,BOTTOM+3:5"
#define ui_ai_core_icon "RIGHT-1:30,BOTTOM+4:5"
#define ui_ai_status "RIGHT-1:30,BOTTOM+5:5"

// AI: Tools
#define ui_ai_power_override "LEFT:6,TOP:0"
#define ui_ai_shutdown "LEFT+1:6,TOP:0"
#define ui_ai_holo_mov "LEFT:6, TOP-1:0"

// AI: Crew
#define ui_ai_crew_mon "RIGHT-1:30,TOP:0"
#define ui_ai_crew_rec "RIGHT-2:30, TOP:0"