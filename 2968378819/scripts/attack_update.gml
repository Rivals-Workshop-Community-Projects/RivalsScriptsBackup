//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch attack{
    case AT_JAB:
        if has_rune("G"){
            if window % 3 == 1{
                has_hit = false;
            }
            if has_hit && special_pressed && window < 7{
                iasa_script();
            }
        }
    break;
    case AT_DTILT:
        if has_rune("A") && window == 2 && window_timer == 3 && state_timer < 15 && attack_down && abs(hsp) > 1{
			hsp *= 1.01;
			window_timer -= 1;
			with pHitBox if player == other.player && attack == AT_DTILT hitbox_timer -= 1;
		}
    break;
    case AT_UTILT:
        if window == 1{
            if uptilt_buffed{
                set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 10);
                set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 11);
                set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
                set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
                set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5);
                set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
                set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 12);
                set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .6);
                set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, get_player_color(player) == 19 || get_player_color(player) == 22 || get_player_name(player) == "TANIA"? sound_get("HitHardDBZ1"):sound_get("HitHard"));
                
                if window_timer == 2{
                    sound_play(asset_get("sfx_absa_whip"));
                }
            }
            else{
                set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
                set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 0);
                set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
                set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
                set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .6);
                set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
                set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 0);
                set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
                set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, get_player_color(player) == 19 || get_player_color(player) == 22 || get_player_name(player) == "TANIA"? sound_get("HitMedDBZ1"):sound_get("HitMed"));
            }
            attack_end();
        }
        if window == 3{
            uptilt_buffed = false;
        }
    break;
    
    case AT_DATTACK:
        if has_rune("B") && attack_down && window == 3 && window_timer == 9{
            attack_end();
            window_timer = 0;
        }
    break;
    
    case AT_FSTRONG:
        if has_rune("D"){
            set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 7 + (strong_charge / 7));
            set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3 + (strong_charge / 12));
        }
    break;
    
    case AT_FAIR:
        if has_rune("E") && window <= 2{
            hsp += 0.3 * spr_dir;
        }
    break;
    
    case AT_NSPECIAL:
        move_cooldown[AT_NSPECIAL] = 30;
    break;

    case AT_FSPECIAL:
        can_fast_fall = false;
        if (window == 1){
            if (window_timer == 1){
                was_grounded = free? 0:1;
                fspecial_used += 1;
            }
            if (window_timer == 14){
                y -= 1;
            }
            fspecial_direction = ((right_down - left_down) + 2) + (3 * (up_down - down_down + 1));
            if right_down - left_down != 0{
            	spr_dir = right_down - left_down;
            }
            switch fspecial_direction{
                case 8:
                    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
                break;
                case 7: case 9:
                    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 3);
                break;
                case 4: case 5: case 6:
                    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 4);
                break;
                case 1: case 3:
                    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 5);
                break;
                case 2:
                    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 6);
                break;
            }
        }
        
        if (has_hit){
            can_jump = true;
            can_shield = true;
        }
        
        if (window == 7){
			if has_hit{
				if special_down && !move_cooldown[AT_FSPECIAL]{
					window = 1;
					window_timer = 0;
					has_hit = false;
					attack_end();
				}
				else{
					attack_end();
					destroy_hitboxes();
					set_state(PS_IDLE_AIR);
					hsp *= 0.45;
					vsp *= 0.45;
				}
			}
            can_wall_jump = true;
            if window_timer = 12{
				if !has_rune("M"){
					state = PS_PRATFALL;
					hurtboxID.sprite_index = sprite_get("idle_hurtbox");
				}
				else{
					fspecial_used = 999;
				}
            }
            hsp *= 0.75;
            vsp *= 0.75;
        }
        
        if (window > 1  && window < 7 && !free){
            if has_hit{
                sound_play(asset_get("sfx_land_light"));
                attack_end();
                destroy_hitboxes();
                set_state(PS_IDLE);
            }
            else{
                sound_play(asset_get("sfx_land_med"));
                window = 8;
            	window_timer = 0;
            }
        }
        afterimage_timer = 1;
    break;

    case AT_DSPECIAL:
        can_fast_fall = false;
		if window < 5{
			set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, free? 0:1);
		}
        set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, free? 11:15);
    break;

    case AT_DSPECIAL_AIR:
        can_fast_fall = false;
        if (!free && window != 5){
            window = 5;
            window_timer = 0;
            attack_end();
            destroy_hitboxes();
        }
    break;

    case AT_USPECIAL:
        if (window == 3){
            can_wall_jump = true;
        }
        if has_rune("I"){
            if upspecial_charged{
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -14);
                for (var n = 0; n < 5; n++){
                    set_hitbox_value(AT_USPECIAL, n, HG_DAMAGE, 3);
                    set_hitbox_value(AT_USPECIAL, n, HG_BASE_KNOCKBACK, 15);
                    set_hitbox_value(AT_USPECIAL, n, HG_BASE_HITPAUSE, 5);
                    set_hitbox_value(AT_USPECIAL, n, HG_HIT_SFX, sound_get("HitMed"));
                }
                set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 12);
                set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 10);
                set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .9);
                set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 11);
                set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .9);
                set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("HitHard2"));
            }
            else{
                set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -11);
                for (var n = 0; n < 5; n++){
                    set_hitbox_value(AT_USPECIAL, n, HG_DAMAGE, 2);
                    set_hitbox_value(AT_USPECIAL, n, HG_BASE_KNOCKBACK, 11);
                    set_hitbox_value(AT_USPECIAL, n, HG_BASE_HITPAUSE, 4);
                    set_hitbox_value(AT_USPECIAL, n, HG_HIT_SFX, sound_get("HitLight"));
                }
                set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 8);
                set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .8);
                set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 9);
                set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .8);
                set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("HitHard"));
            }
        }
    break;

    case AT_TAUNT:
        if (window == 2 && state_timer > 42 && !taunt_down){
            window = 3;
            window_timer = 1;
        }
        if (window == 2 && state_timer%10 == 0){
            sound_play(asset_get("sfx_birdflap"));
        }
        if has_rune("J"){
            taunt_charge += 2;
        }
    break;
}