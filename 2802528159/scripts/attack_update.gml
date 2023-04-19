// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) && wall % 360 == 0{
    trigger_b_reverse();
}

switch(attack){
    case AT_EXTRA_1:
    if window_timer < 20 hud_offset = lerp(hud_offset, 3*10, 0.2);
    if(window_timer == 1 || window_timer == 21 || window_timer == 24) && !hitstop step_sound();
    if(window_timer == 30){
        soft_armor = 0;
        invincible = 0;
    }else{
        soft_armor = 999999;
        hsp = 0;
        vsp = 0;
        invincible = 0;
    }
    break;
    case AT_NSPECIAL:
    if window < 3 hud_offset = lerp(hud_offset, 3*20, 0.2);
    switch(window){
        case 1:
        if window_timer == 2 && !hitstop step_sound();
        break;
        case 2:
        hold++;
        if((!special_down && hold >= 4) || hold >= 60) && !hitstop{
            window = 3;
            window_timer = 0;
            step_sound();
            sound_play(asset_get("sfx_shovel_hit_heavy2"));
        }
        break;
        case 3:
        if(window_timer >= 21 && !instance_exists(grabp)){
            set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
            window = 6;
            window_timer = 0;
        }
        if(instance_exists(grabp)){
            grabp.spr_dir = -spr_dir;
            grab_angle -= (grab_angle != -90 * spr_dir? 15 * spr_dir: 0);
            grabp.x = x + 80 * spr_dir;
            grabp.y = y;
        }
        break;
        case 4:
        if window_timer == 1 && !hitstop step_sound();
        grabp.x = x + 80 * spr_dir;
        grabp.y = y;
        grabp.spr_dir = -spr_dir;
        grab_angle -= (grab_angle != -90 * spr_dir? 15 * spr_dir: 0);
        if window_timer == get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH) flash = spawn_dust_fx(x + 18 * spr_dir, y - 68, sprite_get("nspecial_flash"), 3);
        if !instance_exists(flash){
            if timingp == 0 && special_pressed timingp = 1;
            if timingo == 0 && grabp.shield_pressed timingo = 1;
        }
        if(instance_exists(flash)){
            if timingp == 0 && special_pressed timingp = 2;
            if timingo == 0 && grabp.shield_pressed timingo = 2;
            if(timingo == 2 && timingp < 2){
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab2"));
                timingt = -1;
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
            }else if(timingp == 2 && timingo < 2){
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab3"));
                timingt = 1;
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 40);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 20);
            }else if(timingp == 2 && timingo == 2){
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab1"));
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 9);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
            }else{
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab2"));
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
            }
        }
        break;
        case 5:
        if(instance_exists(flash)){
            if timingp == 0 && special_pressed timingp = 2;
            if timingo == 0 && grabp.shield_pressed timingo = 2;
            if(timingo == 2 && timingp < 2){
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab2"));
                timingt = -1;
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
            }else if(timingp == 2 && timingo < 2){
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab3"));
                timingt = 1;
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 40);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 20);
            }else if(timingp == 2 && timingo == 2){
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab1"));
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 9);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
            }else{
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab2"));
                set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
                set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
            }
        }
        if(window_timer < 4){
            grabp.x = x + 80 * spr_dir;
            grabp.y = y;
            grabp.spr_dir = -spr_dir;
            grab_angle -= (grab_angle != -90 * spr_dir? 15 * spr_dir: 0);
            if window_timer == 3{
                if(timingt == -1){
                    grabp.wrap_time = 0;
                    grabp.state = PS_PARRY;
                    grabp.perfect_dodging = 1;
                    grabp.state_timer = 0;
                }else{
                    grabp.invincible = 0;
                }
                if has_rune("L") timingt = 1;
                if timingt && instance_exists(grabp) && grabp.activated_kill_effect{
                	grabp.activated_kill_effect = 0;
                	hitstop = 69;
                	grabp.hitstop = 69;
                }
                if(timingt && hitstop == 5 && get_player_damage(grabp.player) >= (has_rune("L")? 0: 100)){
                	create_deathbox(floor(grabp.x), floor(grabp.y - grabp.char_height / 2), 20, 20, grabp.player, 1, 0, 10, 2);
                	grabp = noone;
                }
            }
        }else if(window_timer >= 4 && instance_exists(grabp)){
            if timingt != -1 grabp.state = PS_HITSTUN;
            grabp.visible = 1;
            grabp.spr_angle = 0;
            grabp.wrap_time = 0;
            grabp.invincible = 0;
            grabp.perfect_dodging = 0;
            grabp = noone;
        }
        if window_timer == 6 && !hitstop step_sound();
        break;
        case 6:
        if window_timer == 1 && !hitstop step_sound();
        break;
    }
    break;
    case AT_NSPECIAL_AIR:
    if (window == 1 && window_timer < 18) hud_offset = lerp(hud_offset, 3*20, 0.2);
    else if window < 4 hud_offset = lerp(hud_offset, 3*120, 0.4);
    switch(window){
        case 1:
        if window_timer == 2 && !hitstop step_sound();
        if(window_timer == 12 && !hitstop){
            sound_play(asset_get("sfx_swipe_heavy2"))
        }
        if(instance_exists(grabp)){
            set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 2);
            set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 6);
            grabp.spr_dir = -spr_dir;
            grabp.x = x + 80 * spr_dir;
            grabp.y = y;
        }
        break;
        case 3:
        grabp.x = x + 80 * spr_dir;
        grabp.y = y;
        if(!free){
            window = 4;
            window_timer = 0;
            step_sound();
        }
        break;
        case 4:
        grabp.x = x + 80 * spr_dir;
        grabp.y = y;
        break;
        case 5:
        grabp.x = x + 80 * spr_dir;
        grabp.y = y;
        if window_timer == get_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH) flash = spawn_dust_fx(x + 16 * spr_dir, y - 70, sprite_get("nspecial_flash"), 3);
        if !instance_exists(flash){
            if timingp == 0 && special_pressed timingp = 1;
            if timingo == 0 && grabp.shield_pressed timingo = 1;
        }
        if(instance_exists(flash)){
            if timingp == 0 && special_pressed timingp = 2;
            if timingo == 0 && grabp.shield_pressed timingo = 2;
            if(timingo == 2 && timingp < 2){
                set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab2"));
                timingt = -1;
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 4);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
            }else if(timingp == 2 && timingo < 2){
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab3"));
                timingt = 1;
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 40);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 20);
            }else if(timingp == 2 && timingo == 2){
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab1"));
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 9);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
            }else{
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab2"));
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 15);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
            }
        }
        break;
        case 6:
        if(instance_exists(flash)){
            if timingp == 0 && special_pressed timingp = 2;
            if timingo == 0 && grabp.shield_pressed timingo = 2;
            if(timingo == 2 && timingp < 2){
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab2"));
                timingt = -1;
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 4);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
            }else if(timingp == 2 && timingo < 2){
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab3"));
                timingt = 1;
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 40);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 20);
            }else if(timingp == 2 && timingo == 2){
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab1"));
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 9);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
            }else{
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab2"));
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 15);
                set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
            }
        }
        if(window_timer < 4){
            grabp.x = x + 80 * spr_dir;
            grabp.y = y;
            if window_timer == 3{
                if(timingt == -1){
                    grabp.wrap_time = 0;
                    grabp.state = PS_PARRY;
                    grabp.perfect_dodging = 1;
                    grabp.state_timer = 0;
                }else{
                    grabp.invincible = 0;
                }
                if has_rune("L") timingt = 1;
                if(timingt && hitstop == 5 && get_player_damage(grabp.player) >= (has_rune("L")? 0: 100)){
                	create_deathbox(floor(grabp.x), floor(grabp.y - grabp.char_height / 2), 20, 20, grabp.player, 1, 0, 10, 2);
                	grabp = noone;
                }
            }
        }else if(window_timer >= 4 && instance_exists(grabp)){
            if timingt != -1 grabp.state = PS_HITSTUN;
            grabp.visible = 1;
            grabp.wrap_time = 0;
            grabp.perfect_dodging = 0;
            grabp.invincible = 0;
            grabp = noone;
        }
        break;
    }
    break;
    case AT_FSPECIAL:
    if window < 3 hud_offset = lerp(hud_offset, 3*30, 0.2);
    if has_hit move_cooldown[AT_FSPECIAL] = (has_rune("M")? 0: 260);
    else move_cooldown[AT_FSPECIAL] = (has_rune("M")? 0: 200);
    switch(window){
        case 1:
        if window_timer == 1 && !hitstop step_sound();
        break;
        case 3:
        if window_timer == 9 && !hitstop step_sound();
        break;
    }
    break;
    case AT_FSPECIAL_AIR:
    if window_timer == 6 && window == 1 && !hitstop step_sound();
    if has_hit move_cooldown[AT_FSPECIAL] = (has_rune("M")? 0: 260);
    else move_cooldown[AT_FSPECIAL] = (has_rune("M")? 0: 200);
    break;
    case AT_DSPECIAL:
    if window <= 3 hud_offset = lerp(hud_offset, 3*40, 0.2);
    switch(window){
        case 1:
        if window_timer == 1 && !hitstop step_sound();
        if orb_lv {
            window = 4;
            window_timer = 0;
        }
        break;
        case 2:
        orb_lv = floor(window_timer / 40) + 1;
        if !special_down{
            window = 5;
            window_timer = 0;
        }
        break;
        case 3:
        if !special_down{
            window = 5;
            window_timer = 0;
        }
        break;
        case 4:
        move_cooldown[AT_DSPECIAL] = (has_rune("M")? 0: 200);
        break;
        case 5:
        if window_timer == 2 && !hitstop step_sound();
        break;
    }
    break;
    case AT_DSPECIAL_AIR:
    attack_end();
    if has_hit move_cooldown[AT_DSPECIAL] = (has_rune("M")? 0: 220);
    else move_cooldown[AT_DSPECIAL] = (has_rune("M")? 0: 180);
    switch(window){
        case 1:
        if window_timer == 1 && !hitstop step_sound();
        break;
        case 3:
        if window_timer == 9 && !hitstop step_sound();
        break;
    }
    break;
    case AT_TAUNT:
	if window < 6 hud_offset = lerp(hud_offset, 3*30, 0.6);
	mask_index = sprite_get("taunt_box");
	switch(window){
        case 1:
        if window_timer == 1 && !hitstop{
            step_sound();
            if aware < 2 sound_play(sound_get("beep"), 1, 0, 100);
        }
        break;
        case 2:
        if(right_down){
			window = 3.5 + 0.5 * -spr_dir;
			window_timer = 0;
		}
		if(left_down){
			window = 3.5 + 0.5 * spr_dir;
			window_timer = 0;
		}
		if special_pressed{
            window = 5;
            window_timer = 0;
        }
        if taunt_pressed{
            window = 6;
            window_timer = 0;
        }
        break;
        case 3:
        if(window_timer <= 12 || (window_timer >= 24 && window_timer <= 48) || window_timer >= 57){
			hsp = 3 * spr_dir;
		}
		if(spr_dir == 1 && !right_down) || (spr_dir == -1 && !left_down){
			window = 2;
			window_timer = 0;
		}
		if(window_timer == 12 || window_timer == 48){
            step_sound();
        }
        if special_pressed{
            window = 5;
            window_timer = 0;
            sound_stop(sound_get("beep"));
        }
        if taunt_pressed{
            window = 6;
            window_timer = 0;
        }
        break;
        case 4:
        if window_timer == 1 && !hitstop step_sound();
        if window_timer == 25 && !hitstop{
            x -= 110 * spr_dir;
            spr_dir *= -1;
            window = 2;
            window_timer = 0;
        }
        break;
        case 5:
        if(window_timer == 20){
        	mask_index = sprite_get("def_mask");
            set_attack(AT_NSPECIAL);
            step_sound();
            window = 2;
        }
        break;
        case 6:
        mask_index = sprite_get("def_mask");
        sound_stop(sound_get("beep"));
        if(window_timer == 12 && !hitstop){
            step_sound();
        }
        break;
	}
	break;
	case AT_FTHROW:
	move_cooldown[AT_NAIR] = 10;
	move_cooldown[AT_FAIR] = 10;
	move_cooldown[AT_UAIR] = 10;
	move_cooldown[AT_BAIR] = 10;
	move_cooldown[AT_DAIR] = 10;
	move_cooldown[AT_NSPECIAL] = 10;
	move_cooldown[AT_FSPECIAL] = 80;
	move_cooldown[AT_DSPECIAL] = 80;
	move_cooldown[AT_USPECIAL] = 30;
	can_move = 0;
	can_fast_fall = 0;
	if !(window_timer % 10) && !hitstop step_sound();
	mask_index = sprite_get("climb_box");
	gravity_speed = 0;
	wall_cool = 20;
	switch(wall % 360){
		case 0:
		if window_timer % 3 == 0{
			if(window_timer < 12){
				hsp = 30 * spr_dir
				vsp = 0;
			}else{
				vsp = -16;
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if(window_timer = 30 && !hitstop){
			wall += 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			vsp = 0;
		}
		break;
		case 90:
		if window_timer % 3 == 0{
			if(window_timer < 12){
				vsp = -30 * spr_dir
				hsp = 0;
			}else{
				hsp = -16;
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if(window_timer = 30 && !hitstop){
			wall += 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			hsp = 0;
		}
		break;
		case 180:
		if window_timer % 3 == 0{
			if(window_timer < 12){
				hsp = -30 * spr_dir
				vsp = 0;
			}else{
				vsp = 16
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if(window_timer = 30 && !hitstop){
			wall += 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			vsp = 0;
		}
		break;
		case 270:
		if window_timer % 3 == 0{
			if(window_timer < 12){
				vsp = 30 * spr_dir
				hsp = 0;
			}else{
				hsp = 16;
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if(window_timer = 30 && !hitstop){
			wall += 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			hsp = 0;
		}
		break;
	}
	break;
	case AT_UTHROW:
	if(window_timer == 1 || window_timer == 21 || window_timer == 24) && !hitstop step_sound();
	if window_timer < 20 hud_offset = lerp(hud_offset, 3*10, 0.2);
    break;
    case AT_NAIR:
    if (window == 1 || window == 4) && window_timer == 1 && !hitstop step_sound();
    if window >= 3 hud_offset = lerp(hud_offset, 3*20, 0.2);
    break;
    case AT_FAIR:
    if (window == 1 || window == 3) && window_timer == 1 && !hitstop step_sound();
    break;
    case AT_UAIR:
    if (window == 1 || window == 3) && window_timer == 1 && !hitstop step_sound();
    if (window < 3 || (window == 3 && window_timer < 7)) hud_offset = lerp(hud_offset, 3*100, 0.2);
    break;
    case AT_BAIR:
    if (window == 1 || window == 3) && window_timer == 1 && !hitstop step_sound();
    if window == 1 hud_offset = lerp(hud_offset, 3*20, 0.2);
    break;
    case AT_DAIR:
    if window <= 2 hud_offset = lerp(hud_offset, 3*20, 0.2);
    if (window == 1 && window_timer == 1) || (window == 2 && window_timer = 7) || (window == 4 && window_timer = 1) && !hitstop step_sound();
    break;
	case AT_UTILT:
	if has_hit && special_pressed && wall % 360 == 0 set_attack(AT_NSPECIAL);
	if (window == 1 || window == 3) && window_timer == 3 && !hitstop step_sound();
	if (window < 3 || (window == 3 && window_timer < 6)) && wall % 360 == 0 hud_offset = lerp(hud_offset, 3*60, 0.2);
	break;
	case AT_DTILT:
	if has_hit && special_pressed && wall % 360 == 0 set_attack(AT_NSPECIAL);
	if window < 3 && wall % 360 == 0 hud_offset = lerp(hud_offset, 3*50, 0.2);
	if window == 1 && window_timer == 1 && !hitstop step_sound();
	if window == 1 && window_timer == 10 && !hitstop{
		switch(wall % 360){
			case 0:
			if (collision_rectangle(x + 32 * spr_dir, y, x + 80 * spr_dir, y + 4, asset_get("par_block"), 1, 1) || collision_rectangle(x + 32, y, x + 80, y + 4, asset_get("par_jumpthrough"), 1, 1)){
				sound_play(asset_get("sfx_shovel_hit_heavy2"));
			}
			break;
			case 90:
			if (collision_rectangle(x, y - 32 * spr_dir, x + 4, y - 80 * spr_dir, asset_get("par_block"), 1, 1) || collision_rectangle(x, y - 32 * spr_dir, x + 4, y - 80 * spr_dir, asset_get("par_jumpthrough"), 1, 1)){
				sound_play(asset_get("sfx_shovel_hit_heavy2"));
			}
			break;
			case 180:
			if (collision_rectangle(x - 32 * spr_dir, y, x - 80 * spr_dir, y - 4, asset_get("par_block"), 1, 1) || collision_rectangle(x - 32 * spr_dir, y, x - 80 * spr_dir, y - 4, asset_get("par_jumpthrough"), 1, 1)){
				sound_play(asset_get("sfx_shovel_hit_heavy2"));
			}
			break;
			case 270:
			if (collision_rectangle(x, y + 32 * spr_dir, x - 4, y + 80 * spr_dir, asset_get("par_block"), 1, 1) || collision_rectangle(x, y + 32 * spr_dir, x - 4, y + 80 * spr_dir, asset_get("par_jumpthrough"), 1, 1)){
				sound_play(asset_get("sfx_shovel_hit_heavy2"));
			}
			break;
		}
	}
	break;
	case AT_FTILT:
	if (window == 2 && window_timer == 10) {
		window = 4
		window_timer = 0;
	}
	if (window == 1 || window == 4) && window_timer == 1 && !hitstop step_sound();
	if has_hit && special_pressed && wall % 360 == 0 set_attack(AT_NSPECIAL);
	break;
	case AT_DSTRONG:
	if (window == 1 || (window == 2 && window_timer < 4)) && wall % 360 == 0 hud_offset = lerp(hud_offset, 3*50, 0.2);
	if window == 2 && window_timer == 2 && !hitstop sound_play(asset_get("sfx_shovel_hit_heavy2"));
	if ((window == 1 && window_timer == 1) || (window == 2 && window_timer == 12)) && !hitstop step_sound();
	break;
	case AT_FSTRONG:
	if (window == 1 && window_timer == 1) || (window == 3 && window_timer == 12) && !hitstop step_sound();
	break;
	case AT_USTRONG:
	if window_timer == 1 && !hitstop step_sound();
	if window == 2 && wall % 360 == 0 hud_offset = lerp(hud_offset, 3*40, 0.4);
    if window == 3 && (has_hit? window_timer == 12: window_timer == 18) && !hitstop{
    	spr_dir = -spr_dir;
    	og_dir = spr_dir;
    }
    if(window == 2){
    	switch(wall % 360){
    		case 0:
    		hsp = 5 * spr_dir;
    		break;
    		case 90:
    		vsp = -5 * spr_dir;
    		break;
    		case 180:
    		hsp = -5 * spr_dir;
    		break;
    		case 270:
    		vsp = 5 * spr_dir;
    		break;
    	}
    }else{
    	hsp = 0;
    	vsp = 0;
    }
	break;
	case AT_JAB:
	move_cooldown[AT_JAB] = 20;
	if window == 5 && attack_down set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 9);
	else set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
	if (window == 1 || window == 3 || window == 5 || window == 6) && window_timer == 1 && !hitstop step_sound();
	if has_hit && special_pressed && wall % 360 == 0 set_attack(AT_NSPECIAL);
	break;
	case AT_DATTACK:
	if has_hit && special_pressed && wall % 360 == 0 set_attack(AT_NSPECIAL);
	break;
	case AT_FSTRONG_2:
	if move_cooldown[AT_USPECIAL] < 90 move_cooldown[AT_USPECIAL] = 0
	if window_timer % 15 == 1 && !hitstop step_sound();
	can_fast_fall = 0;
	can_move = 0;
	if(window_timer >= 16 && window_timer < 30){
		if window_timer <= 18 hsp = 50/3 * -spr_dir;
		else hsp = 12 * -spr_dir;
		if(window_timer >= 20){
			image_angle = 0;
			if window_timer == 20 vsp = -7;
		}
	}else if window_timer == 30{
		hsp = 6 * -spr_dir;
		spr_dir = -spr_dir;
		image_angle = 0;
		djumps = 0;
	}else{
		hsp = 0;
		vsp = 0;
	}
	break;
	case AT_USTRONG_2:
	if move_cooldown[AT_USPECIAL] < 90 move_cooldown[AT_USPECIAL] = 0
	if window_timer % 8 == 1 && !hitstop step_sound();
	can_fast_fall = 0;
	can_move = 0;
	djumps = 1;
	if window_timer <= 3 vsp = 25/3;
	else vsp = 36/3;
	if window_timer >= 9 image_angle = 0;
	if window_timer >= 15{
		djumps = 0;
		vsp = 5;
	}
	break;
	case AT_USPECIAL:
	if window_timer == 1 && !hitstop step_sound();
	move_cooldown[AT_USPECIAL] = 100;
	can_move = 0;
	can_fast_fall = 0;
	switch(window){
		case 1:
		if usp_ch && window_timer == 10 shake_camera(10, 35);
		break;
		case 2:
		usp_dir = floor((floor((joy_dir + (spr_dir? 0: 180))/22.5)%16)/2 + .5)%8;
		univ_dir = (usp_dir + (spr_dir? 0: 12))%8;
		break;
		case 3:
		hsp = 0;
		vsp = 0;
		if window_timer = 3{
			draw_y = -34;
			spr_angle = 45 * usp_dir;
			fall_through = true;
			if !hitstop hsp = (usp_ch? 35: 25) * cos(degtorad(45 * univ_dir));
			else hsp = 0;
			if !hitstop vsp = (usp_ch? -35: -25) * sin(degtorad(45 * univ_dir));
			else vsp = 0;
			mask_index = sprite_get("usp_box");
			if univ_dir < 4 && univ_dir image_angle = 90;
			else image_angle = 0;
		}
		break;
		case 4:
		fall_through = true;
		if window_timer < 18 {
			spr_angle = 45 * usp_dir;
			if !hitstop hsp = (usp_ch? 35: 25) * cos(degtorad(45 * univ_dir));
			else hsp = 0;
			if !hitstop vsp = (usp_ch? -35: -25) * sin(degtorad(45 * univ_dir));
			else vsp = 0;
		}else{
			draw_y = 0;
			spr_angle = 0;
			image_angle = 0;
			usp_ch = 0;
			init_shader();
		}
		switch(univ_dir){
			case 0:
			if spr_dir sprite_change_offset("usp_box", 1, 2);
			else sprite_change_offset("usp_box", 0, 2);
			if(collision_rectangle(x, y - 1, x, y - 30, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 90;
				spr_angle = 90;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
			}
			break;
			case 1:
			if spr_dir sprite_change_offset("usp_box", 1, 2);
			else sprite_change_offset("usp_box", 0, 2);
			if(collision_rectangle(x - 1, y + 1, x, y, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 90;
				spr_angle = 90;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			if(collision_rectangle(x - 2, y, x - 30, y - 1, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 180;
				spr_angle = 180;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			break;
			case 2:
			if spr_dir sprite_change_offset("usp_box", 1, 2);
			else sprite_change_offset("usp_box", 0, 0);
			if(collision_rectangle(x - 29 * spr_dir, y, x + 30 * spr_dir, y - 1, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 180;
				spr_angle = 180;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
			}
			break;
			case 3:
			if -spr_dir sprite_change_offset("usp_box", 0, 2);
			else sprite_change_offset("usp_box", 1, 2);
			if(collision_rectangle(x - 3, y + 1, x - 1, y, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 270;
				spr_angle = 270;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			if(collision_rectangle(x, y, x + 30, y - 1, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 180;
				spr_angle = 180;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			break;
			case 4:
			if -spr_dir sprite_change_offset("usp_box", 1, 2);
			else sprite_change_offset("usp_box", 0, 2);
			if(collision_rectangle(x, y - 1, x - 1, y - 60, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 270;
				spr_angle = 270;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
			}
			break;
			case 5:
			if -spr_dir sprite_change_offset("usp_box", 1, 2);
			else sprite_change_offset("usp_box", 0, 2);
			if(collision_rectangle(x - 1, y - 1, x, y - 64, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 270;
				spr_angle = 270;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			if(collision_rectangle(x + 1, y, x + 30, y - 1, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 0;
				spr_angle = 0;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			break;
			case 6:
			if -spr_dir sprite_change_offset("usp_box", 1, 2);
			else sprite_change_offset("usp_box", 0, 2);
			if(collision_rectangle(x - 29 * spr_dir, y, x + 30 * spr_dir, y, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 0;
				spr_angle = 0;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
			}
			break;
			case 7:
			if spr_dir sprite_change_offset("usp_box", 1, 2);
			else sprite_change_offset("usp_box", 0, 2);
			if(collision_rectangle(x - 1, y - 1, x, y - 64, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 90;
				spr_angle = 90;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			if(collision_rectangle(x - 1, y, x - 30, y - 1, asset_get("par_block"), 1, 1)){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
				destroy_hitboxes();
				draw_y = 0;
				usp_ch = 0;
				init_shader();
				wall = 0;
				spr_angle = 0;
				image_angle = wall;
				mask_index = sprite_get("def_mask");
				window = 5;
				window_timer = 0;
				break;
			}
			break;
		}
		break;
		case 5:
		draw_y = 0;
		spr_angle = wall % 360;
		mask_index = sprite_get("def_mask");
		break;
		case 6:
		spr_angle = 0;
		mask_index = sprite_get("def_mask");
		break;
	}
	break;
	case AT_DATTACK:
	if window < 3 && !window_timer % 8 step_sound();
	if window == 1 && window_timer == 18 sound_play(sound_get("boost_run"));
	if window == 2{
		attack_end();
		if !attack_down{
			state = PS_DASH;
			state_timer = 0;
			sound_stop(sound_get("boost_run"));
			sound_play(sound_get("boost_endspark"));
			move_cooldown[AT_DATTACK] = 30;
		}
		if down_pressed{
			window = 3;
			window_timer = 0;
			usp_ch = 300;
			step_sound();
			sound_stop(sound_get("boost_run"));
		}
	}
	break;
	case AT_DTHROW:
	move_cooldown[AT_NAIR] = 10;
	move_cooldown[AT_FAIR] = 10;
	move_cooldown[AT_UAIR] = 10;
	move_cooldown[AT_BAIR] = 10;
	move_cooldown[AT_DAIR] = 10;
	move_cooldown[AT_NSPECIAL] = 10;
	move_cooldown[AT_FSPECIAL] = 80;
	move_cooldown[AT_DSPECIAL] = 80;
	move_cooldown[AT_USPECIAL] = 30;
	can_move = 0;
	can_fast_fall = 0;
	if !(window_timer % 10) && !hitstop step_sound();
	mask_index = sprite_get("climb_box2");
	gravity_speed = 0;
	wall_cool = 20;
	switch(wall % 360){
		case 0:
		if window_timer % 3 == 0{
			if(window_timer < 15){
				if collision_line(x - (spr_dir? 0: 1), y, x - (spr_dir? 1: 2), y + 4, asset_get("par_block"), 1, 1) hsp = 23 * spr_dir
				else hsp = 0;
				vsp = 0;
			}else{
				vsp = 18;
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if window_timer > 18 hsp = -30 * spr_dir;
		if(window_timer = 30 && !hitstop){
			wall -= 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			vsp = 0;
			hsp = 0;
		}
		break;
		case 90:
		if window_timer % 3 == 0{
			if(window_timer < 15){
				if collision_line(x - 1, y - (spr_dir? 1: 0), x + 4, y - (spr_dir? 1: 0), asset_get("par_block"), 1, 1) vsp = -23 * spr_dir
				else vsp = 0;
				hsp = 0;
			}else{
				hsp = 18;
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if window_timer > 18 vsp = 30 * spr_dir;
		if(window_timer = 30 && !hitstop){
			wall -= 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			vsp = 0;
			hsp = 0;
		}
		break;
		case 180:
		if window_timer % 3 == 0{
			if(window_timer < 15){
				if collision_line(x - (spr_dir? 2: 0), y - 1, x - (spr_dir? 1: 1), y - 4, asset_get("par_block"), 1, 1) hsp = -23 * spr_dir
				else hsp = 0;
				vsp = 0;
			}else{
				vsp = -18;
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if window_timer > 18 hsp = 30 * spr_dir;
		if(window_timer = 30 && !hitstop){
			wall -= 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			vsp = 0;
			hsp = 0;
		}
		break;
		case 270:
		if window_timer % 3 == 0{
			if(window_timer < 15){
				if collision_line(x + 1, y + (spr_dir? 0: -1), x - 4, y + (spr_dir? 0: -1), asset_get("par_block"), 1, 1) vsp = 23 * spr_dir
				else vsp = 0;
				hsp = 0;
			}else{
				hsp = -18;
			}
		}else{
			hsp = 0;
			vsp = 0;
		}
		if window_timer > 18 vsp = -30 * spr_dir;
		if(window_timer = 30 && !hitstop){
			wall -= 90 * spr_dir;
			wall += 360;
			image_angle = wall;
			mask_index = sprite_get("def_mask");
			vsp = 0;
			hsp = 0;
		}
		break;
	}
	break;
	case AT_TAUNT_2:
	move_cooldown[AT_TAUNT_2] = 30;
	if !hitstop{
	switch window{
		case 1:
		if window_timer > 10 shut_light = 1;
		else shut_light = floor(window_timer/2) % 2;
		init_shader();
		break;
		case 2:
		page_lockout -= page_lockout > 0;
		if !page_lockout && intro_played{
			if right_down{
				page_lockout = 15;
				page_alpha = 0;
				page += (page == page_num? -page: 1);
				page_anim_timer = 0;
				sound_play(sound_get("page_scroll"));
			}
			if left_down{
				page_lockout = 15;
				page_alpha = 0;
				page -= (page == 0? -page_num: 1);
				page_anim_timer = 0;
				sound_play(sound_get("page_scroll"));
			}
		}
		if taunt_down{
			window = 3;
			window_timer = 0;
			menu_open = 0;
			shut_light = 0;
			intro_timer = 0;
			intro_played = 0;
			sound_play(sound_get("page_close"));
			sound_stop(jingle);
		}
		break;
		case 3:
		intro_timer = 0;
		intro_played = 0;
		if window_timer > 10 shut_light = 0;
		else shut_light = floor(window_timer/2) % 2;
		init_shader();
		break;
	}
	}
	break;
}
if hitstop{
	hsp = 0;
	vsp = 0;
}

#define step_sound()
{
sound_play(sound_get(string(random_func_2(floor(abs(x % 200)), 6, 1)) + "_step"), 0, 0, 0.6);
};