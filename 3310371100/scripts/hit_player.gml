//USHR HIT PLAYER

move_is_fresh = false;

if (attack==AT_FSTRONG){
	switch(my_hitboxID.hbox_num){
		case 1:
		case 3:
		case 5:
			sound_play(asset_get("sfx_blow_heavy2"));
			sound_play(sound_get("critical"),false,noone,0.2,1.4);
			break;
		case 2:
		case 4:
		case 6:
			sound_play(asset_get("sfx_blow_heavy1"));
			break;
	}
}
if (attack==AT_FSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,1.2);
	}
	if (my_hitboxID.hbox_num == 3){
		sound_play(sound_get("ice_hit"),false,noone,0.8,1.1);
	}
}
if (attack==AT_UTILT){
	sound_play(asset_get("sfx_blow_medium3"),false,noone,0.5,0.85);
}
if (attack==AT_DTILT){
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.4,1.2);
		sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8,1.3);
		sound_play(asset_get("sfx_blow_medium3"),false,noone,0.5,1);
	}
}
if (attack==AT_NAIR){
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_waterhit_heavy2"),false,noone,0.7,1.2);
	}
}
if (attack==AT_DAIR){
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_waterhit_heavy2"),false,noone,0.7,1);
	}
}
if (attack==AT_BAIR){
	if (my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_waterhit_heavy"),false,noone,0.55,0.9);
	}
}
if (attack==AT_DSPECIAL){
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.8,1);
	}
}

//mawralgrab
if (my_hitboxID.attack == AT_DSPECIAL) {
	
	if (my_hitboxID.hbox_num == 1){
		//spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, tackle_hfx2 );
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 11);
		
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
	
	if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
		if (my_hitboxID.ice_checkcheck != AT_NSPECIAL){
			old_hsp = hsp;
			old_vsp = vsp;
			hsp = 0;
			vsp = 0;
			hitpause = hit_player_obj.hitpause
			hitstop = hit_player_obj.hitstop
			hitstop_full = hit_player_obj.hitstop_full
		}
		has_hit = true;
		has_hit_player = true;
		if (my_hitboxID.hbox_num == 4){
			sound_play(asset_get("sfx_icehit_heavy2"));
		}
	}
	
}



