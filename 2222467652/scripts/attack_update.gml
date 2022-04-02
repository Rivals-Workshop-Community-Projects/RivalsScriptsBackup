//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FAIR){
    if (window == 1 && window_timer == 10 && !hitpause) && (!attack_down && !strong_down){
        sound_play(get_window_value(attack, window, AG_WINDOW_SFX));
        window += 1;
        window_timer = 1;
    }
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 && !hitpause && vsp >= -5){
        vsp -= 3.5;
    }
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 8 && !hitpause && vsp >= -5){
        sound_play(asset_get("sfx_may_arc_cointoss"));
    }
    if (window == 2 && window_timer <= 2 && !hitpause && vsp >= -5){
        vsp -= 2.5;
    }
}

if (attack == 47){
    if (window == 2){
        window_timer = 0;
        if (nes_taunt_x < 698){
            if (left_down && nes_taunt_x > 0){
                nes_taunt_x -= 1;
            }
            if (right_down && nes_taunt_x < 724){
                nes_taunt_x += 1;
            }
            nes_taunt_y += nes_taunt_vsp;
            if (nes_taunt_y < 0){
                nes_taunt_vsp += 0.1;
                if (jump_down || up_down) && (nes_taunt_vsp < 0){
                    nes_taunt_vsp -= 0.06;
                }
            }
            if (nes_taunt_y >= 0){
                nes_taunt_y = 0;
                if (nes_taunt_vsp > 0){
                    nes_taunt_vsp = 0;
                }
                if (jump_down || up_down){
                    nes_taunt_vsp = -1;
                    sound_play(asset_get("sfx_gus_jump"));
                }
            }
        } else {
            if (nes_taunt_x < 728){
                if (nes_taunt_x = 700){
                    sound_play(asset_get("sfx_chester_appear"));
                }
                nes_taunt_win_timer = 0;
                nes_taunt_x += 0.5;
                nes_taunt_y += nes_taunt_vsp;
                if (nes_taunt_y < 0){
                    nes_taunt_vsp += 0.1;
                }
                if (nes_taunt_y >= 0){
                    nes_taunt_y = 0;
                    if (nes_taunt_vsp > 0){
                        nes_taunt_vsp = 0;
                    }
                }
            } else {
                nes_taunt_y = 16;
                nes_taunt_vsp = 0;
                nes_taunt_win_timer += 1;
                if (nes_taunt_win_timer > 120){
                    nes_taunt_win_timer = 0;
                    nes_taunt_x = 0;
                    nes_taunt_y = 0;
                    nes_taunt_vsp = 0;
                }
            }
        }
        if (taunt_pressed){
            window = 3;
        }
    }
}

if (attack == 45){
    if (window == 2){
        if (!taunt_down && window_timer <= 18){
            window = 3;
            window_timer = 0;
        }
        if (taunt_down && window_timer >= 36 && window_timer <= 42){
            window_timer = 36;
            if (left_down && hsp > walk_speed * -0.75){
                hsp -= walk_accel * 0.75;
            }
            if (right_down && hsp < walk_speed * 0.75){
                hsp += walk_accel * 0.75;
            }
        }
    }
}

if (attack == AT_DTILT){
    if (window == 3) && (has_hit || has_hit_luigi_egg || has_hit_ron){
        can_attack = true;
        can_jump = true;
        if (move_cooldown[AT_DTILT] < 5){
            move_cooldown[AT_DTILT] = 5;
        }
    }
}

if (attack == AT_UAIR) || (attack == AT_FAIR && (has_hit || has_hit_luigi_egg || has_hit_ron)){
    vsp -= 0.1;
    if (window == 2 && vsp > -6 && !hitpause && !uair_boost){
        vsp = -6;
        uair_boost = true;
    }
}

if (attack == AT_DSPECIAL){
    move_cooldown[AT_DSPECIAL] = 35;
    if (!free){
        dspecial_start_free = false;
    }
    if (window == 1){
        hsp *= 0.9;
        if (vsp > 4){
            vsp = 4;
        }
    }
    if (window == 2){
        hsp *= 0.8;
        if (vsp > 3){
            vsp = 3;
        }
        if (window_timer == 1 && vsp > -1 && free){
            vsp = -1;
        }
        if (window_timer == 1 && !hitpause){
            sound_play(sound_get("se_luigi_plunger_shoot"), false, noone, 0.3, 1);
        }
    }
    if (window == 3){
        hsp *= 0.7;
        if (vsp > 2){
            vsp = 2;
        }
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 14){
            var hitbox_gone = true;
            with(asset_get("pHitBox")){
                if (player_id == other.id && attack == AT_DSPECIAL && hbox_num == 1){
                    hitbox_gone = false;
                }
            }
            if (hitbox_gone){
                if (free){
                    set_state(PS_IDLE_AIR);
                } else {
                    set_state(PS_IDLE);
                }
            }
        }
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
            hsp *= 0.65;
            if (free){
                set_state(PS_IDLE_AIR);
            } else {
                set_state(PS_IDLE);
            }
        }
    }
    if (window == 2 || window == 3){
        with(asset_get("pHitBox")){
            if (player_id == other.id && attack == AT_DSPECIAL && hbox_num == 1 && "birdluigi_dspecial_grabbed_id" in self && birdluigi_dspecial_grabbed_id != noone && birdluigi_dspecial_player_detect){
                other.dspecial_grab_id = birdluigi_dspecial_grabbed_id;
                destroyed = true;
                other.window = 4;
                other.window_timer = 0;
                if (other.vsp > -5){
                    other.vsp = -5;
                }
                if (other.left_down && other.spr_dir > 0) || (other.right_down && other.spr_dir < 0){
                    other.spr_dir *= -1;
                }
            }
        }
    }
    if (window == 4){
        can_move = false;
        hsp *= 0.98;
        if (window_timer < 21){
            if (down_down){
                vsp += 0.25;
            }
            with(dspecial_grab_id){
                hitpause = true;
                hitstop = 10;
                x = round((x * 0.5) + ((other.x - (25 * other.spr_dir)) * 0.5));
                y = round((y * 0.5) + ((other.y - 35) * 0.5));
            }
        } else {
            if (window_timer < 24){
                with(dspecial_grab_id){
                    hitpause = true;
                    hitstop = 5;
                    x = round((x * 0.5) + ((other.x + (15 * other.spr_dir)) * 0.5));
                    y = round((y * 0.5) + ((other.y - 5) * 0.5));
                    spr_dir = other.spr_dir * -1;
                    if (other.dspecial_start_free){
                        hsp = 7 * other.spr_dir;
                        vsp = -6;
                    } else {
                        hsp = 4 * other.spr_dir;
                        vsp = 3;
                    }
                    old_hsp = hsp;
                    old_vsp = vsp;
                }
            }
        }
        if (window_timer >= 25 && !dspecial_thrown_grab_id){
            dspecial_thrown_grab_id = true;
            sound_play(asset_get("sfx_swipe_medium1"));
            if (dspecial_start_free){
                take_damage(dspecial_grab_id.player, -1, clamp(get_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE) - 1, 0, 999));
                hsp = spr_dir * -1;
            } else {
                dspecial_thrown_grab_id.hitpause = false;
                create_hitbox(AT_DSPECIAL, 2, x, y).birdluigi_dspecial_grabbed_id = dspecial_grab_id;
                dspecial_grab_id = noone;
                hsp = spr_dir * 3;
            }
            can_move = true;
            if (vsp > -9){
                vsp = -9;
            }
        }
        if (window_timer >= 32 && dspecial_thrown_grab_id){
            can_attack = true;
        }
    }
}

if (attack == 50){
    if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 2 && has_hit_player && fs_cutscene_time < fs_cutscene_length){
        window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 2;
        fs_cutscene_time += 1;
        if (fs_cutscene_time == fs_cutscene_length - 1 && fs_target_id != noone){
            take_damage(fs_target_id.player, -1, 10);
        }
        if (fs_target_id != noone){
            x = fs_target_id.x - fs_target_id.spr_dir * 80;
            y = fs_target_id.y;
            spr_dir = fs_target_id.spr_dir;
        }
    }
    if (window == 3 && window_timer == 1 && has_hit_player){
        if (fs_target_id != noone){
            hsp = spr_dir * -2;
        }
        create_hitbox(50, 2, x, y);
    }
}

if (attack == AT_FSTRONG_2){
    if (rune_N_abyss_strongtype == AT_FSTRONG){
        if (window == 3){
            if (window_timer == 7 || window_timer == 14 || window_timer == 21 || window_timer == 28 || window_timer == 35){
                create_hitbox(AT_FSTRONG_2, 1, x + spr_dir * 46, y - 45);
            }
            if (window_timer == 56){
                create_hitbox(AT_FSTRONG_2, 2, x + spr_dir * 45, y - 45);
            }
        }
    }
}

if (attack == AT_FTILT && window == 1 && window_timer == 1 && !free && !hitpause){
    spawn_base_dust(x, y, "walk");
}

if (attack == 41 || attack == 42 || attack == 43){
    airtilt_buddy_taunting = true;
}

if (attack == 43){
    if (window == 2){
        hud_offset = clamp(window_timer * 6, 0, 100);
    }
    if (window == 3 && window_timer <= 32){
        hud_offset = 100 + clamp(window_timer * 4, 0, 20);
    }
    if (window == 4 && window_timer == 16 && taunt_down){
        window_timer = 14;
    }
}

if (attack == 42){
    if (window == 2){
        hud_offset = clamp(window_timer * 6, 0, 100);
    }
    if (window == 3 && window_timer <= 32){
        hud_offset = 100 + clamp(window_timer * 4, 0, 20);
    }
    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 7){
        sound_play(533); //ID of infamous spray sound
        infamoustaunt_spray_fade = 60;
        infamoustaunt_spray_text_x = x;
        infamoustaunt_spray_text_y = y;
        infamoustaunt_spray_text_img = 0;
        spawn_hit_fx(x + 4, y - 24, vfx_infamous_spray_burst);
    }
    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 6){
        spawn_hit_fx(x - 18, y - 24, vfx_infamous_spray_burst);
        spawn_hit_fx(x + 26, y - 24, vfx_infamous_spray_burst);
    }
    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 5){
        spawn_hit_fx(x - 18 * spr_dir, y + 10, vfx_infamous_spray_burst);
    }
    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 3){
        spawn_hit_fx(x + 4 * spr_dir, y + 10, vfx_infamous_spray_burst);
    }
    if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
        spawn_hit_fx(x + 26 * spr_dir, y + 10, vfx_infamous_spray_burst);
    }
}

if (attack == AT_FTHROW){
    if (window == 4 && has_hit_luigi_egg){
        window = 5;
        window_timer = 0;
    }
    if (window == 4){
        hsp *= 0.9;
        vsp *= 0.9;
    }
    if (window == 5 && window_timer == 21){
        var dstrongfirefx = spawn_hit_fx(x + spr_dir * 16, y - 4, luigi_fire);
        dstrongfirefx.draw_angle = 90 + spr_dir * -45;
        dstrongfirefx.spr_dir = 1;
    }
}

if (attack == AT_DTHROW){
    if (window == 1 && window_timer == 17 && !hitpause){
        hitpause = true;
        hitstop = 5;
    }
    if (window == 2 && window_timer >= 8 && free){
        window_timer = 8;
        can_jump = true;
        can_shield = true;
    }
}

if (attack == AT_NTHROW){
    if (window == 1 || window == 4){
        hsp *= 0.9;
        vsp *= 0.9;
    }
}

if (attack == AT_BAIR){
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (flutterjump < flutterjump_max){
        vsp *= 0.95;
        hsp *= 0.95;
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (vsp < -1.5 && flutterjump < flutterjump_max){
        vsp += 0.5;
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (vsp > 0 && flutterjump < flutterjump_max){
        vsp -= 1;
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (vsp > 3 && flutterjump < flutterjump_max){
        vsp -= 1;
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (vsp > 4 && flutterjump < flutterjump_max){
        vsp -= 1;
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (vsp > 5 && flutterjump < flutterjump_max){
        vsp -= 1;
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (vsp > 5 && flutterjump < flutterjump_max){
        vsp -= 1;
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (vsp > 7 && flutterjump < flutterjump_max){
        vsp -= 1;
    }
}

if (attack == AT_NAIR){
    if (hitpause){
        if (left_down || right_down){
            x += spr_dir;
        }
    }
    if (attack_pressed || attack_down) && (!has_naired && vsp > -7){
        vsp -= 0.4;
        if (attack_pressed){
            vsp -= 0.1;
        }
    }
    if (attack_pressed || attack_down) && (!has_naired && vsp > 0){
        vsp -= 0.4;
        if (attack_pressed){
            vsp -= 0.1;
        }
    }
    if (attack_pressed || attack_down) && (vsp > 4){
        vsp -= 0.4;
        if (attack_pressed){
            vsp -= 0.1;
        }
    }
    if (window == 3 && window_timer > 8){
        has_naired = true;
    }
}

if (attack == AT_FSTRONG){
    move_cooldown[AT_FSTRONG] = 5;
    if (misfire_charged && window == 1 && window_timer == 4 && !shield_down){
        misfire_active = true;
        misfire_charged = false;
        sound_play(sound_get("stat_down"));
        misfire_cooldown = 250;
        soft_armor = 12;
    }
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 && !hitpause){
       spawn_base_dust(x, y, "dash_start");
    }
    if (misfire_active && window == 3){
        hsp += spr_dir;
        super_armor = true;
    }
    if (misfire_active && window == 4 && window_timer == 1){
        super_armor = false;
    }
    if (window == 4 && window_timer > 11 && free){
        if (has_hit || has_hit_luigi_egg || has_hit_ron){
            set_state(PS_IDLE_AIR);
        } else {
            hsp *= 0.98;
            window_timer = 11;
            can_jump = true;
            can_wall_jump = true;
            if (misfire_active && abs(hsp) > 5){
                hsp *= 0.97;
            }
        }
    }
    if (window == 4 && window_timer > 15 && misfire_active && abs(hsp) > 5){
        window_timer = 15;
        hsp *= 0.97;
    }
}

if (attack == AT_TAUNT){
    /* if (has_rune("L")){ //this was old bird luigi rune L
        if (taunt_hold_timer < 1000 || window != 2){
            super_armor = true; //why
        } else {
            super_armor = false;
        }
    } */
    if (window == 2 && taunt_down && window_timer > 10 && get_player_color(player) != alt_mario){
        window_timer = 11;
        taunt_hold_timer += 1;
        suppress_stage_music( 0, 0.001 );
        if (taunt_hold_timer > 2000){
             taunt_hold_timer = 2000;
        }
        if (get_gameplay_time()%60 == 0 && get_player_color(player) != alt_negative){
            sound_stop(sound_get("static"));
            sound_play(sound_get("static"), true, noone, taunt_hold_timer * 0.0005);
        }
        if (get_player_color(player) == alt_negative && taunt_hold_timer == 100){
            sound_play(sound_get("squackecho"));
        }
    }
    if (window == 2 && get_player_color(player) == alt_mario){
        if (!mario_taunt_big){
            mario_taunt_big = true;
            sound_play(sound_get("power_up"));
        }
        hud_offset = small_sprites * char_height + 20;
        if (small_sprites < 1){
            small_sprites += 0.1;
            window_timer = 2;
        }
        if (taunt_down){
            window_timer = 2;
        }
    } else {
        if (mario_taunt_big){
            mario_taunt_big = false;
            sound_play(sound_get("power_down"));
        }
    }
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2 && !hitpause && get_player_color(player) == alt_loudbird){
        create_hitbox(AT_NSPECIAL_2, 3, x, y - 40);
        sound_play(asset_get("sfx_gus_land"));
    }
    if (get_player_color(player) == alt_starwalker){
        hud_offset = round(52 * 1.05) - char_height;
        if (!starwalker_taunt){
            starwalker_taunt = true;
            sound_play(sound_get("the_original__starwalker"));
        }
    }
}

if (attack == AT_UTILT){
    if (window == 3 && utilt_hat_has_hit){
        can_attack = true;
        can_jump = true;
    }
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 15;
    if (window == 1){
        can_move = false;
        hsp *= 0.9;
        if (vsp > 1){
            vsp = 1;
        }
        if (window_timer == 1){
            fspecial_charge = 0;
            if (!fspecial_stored && !hitpause){
                sound_play(asset_get("sfx_swipe_weak2"));
            }
        }
        if (window_timer == 12 && fspecial_stored > 0){
            fspecial_charge = fspecial_stored;
            fspecial_stored = 0;
        }
        if (special_down && window_timer > 14 && fspecial_charge < 55){
            window = 1;
            window_timer = 13;
            fspecial_charge += 1;
            if (fspecial_charge > 45){
                var fspecial_overcharge_hitbox = create_hitbox( AT_NSPECIAL_2, 1, x + spr_dir * 20, y - 15 );
                fspecial_overcharge_hitbox.length = 4;
                fspecial_overcharge_hitbox.kb_scale = 1.2;
                fspecial_overcharge_hitbox.kb_value = 8;
                fspecial_overcharge_hitbox.hitpause = 10;
                fspecial_overcharge_hitbox.hitpause_growth = 1;
                window = 4;
                window_timer = 0;
                hsp = spr_dir * 2;
                fspecial_bounce_vsp = -2;
                sound_play(asset_get("sfx_swipe_weak1"));
            }
            if (shield_pressed){
                fspecial_stored = fspecial_charge;
                can_shield = true;
                window = 4;
                window_timer = 0;
                sound_play(asset_get("mfx_star"));
                if (fspecial_stored * 1.75 >= 64){
                    fspecial_stored = 45;
                }
            }
        }
    }
    if (window == 3){
        /* if (window_timer == 1 && !free && !hitpause){
            if (fspecial_charge * 1.75 >= 32){
                spawn_base_dust(x, y, "dash_start");
            } else {
                spawn_base_dust(x, y, "dash");
            }
        } */
        x += spr_dir * fspecial_charge * fspecial_speed_boost;
        if (hsp == 0 && !hitpause) || ((x < 5 && hsp < 0) || (x > room_width - 5 && hsp > 0)){
            window = 4;
            window_timer = 0;
            hsp = spr_dir * -6;
            sound_play(asset_get("sfx_blow_weak2"));
            if (!fspecial_has_restored_djump || has_rune("J")){
                djumps = 0;
                fspecial_has_restored_djump = true;
                fspecial_bounce_vsp = -5;
            }
        }
        if (window_timer < 2){
            y += 1;
        }
        if (window_timer > 4){
            fspecial_bounce_vsp = 0
            if (up_down && !down_down){
                y -= 2 + round(fspecial_charge * fspecial_speed_boost * 0.45);
                x -= spr_dir * 2;
                fspecial_bounce_vsp = -2 + round(fspecial_charge * fspecial_speed_boost * -0.35);
            }
            if (down_down && !up_down){
                y += 2 + round(fspecial_charge * fspecial_speed_boost * 0.45);
                x -= spr_dir * 2;
                fspecial_bounce_vsp = 2 + round(fspecial_charge * fspecial_speed_boost * 0.35);
            }
        }
    }
    if (window == 4){
        can_move = false;
        hsp *= 0.96;
        y += round(window_timer * 0.35);
        y += fspecial_bounce_vsp;
        fspecial_charge -= 1;
    }
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL_2){
    can_move = false;
    if (vsp > 1){
        vsp = 1;
    }
    if (window == 1){
        if (window_timer == 3 || window_timer == 22){
            sound_play(asset_get("sfx_shop_move"));
        }
    }
    if (window == 2 || window == 3){
        hsp *= 0.98;
    }
}


if (attack == AT_USPECIAL){
    if (egg_stored){
        //soft_armor = 9999;
        can_special = false;
        can_attack = false;
    }
    if (window == 2){
        if (window_timer == 1 && !hitpause){
            luigi_fireball = instance_create( x + spr_dir * 2, y - 30, "obj_article1" );
            luigi_fireball.hsp = spr_dir * 5;
            luigi_fireball.vsp = -7;
            luigi_fireball.bounces = 2;
            luigi_fireball.fireballfloat = false;
            fireballtogglecooldown = fireballtogglecooldown_full;
            fireballtogglecooldown_noanimation = fireballtogglecooldown_full;
            if (down_down){
                luigi_fireball.vsp += 1;
            }
            if (up_down){
                luigi_fireball.vsp -= 1;
            }
            if (left_down){
                luigi_fireball.hsp -= 1;
            }
            if (right_down){
                luigi_fireball.hsp += 1;
            }
            if (egg_stored){
                luigi_fireball.hsp -= spr_dir * 2;
                luigi_fireball.vsp += 2;
                if (down_down){
                    luigi_fireball.vsp += 1;
                }
                if (up_down){
                    luigi_fireball.vsp -= 1;
                }
                if (left_down){
                    luigi_fireball.hsp -= 2;
                    if (spr_dir > 0){
                        luigi_fireball.hsp += 1;
                    }
                }
                if (right_down){
                    luigi_fireball.hsp += 2;
                    if (spr_dir < 0){
                        luigi_fireball.hsp -= 1;
                    }
                }
                luigi_fireball.bounces = egg_store_bounces;
                luigi_fireball.fireball_onfire = egg_store_fireball_onfire;
                luigi_fireball.fireball_onfire_id = egg_store_fireball_onfire_id;
                luigi_fireball.fireball_weakfire = egg_store_fireball_weakfire;
                luigi_fireball.fireball_firetimer = egg_store_fireball_firetimer;
                egg_stored = false;
            }
        }
    }
}

if (attack == AT_NSPECIAL){
    if (window == 2){
        if (window_timer == 1 && !hitpause){
            luigi_fireball = instance_create( x + spr_dir * 2, y - 30, "obj_article1" );
            luigi_fireball.hsp = spr_dir * 3;
            luigi_fireball.vsp = -4;
            luigi_fireball.bounces = 1;
            luigi_fireball.fireballfloat = true;
            sound_play(sound_get("chirp3"));
            fireballtogglecooldown = 20;
        }
    }
}

if (attack == AT_DSTRONG){
    if (window == 3 && window_timer == 1){
        var dstrongfirefx = spawn_hit_fx(x, y - 4, luigi_fire);
        dstrongfirefx.draw_angle = 90;
        dstrongfirefx.spr_dir = 1;
    }
    if (window == 4 && window_timer == 2){
        var dstrongfirefx = spawn_hit_fx(x - 4, y - 48, luigi_fire_small);
        dstrongfirefx.spr_dir = 1;
    }
}

if (attack == AT_USTRONG){
    if (window == 1){
        hud_offset = window_timer * -3;
    }
    if (window == 2){
        hud_offset = -28;
    }
    if (window == 3){
        /* if (window_timer == 1 && !hitpause){
            spawn_base_dust(x, y, "jump");
        } */
        if (window_timer == 1 && !hitpause && free && vsp > -3){
            vsp = -3;
        }
        if (window_timer < 12){
            if (window_timer > 2){
                hud_offset = window_timer * 3.5;
            }
        } else {
            if (window_timer < 25){
                hud_offset = 40;
            }
        }
    }
}

if (attack == AT_JAB){
    move_cooldown[AT_JAB] = 5;
    if (has_hit_player){
        move_cooldown[AT_JAB] = 35;
    }
    if (window == 2 && window_timer > 10){
        can_attack = true;
        if (has_rune("L") && down_down && special_pressed){
            set_attack(AT_DTHROW);
        }
    }
    if (window == 1 || window == 2) && (window_timer >= 9 && attack_pressed){
        if (window == 1){
            hsp = spr_dir * 2;
            window += 1;
            window_timer = 2;
        } else {
            if (window == 2){
                hsp = spr_dir * 6;
                if (left_down && spr_dir < 0) || (right_down && spr_dir > 0){
                    set_attack(AT_FTILT);
                } else {
                    if (up_down){
                        set_attack(AT_UTILT);
                    } else {
                        if (down_down){
                            set_attack(AT_DTILT);
                        } else {
                            window += 1;
                            window_timer = 2;
                        }
                    }
                }
            }
        }
    }
    if (window_timer <= 1 && window != 1) && (!attack_down || was_parried){
        set_state(PS_IDLE);
        hitpause = true;
        hitstop = 5;
        old_hsp = 0;
        old_vsp = 0;
        x -= hsp;
    }
    if (window == 3 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) * 1.5 - 1 && !has_hit && !has_hit_luigi_egg && !has_hit_ron && attack_down){
        window = 1;
        window_timer = 0;
    }
}

if (attack == AT_DAIR){
    if (has_rune("E")){
        fall_through = true;
        if (window == 1 && window_timer == 1 && !hitpause){
            sound_play(asset_get("sfx_ori_ustrong_charge"));
            vsp = -5;
            hsp *= 0.8;
        }
        if (window == 2){
            if (window_timer == 1 && !hitpause){
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
            }
            if (!has_hit && !has_hit_luigi_egg && !has_hit_ron && !hitpause){
                vsp = 15;
                hsp *= 0.9;
            }
        }
        if (window == 3){
            vsp *= 0.8;
        }
    }
    if (window != 2 && !hitpause){
        can_fast_fall = false;
    } else {
        can_fast_fall = true;
    }
}

/*
if (attack == AT_FAIR){
    if (window == 2 && window_timer == 4 && !hitpause){
        if (vsp > -4){
            vsp = -4;
        }
    }
}
*/

if (attack == AT_DATTACK){
    dattack_timer = 5;
    if (window == 1){
        if (up_strong_pressed){
            set_attack(AT_USTRONG);
            vsp = get_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED);
            hsp = get_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED) * spr_dir;
        }
    }
    if (window == 2){
        if (vsp > 0){
            vsp -= 1;
        }
         /*if (window == 2 && down_pressed){
            set_state(PS_IDLE_AIR);
        } */
        if (window == 2 && !free){
            set_state(PS_LANDING_LAG);
        }
        if (window == 2 && window_timer > 28 && attack_down && has_rune("A")){
            window_timer = 28;
        }
    }
    if (has_hit || has_hit_luigi_egg || has_hit_ron) && (!hitpause){
        can_jump = true;
        can_attack = true;
    }
}

//custom alt
if (attack == AT_TAUNT){
    if (playtesting_mode && get_player_color(player) == alt_custom && window == 1){
        set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
        if (!colorselectmenu){
            sound_play(asset_get("mfx_confirm"));
        }
        hsp = 0;
        vsp = 0;
        hitpause = true;
        hitstop = 20;
        window_timer = 1;
        super_armor = true;
        x = 0;
        y = 0;
        colorselectmenu = true;
        set_view_position(0, 0);
        if (special_pressed){
            set_state(PS_PRATFALL);
            x = 480;
            y = 420;
            colorselectmenu = false;
            sound_play(asset_get("mfx_confirm"));
            hsp = 0;
            vsp = -4;
            old_hsp = hsp;
            old_vsp = vsp;
        }
    }
    /* if (window == 2 && !playtesting_mode && window_timer == 3 && taunt_down && !codecactive && codecdisabledtimer < 1 && get_training_cpu_action() != CPU_FIGHT) || (window == 2 && !playtesting_mode && window_timer == 28 && !codecactive && taunttimer > 245 && get_training_cpu_action() == CPU_FIGHT && codecdisabledtimer < 1){
        codecboxopentimer = 0;
        codecactive = true;
        codecpage = 0;
        sound_play(asset_get("mfx_confirm"));
    } */ //i actually dont remember writing any of this code please tell me if something breaks after i commented it out
    if (window == 2 && window_timer >= 25 && taunt_down && taunttimer < 251){
        window_timer = 25;
        taunttimer += 1;
        if (taunttimer%75 == 0){
            sound_play(asset_get("mfx_hover"));
        }
    }
}

//Base Game Dust effect spawning script by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;