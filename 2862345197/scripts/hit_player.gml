if !(state_cat = SC_HITSTUN) && ((my_hitboxID.attack == AT_FSTRONG) || (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2)){
    hitpause = true;
    hitstop = 10;
	hitstop_full = 10;
	orig_knock = 1;
	old_hsp = hsp;
	old_vsp = vsp; //so many things to set dan pls
    with(pHitBox){
        if(player_id == other) { 
		    if (attack == AT_FSTRONG) || (attack == AT_DSTRONG && hbox_num == 2){
            danmoment_hitpause = 10;
            } else if attack == AT_UTILT {
			danmoment_hitpause = 8;
			}
		}
    }
}
if (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num = 1) {
sound_play(sound_get("block_break"));
}

if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num = 1 )  {
fsmash_target = hit_player_obj;
fs_target_number = hit_player_obj.player;
fs_start = 32;
//reset invince
hit_player_obj.invincible = true;
hit_player_obj.invince_time = 1;
}

// dspec air -- try dunking
if my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num == 1 {
	if hit_player_obj.state == PS_HITSTUN && !was_parried && !hit_player_obj.clone {
		var xx = hit_player_obj.x;
		var yy = hit_player_obj.y + 120;
		// check ground where hoop would spawn
		if !collision_rectangle(xx - 16, yy - 16, xx + 16, yy + 16, asset_get("par_block"), true, false) {
			// check ground below hit player
			var found_ground = false;
			for (var i = 0; i < 2; i += 1) {
				var xxx = bbox_left + i * (bbox_right - bbox_left);
				var found_plat = collision_line(xxx, hit_player_obj.y, xxx, yy, asset_get("par_jumpthrough"), true, false);
				var found_solid = collision_line(xxx, hit_player_obj.y, xxx, yy, asset_get("par_block"), true, false);
				if found_plat || found_solid {
					found_ground = true;
					break;
				}
			}
			// spawn hoop
			if !found_ground {
				var temp_hb = create_hitbox(AT_DSPECIAL_AIR, 2, xx, yy);
				temp_hb.depth = depth - 1;
				temp_hb.client_id = hit_player_obj;
			}
		}
	}
}

// absa zap effect
if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_ZAP) {
	hit_player_obj.hitpause_shock = true;
}