// if (my_hitboxID.attack == AT_FSTRONG){
// 	// print_debug("poop");
// 	if (my_hitboxID.hbox_num == 2){
// 		// print_debug("soft hit");
// 		cancel_alarm = 16;
// 		attack_canceled = true;
// 	}
// }

if (attack == AT_FSPECIAL){
    with (asset_get("obj_article1")){
        if (player_id == other.id){
        	if (is_boosted){
        		sound_play(asset_get("sfx_absa_new_whip1"));
        		// spawn_hit_fx(x, y, ) //TODO: make effect for this
        	}
        	has_bounced = true;
        	is_boosted = true;
        	grav = 0.2;
        	lifespan = 300;
            image_angle = 0;
        	hsp = -3*sign(spr_dir);
        	vsp = -6;
        }
    }
}

if (my_hitboxID.attack == AT_USPECIAL){
	uspec_cancel_alarm = 15;
	attack_canceled = true;
	attack_end();
	// move_cooldown[AT_USPECIAL] = 60; //doesn't work this way
}

// if (attack == AT_JAB){
// 	// print("jab")
// 	// if window == 4 || ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && hit_player_obj.state_timer == 0){
// 	if window == 4 && hit_player_obj.state_timer == 0{
// 		print("hitstun")
		
// 		if window_timer == 0 || window_timer == 6{
// 			// print("swipe")
// 			sound_play(asset_get("sfx_swipe_weak1"));
// 			jab_sound = false;
// 		}
// 	} 
// }