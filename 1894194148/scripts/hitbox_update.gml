//AR hitbox_update
//you see this AR i keep putting everywhere?
//it's so that i don't get lost in my codes,
//and to not get confused by guadua's code i
//sometimes open up on side to refer to

if (!free && type == 2 && attack == AT_USPECIAL){
	destroyed = true
	sound_play( asset_get( "sfx_bubblepop" ) )
}






if (hitbox_timer == 10 && type == 2 && attack == AT_USPECIAL){
	//print_debug("test")
	destroyed = true
	sound_play( asset_get( "sfx_bubblepop" ) )
}
if (hitbox_timer > 0 && vsp > 0 && type == 2 && attack == AT_USPECIAL){
	vsp = (vsp / 1.2)
}



