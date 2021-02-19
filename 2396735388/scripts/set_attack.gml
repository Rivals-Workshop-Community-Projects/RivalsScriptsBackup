//set_attack

var glide_move=false;

switch attack {
    case AT_TAUNT:
        if(up_down){
            clear_button_buffer(PC_TAUNT_PRESSED);
            glide_turn_method=!glide_turn_method;
            sound_play(asset_get("mfx_change_color"));
            set_state(PS_IDLE);
            var gcm_part = instance_create( x, y - char_height - 32, "obj_article1");
            gcm_part.sprite_index = sprite_get("glide_control_method_indicator");
            gcm_part.vsp = -5;
            gcm_part.visible = true;
            gcm_part.article_which = 1;
            gcm_part.image_index = glide_turn_method + 1;
        }
        reset_attack_value(AT_TAUNT, AG_NUM_WINDOWS);
        taunt_buffered = false;
    break;
    case AT_NAIR:
        glide_move=true;
        //starting_spr_angle=spr_angle;
        spr_angle=point_direction(0,0,hsp,vsp)+90-90*spr_dir;
    break;
    case AT_EXTRA_1:
        glide_move=true;
        
    break;
    case AT_FSPECIAL:
        if move_cooldown[AT_FSPECIAL] <= 0 {
            if free { attack = AT_FSPECIAL_AIR }
        }
        var fspec_fixed_speed = free || (abs(hsp)<8);
        set_window_value(attack, 2, AG_WINDOW_HSPEED, 3 + 5 * fspec_fixed_speed);
        set_window_value(attack, 2, AG_WINDOW_HSPEED_TYPE, fspec_fixed_speed);
        reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
        reset_attack_value(AT_FSPECIAL, AG_CATEGORY);
    break;
    case AT_USPECIAL:
        if !free { attack = AT_USPECIAL_GROUND }
        set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3 + 10 * free);
        set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3 + 10 * !free);
        if move_cooldown[AT_USPECIAL]<=0 {
            target_hsp = 7;
            target_vsp = -15;
            glide_energy = max(glide_energy_max / 2, glide_energy);
            set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
        }
    break;
    case AT_JAB:
        set_attack_value(AT_JAB, AG_OFF_LEDGE, 0);
        set_attack_value(AT_JAB, AG_CATEGORY, 0);
    break;
    default:
    break;
}

var strong_pressed_gog_dammit = up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed;

if(strong_pressed_gog_dammit){
    if free /*&& (!glided || from_glide)*/ {
        var successful_strong = false;
        switch attack{
            case AT_NAIR:
            case AT_FAIR:
                if can_fstrong {
                    attack = AT_FSTRONG;
                    successful_strong = true;
                    can_fstrong = false;
                }
            break;
            
            case AT_BAIR:
                if can_fstrong {
                    attack = AT_FSTRONG;
                    spr_dir *= -1;
                    successful_strong = true;
                    can_fstrong = false;
                }
            break;
            
            case AT_UAIR:
                if can_ustrong_air {
                    attack = AT_USTRONG;
                    successful_strong = true;
                    can_ustrong_air = false;
                }
            break;
            
            case AT_DAIR:
                attack = AT_DSTRONG;
                successful_strong = true;
            break;
            
            default:
            break;
        }
        if successful_strong {
            glide_move=true;
            spr_angle=point_direction(0,0,hsp,vsp)+90-90*spr_dir;
        }
    } else {
        switch attack {
            case AT_FSTRONG:
                attack = AT_FTILT;
            break;
            case AT_USTRONG:
                attack = AT_UTILT;
            break;
            case AT_DSTRONG:
                attack = AT_DTILT;
            break;
        }
    }
}

//print_debug(string(strong_pressed_gog_dammit));
//print_debug(string(can_ustrong_air));

if(!glide_move){
    spr_angle=0;
}

switch attack {
    case AT_DSTRONG:
    case AT_FSTRONG:
    case AT_USTRONG:
        var in_wind = false;
        with obj_article3 {
        	if player_id.url == other.url {
        		if is_horizontal {
        			if abs(y - (other.y-24)) < 40 && state == 1 {
        				in_wind = true;
        			}
        		} else {
        			if abs(x - other.x) < 40 && state == 1 {
        				in_wind = true;
        			}
        		}
        	}
        }
        strong_emp = in_wind;
        if strong_emp { strong_emp_noise = sound_play(asset_get("sfx_ori_sein_strong_start")); }
    break;
    default:
    break;
}