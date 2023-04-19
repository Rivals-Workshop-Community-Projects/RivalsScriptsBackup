if (attack == AT_NSPECIAL && !free && destroyed == false){
    destroyed = true;
    sound_play (asset_get ("sfx_blow_weak1"));
}

if (attack == AT_FSTRONG){
	var flash_time = 45;
	
	if (hitbox_timer > length - 15){
		visible = !(flash_time && hitbox_timer % 5 < 2);
	}
	
	if (hitbox_timer == length - 1){
		destroyed = true;
	}
}

with (player_id){
	if (has_rune("D")){
		with (other){
			grounds = 2;
		}
	}
}


var hook_reverse_speed = player_id.hook_reverse_speed;

with (player_id){
	var hook_hsp = get_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED);
}

if (attack == AT_NSPECIAL_2){
	hsp -= hook_reverse_speed*spr_dir;
	
	if (player_id.hook_not_always_active){
		if (spr_dir == 1){
			if (hsp < 0 && hit_priority != 0 && player_id.grabbed == -4){
				hit_priority = 0;
				spawn_hit_fx( x, y + 14, 301 );
			}
		}
		else{
			if (hsp > 0 && hit_priority != 0 && player_id.grabbed == -4){
				hit_priority = 0;
				spawn_hit_fx( x, y + 14, 301 );
			}
		}
	}
	
	with (oPlayer){
		if (id == other.player_id){
			if (place_meeting(x, y, other)){
				other.destroyed = true;
				if (!hookshot_hit){
					window = 4;
					window_timer = 0;
					set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
					hookshot_hitbox = -4;
				}
				else{
					window = 5;
					window_timer = 0;
					set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 7);
				}
			}
		}
	}
	
	//wall interaction
	if (!player_id.hookshot_hit){
		if (position_meeting(x + 6*spr_dir, y, asset_get("par_block"))){
			destroyed = true;
			spawn_hit_fx( x, y + 14, 301 );
			sound_play(asset_get("sfx_may_whip1"));
			with (player_id){
				djumps = 0;
				move_cooldown[AT_NSPECIAL] = 99999;
				window = 7;
				window_timer = 0;
				hsp = hookshot_wall_hsp*spr_dir;
				vsp = hookshot_wall_vsp;
				set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 7);
			}
		}
	}
}