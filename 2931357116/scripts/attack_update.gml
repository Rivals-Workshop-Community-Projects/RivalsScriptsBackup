// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    case AT_DTILT:
    switch form{
        case 0:
        if has_hit && jump_pressed && !hitstop{
            iasa_script();
        }
        break;
        case 1:
        if has_hit && window >= 5 && jump_pressed && !hitstop{
            iasa_script();
        }
        break;
        case 2:
        if has_hit && window == 8 && window_timer >= 3 && jump_pressed && !hitstop{
            iasa_script();
        }
        break;
        case 3:
        if window == 10 hud_offset = floor(lerp(hud_offset, 50, 0.2));
        if window == 9 && window_timer >= 10 && window_timer <= 17 hsp = 7*spr_dir;
        if window == 10 && window_timer == 10{
             if hitstop{
                old_hsp = 6*spr_dir;
                old_vsp = -8;
             }else{
                hsp = 6*spr_dir;
                vsp = -8;
            }
        }
        if window == 11 && window_timer >= 5 && has_hit iasa_script();
        break;
        case 4:
        if window == 12 && window_timer == 9 sound_play(sound_get("OB_swipeweak2"));
        if ((window == 12 && window_timer >= 14) || window == 13) && has_hit && jump_pressed iasa_script();
        break;
    }
    break;
    case AT_UTILT:
    switch form{
        case 0:
        if has_hit && jump_pressed && !hitstop{
            iasa_script();
        }
        hud_offset = floor(lerp(hud_offset, 130, 0.2));
        break;
        case 1:
        if has_hit && jump_pressed && window == 6 && window_timer >= 5 && !hitstop{
            iasa_script();
        }
        hud_offset = floor(lerp(hud_offset, 160, 0.2));
        break;
        case 2:
        if (window == 7 && window_timer >= 10) || window == 8 hud_offset = floor(lerp(hud_offset, 120, 0.2));
        break;
        case 3:
        if !hitstop && (window == 11 && window_timer == 9) || (window == 10 && window_timer == 10) vsp -= 7;
        if window <= 11 && (window == 10? window_timer >= 8: 1) hud_offset = floor(lerp(hud_offset, 130, 0.2));
        break;
        case 4:
        hud_offset = floor(lerp(hud_offset, 220, 0.2));
        if jump_pressed && has_hit && window == 15 iasa_script();
        break;
    }
    break;
    case AT_FTILT:
    switch form{
        case 0:
        if window >= 2 hud_offset = floor(lerp(hud_offset, 80, 0.2));
        break;
        case 1:
        if has_hit && window == 6 && window_timer >= 10 && !hitstop{
            iasa_script();
        }
        if window >= 5 hud_offset = floor(lerp(hud_offset, 80, 0.2));
        break;
        case 2:
        if enhance move_cooldown[AT_FTILT] = 20;
        if image_index <= 9 hud_offset = floor(lerp(hud_offset, 50, 0.2));
        break;
        case 3:
        if window == 10 && window_timer == 9 hsp = 6*spr_dir;
        if window == 11 && window_timer == 14{
            hsp = 6*spr_dir;
            vsp = -8;
        }
        if window == 12 && window_timer >= 5 && has_hit iasa_script();
        break;
        case 4:
        if window == 13{
            if window_timer == 6{
                sound_play(sound_get("OK_swipeweak1"), 0, noone, 1, .9);
                sound_play(sound_get("OB_swipeweak1"), 0, noone, 1, .8);
            }
            if window_timer == 15 sound_play(sound_get("OK_swipeweak2"), 0, noone, 1, .9);
            if window_timer == 22 sound_play(sound_get("OB_swipeweak2"), 0, noone, 1, .8);
            if window_timer == 28 sound_play(sound_get("OK_swipemedium1"), 0, noone, 1, .8);
        }
        break;
    }
    break;
    case AT_JAB:
    switch form{
        case 0:
        if window == 2 && attack_pressed{
            if joy_pad_idle{
                window = 4;
                window_timer = 0;
                hsp = 6 * spr_dir;
            }else iasa_script();
        }
        if window == 3 && window_timer == 6{
            state = PS_IDLE;
            state_timer = 0;
        }
        break;
        case 1:
        if window_timer == 10 && window == 13{
            sound_play(asset_get("sfx_swipe_medium2"));
        }
        break;
        case 2:
        if (window_timer <= 12 && window == 18)|| window == 17 hud_offset = floor(lerp(hud_offset, 80, 0.2));
        break;
        case 3:
        if window <= 20 && window_timer <= 12 hud_offset = floor(lerp(hud_offset, 60, 0.2));
        else if window <= 22 && window_timer <= 15 hud_offset = floor(lerp(hud_offset, 80, 0.2));
        else if window <= 23 && window_timer <= 13 hud_offset = floor(lerp(hud_offset, 110, 0.2));
        if !hitstop && window == 23 && window_timer == 10 vsp = -8;
        break;
        case 4:
        move_cooldown[AT_JAB] = 17;
        hud_offset = floor(lerp(hud_offset, 100, 0.2));
        if ((window == 24 && window_timer >= 11) || window >= 25 || (window == 28 && window_timer < 8)) && !hitstop hsp = 2.5*spr_dir;
        if window == 28 && window_timer >= 10 hsp *= 0.7;
        break;
    }
    break;
    case AT_DSTRONG:
    switch form{
        case 0:
        if window == 2 && window_timer == 4 sound_play(sound_get("KB_hitmedium2"));
        break;
        case 1:
        can_move = 0;
        if window == 5 && window_timer >= 7 && free window_timer = 7;
        if window == 5 || (window == 6 && window_timer < 11) hud_offset = floor(lerp(hud_offset, 150, 0.2));
        break;
        case 2:
        if has_hit && window == 10 && enhance && window_timer >= 7 iasa_script();
        break;
        case 3:
        if vsp >= fast_fall ffall = 1;
        if window == 11 vsp = clamp(vsp, vsp, (ffall? fast_fall: 2));
        break;
    }
    break;
    case AT_USTRONG:
    switch form{
        case 0:
        if window == 2 hud_offset = floor(lerp(hud_offset, 190, 0.2));
        break;
        case 1:
        if window == 5 && window_timer == 5 sound_play(sound_get("OK_swipemedium1"));
        if window == 5 hud_offset = floor(lerp(hud_offset, 110, 0.2));
        break;
        case 2:
        if enhance move_cooldown[AT_USTRONG] = 20;
        if window == 8 && window_timer == 10 sound_play(sound_get("wisdom_jab_finisher"));
        if window >= 8 hud_offset = floor(lerp(hud_offset, 260, 0.2));
        break;
        case 3:
        if vsp >= fast_fall ffall = 1;
        if window == 10 vsp = clamp(vsp, vsp, (ffall? fast_fall: 2));
        if window == 12 && window_timer == 13 sound_play(asset_get("sfx_swipe_heavy2"));
        if window < 13 hud_offset = floor(lerp(hud_offset, 120, 0.2));
        break;
        case 4:
        if window == 15 hud_offset = floor(lerp(hud_offset, 150, 0.2));
        if window == 15 && window_timer == 2{
            sound_play(sound_get("OK_swipemedium1"), 0, noone, 1, 0.95);
            sound_play(sound_get("OB_swipemedium1"), 0, noone, 1, 0.95);
        }
        break;
    }
    break;
    case AT_FSTRONG:
    switch form{
        case 0:
        hud_offset = floor(lerp(hud_offset, 90, 0.2));
        break;
        case 2:
        if window >= 11 hud_offset = floor(lerp(hud_offset, 95, 0.2));
        break;
        case 3:
        if vsp >= fast_fall ffall = 1;
        if window == 13 vsp = clamp(vsp, vsp, (ffall? fast_fall: 2));
        if window == 15 && window_timer = 13 sound_play(sound_get("OB_swipemedium1"), 0, noone, 1, 0.8);
        break;
        case 4:
        if window <= 17 hud_offset = floor(lerp(hud_offset, 120, 0.2));
        else hud_offset = floor(lerp(hud_offset, 40, 0.2));
        break;
    }
    break;
    case AT_DATTACK:
    switch form{
        case 0:
        if window == 3 && window_timer >= 5 hud_offset = floor(lerp(hud_offset, 30, 0.2));
        break;
        case 1:
        if window == 5 && window_timer == 5 sound_play(sound_get("OK_swipeweak1"));
        if window == 7 && window_timer == 5 sound_play(sound_get("OK_swipeweak2"));
        break;
        case 2:
        if enhance move_cooldown[AT_DATTACK] = 10;
        break;
        case 3:
        hud_offset = floor(lerp(hud_offset, 70, 0.2));
        if window == 12 && window_timer == 18 sound_play(asset_get("sfx_swipe_medium1"));
        if window == 14 && has_hit iasa_script();
        break;
    }
    break;
    case AT_NAIR:
    switch form{
        case 0:
        hud_offset = floor(lerp(hud_offset, 60, 0.2));
        break;
        case 1:
        if has_hit && window == 6 && (jump_pressed || attack_pressed || special_pressed){
            iasa_script();
        }
        if window < 5 hud_offset = floor(lerp(hud_offset, 90, 0.2));
        break;
        case 3:
        move_cooldown[AT_NAIR] = 5;
        break;
        case 4:
        if float_time <= 0 && is_floating && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) + has_hit*5 is_floating = 0;
        if vsp >= fast_fall ffall = 1;
        if window == 15 vsp = clamp(vsp, vsp, (ffall? fast_fall: 2));
        if window == 15 && window_timer == 32 sound_play(sound_get("OB_swipemedium1"));
        if window >= 15 || (window == 15 && window_timer >= 30) hud_offset = floor(lerp(hud_offset, 90, 0.2));
        break;
    }
    break;
    case AT_FAIR:
    switch form{
        case 0:
        hud_offset = floor(lerp(hud_offset, 100, 0.2));
        break;
        case 1:
        if has_hit && window == 6 && (jump_pressed || attack_pressed || special_pressed){
            iasa_script();
        }
        hud_offset = floor(lerp(hud_offset, 100, 0.2));
        break;
        case 4:
        if float_time <= 0 && is_floating && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) + has_hit*5 is_floating = 0;
        if vsp >= fast_fall ffall = 1;
        if vsp >= fast_fall ffall = 1;
        if window <= 12 vsp = clamp(vsp, vsp, (ffall? fast_fall: 2));
        if window <= 12 hud_offset = floor(lerp(hud_offset, 120, 0.2));
        break;
    }
    break;
    case AT_BAIR:
    switch form{
        case 1:
        if has_hit && window == 5 && (jump_pressed || attack_pressed || special_pressed){
            iasa_script();
        }
        break;
        case 4:
        if window == 9 && window_timer == 11 sound_play(sound_get("OB_swipemedium1"));
        if float_time <= 0 && is_floating && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) + has_hit*5 is_floating = 0;
        break;
    }
    break;
    case AT_UAIR:
    switch form{
        case 0:
        if window == 1 hud_offset = floor(lerp(hud_offset, 120, 0.2));
        break;
        case 1:
        if window < 5 hud_offset = floor(lerp(hud_offset, 120, 0.2));
        if has_hit && window == 5 && (jump_pressed || attack_pressed || special_pressed){
            iasa_script();
        }
        break;
        case 2:
        hud_offset = floor(lerp(hud_offset, (window <= 7 && window_timer <= 16? 130: 200), 0.25));
        break;
        case 4:
        if window == 10  || (window == 9 && window_timer >= 9) hud_offset = floor(lerp(hud_offset, 190, 0.2));
        if float_time <= 0 && is_floating && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) + has_hit*5 is_floating = 0;
        if window == 9 && window_timer == 11{
            sound_play(sound_get("OB_swipemedium1"), 0, noone, 1, .8);
            sound_play(sound_get("OK_swipemedium1"), 0, noone, 1, .8);
        }else if window == 10 && window_timer == 11{
            sound_play(sound_get("OB_swipemedium1"), 0, noone, 1, 1);
            sound_play(sound_get("OK_swipemedium1"), 0, noone, 1, 1);
        }
        break;
    }
    break;
    case AT_DAIR:
    switch form{
        case 0:
        hud_offset = floor(lerp(hud_offset, 30, 0.2));
        break;
        case 1:
        hud_offset = floor(lerp(hud_offset, 60, 0.2));
        if window == 4 && !free{
            destroy_hitboxes();
            window = 5;
            window_timer = 0;
        }
        if window == 6 && (jump_pressed || attack_pressed || special_pressed){
            iasa_script();
        }
        break;
        case 2:
        hud_offset = floor(lerp(hud_offset, 60, 0.2));
        if window == 7 && window_timer == 16 && enhance{
            window = 9;
            window_timer = 0;
        }
        if window == 9 && window_timer == 2{
            old_vsp = -6;
            vsp = -6;
        }
        break;
        case 4:
        move_cooldown[AT_DAIR] = 10;
        hud_offset = floor(lerp(hud_offset, 80, 0.2));
        if float_time <= 0 && is_floating && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) + has_hit*5 is_floating = 0;
        if window == 12{
            if window_timer == 5 vsp = -3;
            if window_timer == 16 sound_play(sound_get("OB_swipemedium1"), 0, noone, 1, 0.95);
            if window_timer == 17{
                vsp = -3;
                sound_play(sound_get("OK_swipemedium1"), 0, noone, 1, 0.95);
            }
        }
        break;
    }
    break;
    case AT_USPECIAL:
    switch form{
        case 0:
        if window == 3 && window_timer == 12 set_state(PS_PRATFALL);
        hud_offset = floor(lerp(hud_offset, 140, 0.2));
        break;
        case 1:
        if window == 8 && window_timer == 9 set_state(PS_PRATFALL);
        hud_offset = floor(lerp(hud_offset, 140, 0.2));
        break;
        case 2:
        if window == 11 && window_timer == 24 set_state(PS_PRATFALL);
        if window == 11 && window_timer == 5 vsp = -10;
        hud_offset = lerp(hud_offset, 120, 0.2);
        if window == 11 && window_timer == 12 && enhance deck_swap();
        break;
        case 3:
        if window == 13 && window_timer == 21 set_state(PS_PRATFALL);
        if window <= 13 || (window == 13 && window_timer <= 6) hud_offset = floor(lerp(hud_offset, 110, 0.2));
        if window == 12 && window_timer == 14 sound_play(sound_get("OB_swipemedium1"));
        break;
        case 4:
        can_fast_fall = 0;
        switch window{
            case 14:
            if window_timer = 11{
                window = (joy_pad_idle || dsin(joy_dir) < -0.38 || dsin(joy_dir) > 0.92? 15: (dsin(joy_dir) < 0.38? 17: 16));
                spr_dir = sign(sign(dcos(joy_dir))*2 + spr_dir);
                window_timer = 0;
                if window = 16{
                    spr_angle = 45*spr_dir;
                    draw_y = -26;
                }
            }
            break;
            case 15:
            case 16:
            case 17:
            var blade = instance_place(x, y, obj_article1);
            if instance_exists(blade) && blade.player_id = self && blade.type == 3 && blade.state == 1{
                spr_angle = 0;
                draw_y = 0;
                blade.state = 5;
                blade.timer = 0;
                hsp = 0;
                vsp = 0;
                x = blade.x;
                y = blade.y + 20;
                set_attack(AT_EXTRA_2);
                for(var b = 1; b <= get_num_hitboxes(attack); b++){
                    var fx = get_hitbox_value(attack, b, HG_VISUAL_EFFECT)
                    if array_find_index(hfx, fx) >= 0{
                        var fx_id = floor(array_find_index(hfx, fx)/4)*4 + random_func(abs(floor((get_gameplay_time()+b)%200)), 4, 1);
                        set_hitbox_value(attack, b, HG_VISUAL_EFFECT, hfx[fx_id]);
                    }
                }
                hurtboxID.sprite_index = sprite_get("4flowmotion_hurt");
                flow_blade = blade;
                spin_timer = 0;
                clear_button_buffer(PC_SPECIAL_PRESSED);
                clear_button_buffer(PC_ATTACK_PRESSED);
                spin_sfx = sound_play(sound_get("final_spin"), 1);
                sound_play(sound_get("OB_hitweak3"));
                sound_play(sound_get("OK_hitweak2"));
            }
            break;
            case 18:
            spr_angle = 0;
            draw_y = 0;
            var blade = instance_place(x, y, obj_article1);
            if instance_exists(blade) && blade.player_id = self && blade.type == 3 && blade.state == 1{
                blade.state = 5;
                blade.timer = 0;
                hsp = 0;
                vsp = 0;
                x = blade.x;
                y = blade.y + 20;
                set_attack(AT_EXTRA_2);
                for(var b = 1; b <= get_num_hitboxes(attack); b++){
                    var fx = get_hitbox_value(attack, b, HG_VISUAL_EFFECT)
                    if array_find_index(hfx, fx) >= 0{
                        var fx_id = floor(array_find_index(hfx, fx)/4)*4 + random_func(abs(floor((get_gameplay_time()+b)%200)), 4, 1);
                        set_hitbox_value(attack, b, HG_VISUAL_EFFECT, hfx[fx_id]);
                    }
                }
                hurtboxID.sprite_index = sprite_get("4flowmotion_hurt");
                flow_blade = blade;
                spin_timer = 0;
                clear_button_buffer(PC_SPECIAL_PRESSED);
                clear_button_buffer(PC_ATTACK_PRESSED);
                spin_sfx = sound_play(sound_get("final_spin"), 1);
                sound_play(sound_get("OB_hitweak3"));
                sound_play(sound_get("OK_hitweak2"));
            }
            break;
        }
        break;
    }
    break;
    case AT_DSPECIAL:
    if window <= 5 hud_offset = floor(lerp(hud_offset, 200, 0.2));
    switch form{
        case 0:
        can_move = 0;
        can_fast_fall = 0;
        if window == 1 && !special_down{
            form_sel = (joy_pad_idle? -1: floor(floor((joy_dir/45)%8)/2 + .5)%4);
            if form_sel == -1{
                state = PS_IDLE;
                state_timer = 0;
            }else{
                window = 2;
                window_timer = 0;
                set_window_value(AT_DSPECIAL, 2, AG_WINDOW_GOTO, window_set_array[form_sel + 1]);
            }
            switch form_sel{
                case 0:
                case 1:
                if gauge_val < 2000{
                    state = PS_IDLE;
                    state_timer = 0;
                }
                break;
                case 2:
                if gauge_val < 3000{
                    state = PS_IDLE;
                    state_timer = 0;
                }
                break;
                case 3:
                if gauge_val < 4000{
                    state = PS_IDLE;
                    state_timer = 0;
                }
                break;
            }
        }
        if window == 2 && window_timer == 12{
            form = form_sel + 1;
            init_shader();
            form_revert = 0;
            gauge_val = (floor(gauge_val/1000) + 1) * 1000 - 1
        }
        if window != 1{
            soft_armor = 999999999;
            vsp = 0;
            hsp = 0;
        }
        break;
        
        case 1:
        if window == 6 && window_timer == 1{
            sound_play(jump_sound);
        }
        if window == 6 && window_timer == 11 sound_play(sound_get("OK_swipemedium1"));
        break;
        
        case 2:
        if window == 9 && window_timer == 15 && enhance deck_swap();
        if window == 8 hud_offset = lerp(hud_offset, 120, 0.2);
        break;
        
        case 3:
        move_cooldown[AT_DSPECIAL] = 2;
        can_fast_fall = 0;
        can_move = 0;
        if window == 10{
            if window_timer == 1 spawn_base_dust(x, y, "djump");
            if window_timer >= 33 && special_pressed{
                window = 11;
                window_timer = 0;
                hsp = 3 * spr_dir;
                vsp = -4;
            }
        }
        if window == 11{
            if vsp >= fast_fall ffall = 1;
            vsp = clamp(vsp, vsp, (ffall? fast_fall: 2));
            if window_timer == 32{
                sound_play(sound_get("wisdom_jab_finisher"), 0, noone, 1, 0.8);
                hsp = 6*spr_dir;
                vsp = -4;
            }
        }
        if window == 12 || window >= 10 && !free{
            spr_dir *= -1;
        }
        if !free && window >= 10 set_state(PS_LANDING_LAG);
        break;
        
        case 4:
        if window = 13 && window_timer == 8{
            sound_play(asset_get("sfx_swipe_weak2"), 0, noone, .7, 1.3);
            for(var h = 0; h < 3; h++){
                if final_blades[h] = noone{
                    final_blades[@h] = instance_create(x + 60*spr_dir, y - 30, "obj_article1");
                    final_blades[@h].type = 3;
                    final_blades[@h].final_blade_sprite = h;
                    final_blades[@h].spr_dir = spr_dir;
                    break;
                }
            }
        }
        break;
    }
    
    if form_revert{
        hud_offset = floor(lerp(hud_offset, 200, 0.2));
        can_move = 0;
        can_fast_fall = 0;
        if window == 1 && !special_down{
            form_sel = (joy_pad_idle? -1: floor(floor((joy_dir/45)%8)/2 + .5)%4);
            if form_sel == -1{
                state = PS_IDLE;
                state_timer = 0;
            }else{
                window = 2;
                window_timer = 0;
                set_window_value(AT_DSPECIAL, 2, AG_WINDOW_GOTO, window_set_array[form_sel + 1]);
            }
        }
        if window == 2 && window_timer == 12{
            form = form_sel + 1;
            init_shader();
            form_revert = 0;
        }
        if window != 1{
            soft_armor = 999999999;
            vsp = 0;
            hsp = 0;
        }
    }
    break;
    case AT_NSPECIAL:
    switch form{
        case 0:
        if window == 1{
            hud_offset = floor(lerp(hud_offset, 200, 0.2));
            if !special_down charged_ver = 0;
            if window_timer == 6{
                window = (charged_ver? 2: 6);
                window_timer = (charged_ver? 0: window_timer);
            }
        }
        can_fast_fall = 0;
        if window == 3{
            ragnarok_lv++;
            if !special_down{
                window = 4;
                window_timer = 0;
                hsp = -4 * spr_dir;
            }
            if shield_down{
                var ragnarok = instance_create(x + 70 * spr_dir, y - 24, "obj_article1");
                ragnarok.lifetime = floor(ragnarok_lv/10) * 100;
                ragnarok.sprite_index = sprite_get("ragnarok_artc_" + string(floor(ragnarok_lv/10) + 1));
                ragnarok.should_scale = 0;
                ragnarok.image_yscale = 1;
                ragnarok.image_xscale = 1;
                window = 5;
                window_timer = 0;
                vsp = -6;
                sound_play(jump_sound);
                spawn_base_dust(x, y, "djump");
            }
            if window_timer = 27{
                var fx_orb = instance_create(x + 70 * spr_dir, y - 24, "obj_article2");
                fx_orb.particle_type = 1;
                fx_orb.sprite_index = sprite_get("ragnarok_artc_3");
                move_cooldown[AT_NSPECIAL] = 40;
                sound_play(sound_get("ragnarok_destroyed"));
            }
        }
        if window == 6 && window_timer == 9{
            instance_create(x + 10 * spr_dir, y - 110, "obj_article1");
            sound_play(sound_get("ragnarok_summon"));
        }
        if window == 6 hud_offset = floor(lerp(hud_offset, 200, 0.2));
        if window == 4{
            hud_offset = floor(lerp(hud_offset, 40, 0.2));
            can_move = 0;
        }
        break;
        case 1:
        move_cooldown[AT_NSPECIAL] = valor_cool;
        if window == 7 && window_timer == 14 sound_play(sound_get("OK_swipemedium1"));
        if window == 7 && !(window_timer%4) && afterimage == 1{
            var afterm = instance_create(x, y, "obj_article2");
            afterm.spr_dir = spr_dir;
            afterm.particle_type = 3;
            afterm.timer = 15;
            afterm.image_index = image_index;
        }
        break;
        case 2:
        move_cooldown[AT_NSPECIAL] = 50;
        hud_offset = floor(lerp(hud_offset, 250, 0.2));
        if free && window_timer == 1 && vsp > -6 vsp = -6;
        if window_timer == 11{
            if !instance_exists(wis_trap){
                wis_trap = instance_create(x - 2 * spr_dir, y - 104, "obj_article1");
                wis_trap.type = 2;
                wis_trap.spr_dir = spr_dir;
            }else if wis_trap.state != 2 && !wis_trap.trigger wis_trap.trigger = 1;
        }
        break;
        case 3:
        if window == 10 && window_timer == 1 && !free vsp = -8;
        if window <= 11 && window_timer < 28 hud_offset = floor(lerp(hud_offset, 110, 0.2));
        can_fast_fall = 0;
        if window == 12 && window_timer == 10 + 5*!has_hit set_state(has_hit? PS_IDLE_AIR: PS_PRATFALL);
        if special_pressed && window == 11 && !hitstun{
            clear_button_buffer(PC_SPECIAL_PRESSED);
            vsp -= 5;
        }
        if window == 11 && window_timer == 28 && !hitstop vsp = -6;
        break;
        case 4:
        can_fast_fall = 0;
        if window != 14 vsp = clamp(vsp, vsp, (ffall? fast_fall: 3));
        if window == 15 && window_timer == 11{
            sound_play(sound_get("OK_swipemedium1"));
            sound_play(sound_get("OB_swipemedium1"));
        }
        if window == 13 hud_offset = floor(lerp(hud_offset, 150, 0.2));
        if window == 15 hud_offset = floor(lerp(hud_offset, 90, 0.2));
        if window == 13 && window_timer == 16 sound_play(asset_get("sfx_spin"), 0, noone, 1, 0.8);
        break;
    }
    break;
    case AT_FSPECIAL:
    switch form{
        case 0:
        switch window{
            case 4:
            if window_timer == 12 sound_play(sound_get("sora_dash"));
            if window_timer == 14 sound_play(sound_get("KB_recall"));
            can_move = 0;
            hsp = 0;
            vsp = 0;
            fsp_grab.state = PS_FLASHED;
            fsp_grab.hsp = 0;
            fsp_grab.vsp = 0;
            fsp_grab.x = proj_pos[2];
            fsp_grab.y = proj_pos[3];
            if window_timer >= 8 && window_timer <= 11{
                x = lerp(x, proj_pos[0] - 30 * spr_dir, 0.4);
                y = lerp(y, fsp_grab.y - floor(fsp_grab.char_height/3), 0.4);
            }else if window_timer > 11{
                x = proj_pos[0] - 30 * spr_dir;
                y = fsp_grab.y - floor(fsp_grab.char_height/3);
            }
            if(spr_dir? right_down: left_down){
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 14);
            }else if(!spr_dir? right_down: left_down){
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 8);
            }else{
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 11);
            }
            break;
            case 6:
            if window_timer == 18 sound_play(sound_get("sora_dash"));
            if window_timer > 11 && window_timer < 15{
                x = lerp(x, proj_pos[0] - 38 * spr_dir, 0.2);
                y = lerp(y, proj_pos[1] + 52, 0.2);
            }else if window_timer >= 15{
                x = proj_pos[0] - 38 * spr_dir;
                y = proj_pos[1] + 52;
            }
            can_move = 0;
            hsp = 0;
            vsp = 0;
            break;
            case 7:
            ignores_walls = 1;
            x = proj_pos[0] - 38 * spr_dir;
            y = proj_pos[1] + 52;
            can_move = 0;
            hsp = 0;
            vsp = 0;
            if jump_pressed{
                set_state(PS_DOUBLE_JUMP);
            }
            break;
        }
        break;
        
        case 1:
        if power_up && !(state_timer%4){
            var afterm = instance_create(x, y, "obj_article2");
            afterm.spr_dir = spr_dir;
            afterm.particle_type = 3;
            afterm.timer = 15;
            afterm.image_index = image_index;
        }
        switch window{
            case 8:
            if window_timer >= 6 hsp = 7 * spr_dir;
            if window_timer = 10 sound_play(asset_get("sfx_swipe_medium2"));
            if window_timer == 12 && vl_point{
                vl_point--;
                window = 9;
                window_timer = 0;
            }else if window_timer == 12{
                hsp = 10 * spr_dir;
                window = 10;
                window_timer = 0;
            }
            break;
            case 9:
            if instance_exists(fsp_grab){
                fsp_grab.state = PS_FLASHED;
                fsp_grab.x = proj_pos[2];
                fsp_grab.y = proj_pos[3];
            }
            vsp = 0;
            if window_timer == 1 sound_play(sound_get("sora_dodge"));
            if window_timer == 3 && !has_hit{
                window = 10;
                window_timer = 7;
                destroy_hitboxes();
            }
            if window_timer == 9{
                if vl_point{
                    vl_point--;
                    window = 9;
                    window_timer = 0;
                    sound_play(asset_get("sfx_swipe_medium2"));
                }else{
                    window = 10;
                    window_timer = 0;
                    sound_play(asset_get("sfx_swipe_medium2"));
                }
                sound_play(sound_get("sora_dash"));
                spr_dir *= -1;
                hsp *= -1;
                x = fsp_grab.x - 80 * spr_dir;
                y = fsp_grab.y - floor(fsp_grab.char_height/5);
            }
            break;
        }
        break;
        
        case 2:
        move_cooldown[AT_FSPECIAL] = 150;
        if window == 12 && !instance_exists(fsp_grab) && shield_pressed{
            cancel = 1;
            with pHitBox if attack == AT_FSPECIAL && hbox_num == 5 && player_id == other hitbox_timer = 25;
            window = 13;
            window_timer = 0;
        }
        if instance_exists(fsp_grab) && window_timer == 12 && window == 14{
            var n = instance_create(fsp_grab.x + 30, fsp_grab.y - floor(fsp_grab.char_height/2),"obj_article1");
            n.type = 1;
            n.spr_dir = -1;
            var g = instance_create(fsp_grab.x - 30, fsp_grab.y - floor(fsp_grab.char_height/2),"obj_article1");
            g.type = 1;
            g.spr_dir = 1;
        }
        if window == 14 && window_timer == 13 && enhance deck_swap();
        break;
        
        case 3:
        move_cooldown[AT_FSPECIAL] = 2;
        can_move = 0;
        can_fast_fall = 0;
        if has_hit && jump_pressed && can_djump && !hitstop{
            free = 1;
            set_state(PS_DOUBLE_JUMP);
            hsp = 10*spr_dir;
        }
        if window == 17 && window_timer == 9 + 5 set_state(PS_IDLE_AIR);
        break;
        
        case 4:
        can_fast_fall = 0;
        if has_hit set_window_value(AT_FSPECIAL, 21, AG_WINDOW_TYPE, 0);
        switch window{
            case 18:
            if vsp >= fast_fall ffall = 1;
            vsp = clamp(vsp, vsp, (ffall? fast_fall: 2));
            if window_timer = 8 sound_play(asset_get("sfx_spin"), 0, noone, 1, 0.9);
            break;
            case 19:
            var blade = collision_rectangle(x, y + 10, x + 60 * spr_dir, y - 70, obj_article1, 1, 1);
            if instance_exists(blade) && blade.player_id = self && blade.type == 3 && blade.state == 1 && !hitstop && window_timer < 21{
                blade.hsp = 10*spr_dir;
                window = 20;
                window_timer = 0;
                hsp = -4 * spr_dir;
                blade.state = 6;
                blade.timer = 0;
                sound_play(sound_get("wisdom_jab_finisher"), 0, noone, 1, 0.8);
                sound_play(asset_get("sfx_swipe_weak2"));
                destroy_hitboxes();
            }
            if window_timer == 21{
                sound_play(sound_get("wisdom_jab_finisher"), 0, noone, 1, 0.8);
                sound_play(asset_get("sfx_swipe_weak2"));
            }
            break;
            case 21:
            if !has_hit && window_timer = 12 is_floating = 0;
            break;
        }
        break;
    }
    break;
    case AT_EXTRA_1:
        if form == 3{
            if window == 1{
                vsp = 0;
                if window_timer == 6{
                    spawn_base_dust(x, y, "djump", 1, dash_dir*45 - 90);
                    hsp = dcos(dash_dir*45) * 12;
                    vsp = dsin(dash_dir*45) * -12 + (dash_dir == 0 || dash_dir == 4? -2: 0);
                }
            }
            iasa_script();
            if !free set_state(PS_WAVELAND);
        }
    break;
    case AT_EXTRA_2:
    if window == 1 hud_offset = floor(lerp(hud_offset, 120, 0.2));
    if window < 8 can_move = 0;
    else can_move = 1;
    if window == 1{
        x = flow_blade.x;
        y = flow_blade.y + 20;
        flow_blade.depth = depth + (window_timer >= 4 && window_timer < 11? 2: -2);
        spin_timer++;
        if spin_timer >= 120 || special_pressed || attack_pressed{
            clear_button_buffer(PC_SPECIAL_PRESSED);
            clear_button_buffer(PC_ATTACK_PRESSED);
            spr_dir = sign(sign(dcos(joy_dir))*2 + spr_dir);
            window = 2;
            window_timer = 0;
            flow_blade.state = 3;
            flow_blade.timer = 0;
            flow_blade.cooldown = 300;
            set_window_value(AT_EXTRA_2, 2, AG_WINDOW_GOTO, (joy_pad_idle || dsin(joy_dir) > 0.92? 3: (dsin(joy_dir) < 0.38 && dsin(joy_dir) > -0.38? 5: (dsin(joy_dir) < -0.92? 7: (dsin(joy_dir) > 0? 4: 6)))));
        }
    }
    if window == 2 && window_timer == 9{
        sound_play(sound_get("OK_swipemedium1"));
        sound_play(sound_get("OB_swipemedium1"));
    }
    if window >= 3 && !free set_state(PS_LAND);
    if (window >= 3 && window <= 7) || (window == 8 && window_timer <= 6){
        var blade = instance_place(x, y, obj_article1);
        if instance_exists(blade) && blade.player_id = self && blade.type == 3 && blade.state == 1 && !hitstop{
            blade.state = 5;
            blade.timer = 0;
            hsp = 0;
            vsp = 0;
            x = blade.x;
            y = blade.y + 20;
            flow_blade = blade;
            spin_timer = 0;
            clear_button_buffer(PC_SPECIAL_PRESSED);
            clear_button_buffer(PC_ATTACK_PRESSED);
            spin_sfx = sound_play(sound_get("final_spin"), 1);
            sound_play(sound_get("OB_hitweak3"));
            sound_play(sound_get("OK_hitweak2"));
            window = 1;
            window_timer = 0;
        }
    }
    set_window_value(AT_EXTRA_2, 8, AG_WINDOW_TYPE, 7*!has_hit);
    break;
    case AT_TAUNT:
    switch form{
        case 0:
        if window_timer <= 28 && window_timer >= 12 hud_offset = floor(lerp(hud_offset, 100, 0.2));
        break;
        case 1:
        if window_timer <= 25 && window_timer >= 14 hud_offset = floor(lerp(hud_offset, 70, 0.2));
        if window_timer == 19 sound_play(sound_get("KB_swipeweak1"));
        if window_timer == 20 sound_play(sound_get("OK_swipemedium1"));
        break;
        case 2:
        hud_offset = floor(lerp(hud_offset, 70, 0.2));
        if window_timer == 7 sound_play(sound_get("wisdom_taunt"));
        break;
        case 3:
        if window_timer == 2 sound_play(asset_get("sfx_spin"));
        if window_timer >= 37 && window_timer <= 43 && taunt_down window_timer = 41;
        if window_timer <= 22 && window_timer >= 10 hud_offset = floor(lerp(hud_offset, 80, 0.2));
        break;
        case 4:
        hud_offset = floor(lerp(hud_offset, 40, 0.2));
        if window_timer == 10 sound_play(asset_get("sfx_spin"));
        break;
    }
    break;
}
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}

#define deck_swap()
{
    deck_change = 1
    deck_antimer = 0;
    deck_val = (deck_val+1)%3
}