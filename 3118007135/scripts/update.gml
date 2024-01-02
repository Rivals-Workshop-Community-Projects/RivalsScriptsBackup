// Updates every frame of the game
#region // DEBUG MODE
if get_gameplay_time() <= 120{
	if get_match_setting(SET_PRACTICE) and taunt_down{
		wren_debug = true;
	}
	if shield_pressed{
		clear_button_buffer(PC_SHIELD_PRESSED);
		sound_play(asset_get("mfx_coin"));
		switch(wren_tidecall_toggle){
			case 0: // Default - Special + Attack
				wren_tidecall_toggle = 1;
				break;
			case 1:	// Rivals 1 Mode
				wren_tidecall_toggle = 0;
				break;
		}
	}
}
#endregion

#region // cringe ass hfx stuff
with hit_fx_obj if player_id == other {
	if hit_fx == other.vfx_sweetspot or hit_fx == other.hfx_waves_small or hit_fx == other.hfx_yoyo_small or hit_fx == other.hfx_yoyo_big or hit_fx == other.hfx_yoyo_huge or hit_fx == other.hfx_waves_big or hit_fx == other.hfx_waves_huge{
		depth = player_id.depth-1;
	}
}
#endregion

#region // Wren Charge
if wren_charge > wren_charge_max{
    wren_charge = wren_charge_max;
}
if wren_charge < 0 {
    wren_charge = 0;
}
switch(wren_charge){
    case 41:
        wren_charge_lvl = 1;
        break;
    case 81:
        wren_charge_lvl = 2;
        break;
}
#endregion

#region // Wren Yo-Yo
if !free or state == PS_WALL_JUMP{
    move_cooldown[AT_FSPECIAL] = 0;
    wren_nostall = 0;
}

if instance_exists(wren_yoyo){
    if wren_yoyo.state >= 10{
        move_cooldown[AT_DSPECIAL] = 45;
    }
}

switch(state){
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
		// Maybe Nerf if too crazy??
		if instance_exists(wren_yoyo){
		    if !was_parried and has_hit{
		        switch(attack){
		            /*case AT_JAB:
		                if window == 3 or window == 7 or window == 10{
		                    if special_pressed and wren_yoyo.state == 1{
		                        wren_yoyo.state = 3;
		                        wren_yoyo.state_timer = 0;
		                        move_cooldown[AT_NSPECIAL] = 15;
		                    }
		                }
		                break;*/
		            default:
		                if attack != AT_NSPECIAL and attack != AT_NSPECIAL_2 and attack != AT_FSPECIAL and attack != AT_DSPECIAL and attack != AT_DSPECIAL_2 and attack != AT_USPECIAL and attack != AT_USPECIAL_2{
		                    if special_pressed and joy_pad_idle and wren_yoyo.state == 1{
		                        wren_yoyo.state = 3;
		                        wren_yoyo.state_timer = 0;
		                        move_cooldown[AT_NSPECIAL] = 15;
		                    }
		                }
		                break;
		        }
		    }
		}
		break;
}

#endregion

#region // FTilt Wave
if !hitpause and !instance_exists(wren_wave) and wren_wave_cooldown != 0{
    wren_wave_cooldown--;
}
if instance_exists(wren_wave){
    wren_wave_cooldown = wren_wave_coolmax;
}
#endregion

#region // RIVALS 2 MODE
if wren_rivaltwo_mode{
	user_event(1);
}
#endregion

#region // Status
with(oPlayer){
    if other.id != id{
        
        if wren_stacks <= 0{
            wren_riptide_id = noone;
        }
        if wren_stacks > wren_stack_max{
            wren_stacks = wren_stack_max;
        }
        
        if wren_caught and wren_caught_cooldown == 0{
            hitstop = 2;
            hitpause = true;
            
            var _pointdir = point_direction(x, y, wren_riptide_id.x + (16 * wren_riptide_id.spr_dir), wren_riptide_id.y - 16);
            var _pullspd = 10;
            //print(string(wren_riptide_id));
            x += lengthdir_x(_pullspd, _pointdir);
            y += lengthdir_y(_pullspd, _pointdir);
        }
        
        if wren_riptide_id != noone{
            wren_riptide = true;
            
            switch(wren_riptide_id.state){
                case PS_ATTACK_AIR:
                case PS_ATTACK_GROUND:
                    switch(wren_riptide_id.attack){
                        case AT_DSPECIAL:
                        case AT_DSPECIAL_2:
                            switch(window){
                                case 3:
                                    wren_caught = false;
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            wren_riptide = false;
            wren_stacks = 0;
        }
        
        if !hitpause and wren_caught_cooldown != 0{
            wren_caught_cooldown--;
        }
        if wren_riptide{
            // Running down to the riptide...
            switch(state){
                case PS_DEAD:
                case PS_SPAWN:
                case PS_RESPAWN:
                    wren_riptide = false;
                    wren_riptide_id.wren_enemy_riptide_id = noone;
                    wren_riptide_id = noone;
                    wren_caught = false;
                    break;
                case PS_LAND:
                case PS_LANDING_LAG:
                case PS_HITSTUN_LAND:
                case PS_TECH_GROUND:
                case PS_TECH_BACKWARD:
                case PS_TECH_FORWARD:
                    wren_caught = false;
                    break;
                case PS_HITSTUN:
                    if last_player != wren_riptide_id.player{
                        // If a different player hit you, remove the caught status
                        wren_caught = false;
                    } else {
                        if last_attack != AT_DSPECIAL_2{
                            wren_caught = false;
                        }
                    }
                    break;
            }
            
        }
    }
}
#endregion

#region // Super Wavedash
switch(state){
    case PS_WAVELAND:
        switch(prev_state){
            case PS_AIR_DODGE:
                switch(prev_prev_state){
                    case PS_ATTACK_AIR:
                    case PS_ATTACK_GROUND:
                        switch(wren_prev_attack){
                            case AT_USPECIAL_2:
                                hsp += 1.5 * spr_dir;
                                break;
                        }
                        break;
                }
                break;
        }
        break;
}
#endregion