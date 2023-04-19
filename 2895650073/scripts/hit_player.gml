if (my_hitboxID.attack==AT_JAB){
	if (my_hitboxID.hbox_num==1){
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, 301 )
		sound_play(asset_get("sfx_holy_lightning"));
		sound_play(asset_get("sfx_holy_die"));
	}
}
if (my_hitboxID.attack==AT_UTILT){
	if (my_hitboxID.hbox_num==1){
		sound_play(asset_get("sfx_syl_dstrong"));
	}
}
if (my_hitboxID.attack==AT_BAIR){
	if (my_hitboxID.hbox_num==3){
		sound_play(asset_get("sfx_holy_lightning"), false, noone, 0.7);
		sound_play(asset_get("sfx_ori_seinhit_heavy"), false, noone, 0.7, 0.9);
	}
}
if (my_hitboxID.attack==AT_USTRONG){
	if (my_hitboxID.hbox_num==2){
		sound_play(asset_get("sfx_holy_lightning"), false, noone, 0.7);
		sound_play(asset_get("sfx_ori_seinhit_heavy"), false, noone, 0.7, 0.9);
	}
}



if (door_storage!=-4){
	if (door_storage.state==1){
		if (!hit_only_once_storage){
			hit_only_once_storage = true; //this is false'd at set_attack
			door_storage.idle_cycle = door_storage.idle_cycle_max
			door_storage.state_timer = door_storage.state_end-1
		}
	}
}

//mawralgrab
if (my_hitboxID.attack == AT_NSPECIAL) {
	
	if (my_hitboxID.hbox_num == 1){
		//spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, tackle_hfx2 );
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
		window = 5;
		window_timer = 0;
		
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
			  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			destroy_hitboxes();
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
	}
	
}

if (my_hitboxID.attack==AT_FAIR){
    if (my_hitboxID.hbox_num==1){
        sound_play(sound_get("hitslash"), false, noone, 0.4, 1);
    }
    if (my_hitboxID.hbox_num==2){
        sound_play(sound_get("hitslash"), false, noone, 0.4, 1.2);
    }
}