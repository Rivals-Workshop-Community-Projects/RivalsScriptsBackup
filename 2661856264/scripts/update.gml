// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//Plays the "Supereffective!" sound when it galaxies someone
if instance_number(oPlayer) == 2 {
    if move_cooldown[AT_TAUNT] == 0 && hitstop{
        with oPlayer if (activated_kill_effect) {
            if hit_player_obj == other {
                with other {
                    move_cooldown[AT_TAUNT] = 20;
                    sound_play(sound_get("supereffective"));
                }
            }
        }
   }
}

//Walk, dash, parry sounds & shakes
switch (state)
{
	case PS_DASH_START:
		if (state_timer == 6)
			sound_play(sound_get("step_xl_walk"));
		break;
	case PS_DASH_TURN:
		if (state_timer == 1)
			sound_play(sound_get("step_xl_slide"));
			sound_stop(asset_get("sfx_kragg_roll_loop"));
		break;
	case PS_DASH_STOP:
		sound_stop(asset_get("sfx_kragg_roll_loop"));
		break;
	case PS_DASH:
		if (state_timer % 20 == 1)
			sound_play(asset_get("sfx_kragg_roll_loop"));
		if (state_timer % 6 == 1)
			shake_camera(1,1);
		break;
	case PS_WALK_TURN:
		if (state_timer == 3)
			sound_play(sound_get("step_xl_run"));
		if (state_timer == 3)
			shake_camera(1,3);
		if (state_timer == 5)
			sound_play(sound_get("step_xl_run"));
		if (state_timer == 5)
			shake_camera(1,3);
		break;
	case PS_WALK:
		if (state_timer % 65 == 20 || state_timer % 65 == 55)
			sound_play(sound_get("step_xl_walk"));
		if (state_timer % 65 == 20 || state_timer % 65 == 55)
			shake_camera(1,6);
		break;
	case PS_LAND:
		if (state_timer == 1)
			shake_camera(1,6);
		break;
	case PS_LANDING_LAG:
		if (state_timer == 1)
			shake_camera(2,6);
		break;
	case PS_PRATLAND:
		if (state_timer == 1)
			shake_camera(1,6);
		break;
	case PS_PARRY:
		if (state_timer == 1 && !hitpause)
			sound_play(sound_get("parry_start"));
			break;
		break;
	case PS_CROUCH:
		sound_stop(asset_get("sfx_kragg_roll_loop"));
		break;
	case PS_JUMPSQUAT:
		sound_stop(asset_get("sfx_kragg_roll_loop"));
		break;
	case PS_DOUBLE_JUMP:
		sound_stop(asset_get("sfx_kragg_roll_loop"));
		break;
	case PS_ROLL_FORWARD:
		sound_stop(asset_get("sfx_kragg_roll_loop"));
		break;
	case PS_ROLL_BACKWARD:
		sound_stop(asset_get("sfx_kragg_roll_loop"));
		break;
	default:
		break;
}

if (stealth_rock > 4){
	stealth_rock = 4;
}

//This makes the Hit_s effect spawn whenever a rock is destroeyd (at their position)
if (stealth_rock_aux != stealth_rock){
	if (stealth_rock_aux == 1){
		spawn_hit_fx(x-30*spr_dir, y-50, rock_s);
	}
	if (stealth_rock_aux == 2){
		if (stealth_rock == 1){
			spawn_hit_fx(x+30*spr_dir, y-50, rock_s);
		}
		if (stealth_rock == 0){
			spawn_hit_fx(x+30*spr_dir, y-50, rock_m);	
		}
	}
	if (stealth_rock_aux == 3){
		if (stealth_rock == 2){
			spawn_hit_fx(x-30*spr_dir, y+30, rock_s);
		}
		if (stealth_rock == 1){
			spawn_hit_fx(x-30*spr_dir, y+30, rock_m);	
		}
	}
	if (stealth_rock_aux == 4){
		if (stealth_rock == 3){
			spawn_hit_fx(x+30*spr_dir, y+30, rock_s);	
		}
		if (stealth_rock == 2){
			spawn_hit_fx(x+30*spr_dir, y+30, rock_m);	
		}
	}
	stealth_rock_aux = stealth_rock;
}