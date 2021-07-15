//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_EXTRA_1){
    if (window == 1){
        has_hit = false;
        can_fast_fall = false;
        dash_cancel = false;
        mist_dash = false;
        out_of_mist = false;
        mist_hit_wall = false;
        time_in_mist = 0;
        if (window_timer == 1) {
            grounded_dash = !free;
            dash_count_at_dash = dash_count;
            jump_held = jump_down;
            dash_count -= 1;
            dash_timer = 10;
            dash_delay = 15;
            stamina -= stamina_cost_dash;
        }
    } else if (window == 2) {
        dash_effect = array_create(4);
        dash_effect[0] = x;
        dash_effect[1] = y;
        dash_effect[2] = 16;
        dash_effect[3] = dash_count_at_dash;
        dash_jump = false;
        if (!joy_pad_idle) {
            dash_dir = (floor((joy_dir + 22.5) / 45.0) * 45.0) % 360;
            dash_x = lengthdir_x(16, dash_dir);
            dash_y = lengthdir_y(16, dash_dir);
        } else {
            dash_dir = spr_dir == 1 ? 0 : 180;
            dash_x = lengthdir_x(16, dash_dir);
            dash_y = 0;
        }
        if (dash_count_at_dash > 1) {
            sound_play(sound_get(spr_dir == 1 ? "dash_pink_right" : "dash_pink_left"));
        } else {
            sound_play(sound_get(spr_dir == 1 ? "dash_red_right" : "dash_red_left"));
        }
        window = 3;
        window_timer = 0;
    } else if (window == 3) {
        dash_set = false;
        if (!has_dashed) {
            if (has_died) {
                set_victory_bg(sprite_get("victorybg3"));
            } else {
                set_victory_bg(sprite_get("victorybg2"));
            }
        }
        has_dashed = true;
        has_walljump = true;
        /*
        if (window_timer == 1) {
            if (dash_dir >= 45 && dash_dir <= 135) {
                destroy_hitboxes();
                hitbox = create_hitbox(AT_EXTRA_1, 2, 0, -20);
            }
        }
        */
        if (winged_strawberry != noone) {
            winged_strawberry.activated = true;
        }
        if (runeG) {
            if (winged_strawberry2 != noone) {
                winged_strawberry2.activated = true;
            }
            if (winged_strawberry3 != noone) {
                winged_strawberry3.activated = true;
            }
        }
        if (dash_x != 0) {
            spr_dir = (dash_x > 0 ? 1 : -1);
        }
        var dir8 = (floor((joy_dir + 22.5) / 45.0) * 45.0) % 360;
        if (!in_mist && window_timer > 3 && !joy_pad_idle && dir8 == (dash_dir + 180) % 360) {
            window = 4;
            window_timer = 0;
            hsp = dash_x * 0.7;
            dash_cancel = true;
        } else {
            hsp = dash_x;
            vsp = dash_y;
        }
        if (window_timer % 3 == 0 && window_timer >= 3) {
            after_image = array_create(6);
            after_image[0] = x;
            after_image[1] = y;
            after_image[2] = spr_dir;
            after_image[3] = dash_dir;
            after_image[4] = 15;
            after_image[5] = dash_count_at_dash;
            after_images[window_timer / 3] = after_image;
        }
    } else if (window == 4) {
        destroy_hitboxes();
        if (window_timer == 1 && !in_mist && !mist_dash) {
            after_image = array_create(6);
            after_image[0] = x;
            after_image[1] = y;
            after_image[2] = spr_dir;
            after_image[3] = dash_dir;
            after_image[4] = 15;
            after_image[5] = dash_count_at_dash;
            after_images[5] = after_image;
        }
        can_fast_fall = true;
        hsp *= 0.7;
        if (vsp < 0) {
            vsp *= 0.7;
        } else {
            vsp *= 0.8;
        }
    } else if (window == 5) {
        if (!free && !dash_jump) {
            if (!dash_cancel) {
                var dir8 = (floor((joy_dir + 22.5) / 45.0) * 45.0) % 360;
                if (!joy_pad_idle && ((spr_dir > 0 && dir8 == 0) || (spr_dir < 0 && dir8 == 180))) {
                    set_state(PS_DASH);
                }
            }
            if (!has_hit) {
                dash_delay = 15;
            }
            if (grounded_dash && dash_count_at_dash == 2) {
                dash_count = 2;
            }
        }
        if (mist_dash) {
            dash_count = 1;
        }
    }
    if (mist_dash && !in_mist && !out_of_mist) {
        if (!runeA) {
            if (dream_mist != noone) {
                dream_mist.destroy = true;
                dream_mist.destroy_delay = 20;
                dream_mist = noone;
            }
        }
        destroy_hitboxes();
        if (dash_jump && (dash_dir % 180 == 0 || dash_dir % 360 == 45 || dash_dir % 360 == 135)) {
            dash_jump_delay = 10;
            window = 5;
            window_timer = 0;
            if (vsp > -7.00) vsp = -7.00;
            hsp = dash_x * (runeH ? 0.9 : 0.8);
        }
        out_of_mist = true;
    }
    if (window >= 3 && window <= 4) {
        if (in_mist) {
            if (time_in_mist == 0) {
                destroy_hitboxes();
                hitbox = create_hitbox(AT_EXTRA_1, 3, x, y - 20);
                sound_play(sound_get("mist_dash"));
            }
            after_image = array_create(6);
            after_image[0] = x;
            after_image[1] = y;
            after_image[2] = spr_dir;
            after_image[3] = dash_dir;
            after_image[4] = 12;
            after_image[5] = -1;
            after_images[time_in_mist] = after_image;
            fall_through = true;
            mist_dash = true;
            invincible = true;
            window = 3;
            window_timer = 7;
            if (time_in_mist > 1) {
                var hit_wall = false;
                if ((dash_dir % 90 == 45 && (prev_x == x || prev_y == y)) ||
                    (prev_x == x && prev_y == y)) {
                    hit_wall = true;
                }
                if (hit_wall) {
                    if (!runeB) {
                        take_damage(player, -1, 10);
                        mist_hit_wall = true;
                        spawn_hit_fx(floor(x), floor(y - 12), 66);
                        sound_play(asset_get("sfx_blow_heavy1"));
                    } else {
                        create_deathbox(x, y, 10, 10, player, true, 0, 1, 0)
                    }
                    if (!free) set_state(PS_PRATLAND);
                    if (dream_mist != noone) {
                        dream_mist.destroy = true;
                        dream_mist = noone;
                    }
                    out_of_mist = true;
                    window = 5;
                }
            }
            time_in_mist += 1;
        }
    }
    prev_x = x;
    prev_y = y;
    if (jump_down && !jump_held) {
        dash_jump = true;
    }
    if (jump_held && !jump_down) {
        jump_held = false;
    }
    if (window >= 3 && window <= 5) {
        if ((window_timer >= 3 || window == 4) && dash_jump && !in_mist && !mist_hit_wall) {
            if (!free) {
                destroy_hitboxes();
                dash_jump_delay = 10;
                window = 5;
                window_timer = 0;
                if (dash_dir == 225 || dash_dir == 315) {
                    vsp = -7.50;
                    hsp = dash_x * (runeH ? 1.7 : 1.2);
                    sound_play(sound_get("dash_hyper"));
                } else if (dash_dir % 180 == 0) {
                    vsp = -jump_speed;
                    hsp = dash_x * (runeH ? 0.9 : 0.7);
                    sound_play(sound_get("dash_super"));
                }
                super_dash = true;
                super_dash_timer = 0;
            } else if (dash_dir % 360 == 90) {
                if (adjacent_wall != 0) {
                    destroy_hitboxes();
                    dash_jump_delay = 10;
                    window = 5;
                    window_timer = 0;
                    wallbounce = 1;
                    vsp = -15.00;
                    hsp = -walljump_hsp * (adjacent_wall > 0 ? 1 : -1);
                    wallbounce_speed = hsp;
                    sound_play(sound_get("dash_wallbounce"));
                }
                super_dash = true;
                super_dash_timer = 0;
            }
        }
        
    }
    if (was_parried) {
        vsp *= 0.1;
        hsp *= 0.1;
    }
}

if (attack == AT_DTILT) {
    if (window == 2 && window_timer >= 12) {
        can_jump = true;
    }
}

if (attack == AT_NSPECIAL) {
    can_move = false;
    can_fast_fall = false;
    can_nspecial = false;
    if (window == 4 && window_timer == 12){
        dash_count = 2;
        refresh_hair = 8;
        stamina = max_stamina;
    }
}

if (attack == AT_JAB) {
    if (window == 6 && window_timer == 1 && badeline != noone) {
        window = 8;
        window_timer = 0;
    }
    if (window == 3 && !joy_pad_idle && has_hit) {
        can_shield = true;
    }
}

if (attack == AT_FSPECIAL) {
    can_move = false;
    can_fast_fall = false;
    if (window == 1) {
        if (window_timer == 1) {
            badeline_shots = 0;
            badeline_shot_timer = 0;
        }
    } else if (window == 2) {
        badeline_shot_timer += 1;
        if (window_timer + 1 == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)) {
            badeline_shots += 1;
            badeline_shot_timer = 0;
            //stamina -= stamina_cost_fspecial;
            if (special_down && badeline_shots < 3 /*&& stamina >= stamina_cost_fspecial*/ ) {
                window_timer = 0;
                window = 2;
            }
        }
        /* <- Remove this to make fspecial cancellable mid charge
        if (!special_down && badeline_shots > 0) {
            badeline_shot_timer = 0;
            window = 3;
            window_timer = 0;
        }*/
    } else if (window == 3) {
        if (window_timer == 1) {
            badeline = array_create(5);
            badeline[0] = AT_FSPECIAL;
            badeline[1] = x;
            badeline[2] = y;
            badeline[3] = 60;
            badeline[4] = spr_dir;
            target_obj = noone;
            for (i = 0; i < instance_number(oPlayer); i++) {
                instance = instance_find(oPlayer, i);
                if (instance != noone) {
                    if (instance != id && (target_obj == noone || point_distance(x, y, instance.x, instance.y) < point_distance(bx, by, target_obj.x, target_obj.y))) {
                        target_obj = instance;
                    }
                }
            }
            badeline_shot_angle = point_direction(x - (spr_dir * 22), y - 44, target_obj.x, target_obj.y - target_obj.char_height / 2);
        }
    }
} else if (badeline == noone) {
    badeline_shots = 0;
    badeline_shot_timer = 0;
}

if (attack == AT_USPECIAL){
    if ((window == 1 && window_timer <= 3) || (window == 2 && window_timer >= 6)) {
        refresh_hair = 1;
    }
    if (window == 1) {
        can_fast_fall = false;
        can_move = false;
    }
}

if (attack == AT_UAIR || attack == AT_DAIR) {
    can_fast_fall = false;
    if (has_hit && window < 4) {
        if (random_func(0, 1, true)==1) {
            sound_play(sound_get("bounce_face_hit1"));
        } else {
            sound_play(sound_get("bounce_face_hit2"));
        }
        window = 4;
        window_timer = 0;
    }
}

if (attack == AT_BAIR) {
    if (window == 1 && window_timer == get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH)) {
        spr_dir *= -1;
    }
}

if (attack == AT_FTILT) {
    if (window == 2 && window_timer == get_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH)) {
        strawberry_effect = array_create(3);
        strawberry_effect[0] = x + (48 * spr_dir);
        strawberry_effect[1] = y + 46;   
        strawberry_effect[2] = 30;
    }
}

if (attack == AT_USTRONG) {

    if (window == 3 && window_timer == get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH)) {
        if (winged_strawberry == noone) {
            winged_strawberry = instance_create(x, y - 72, "obj_article1");
            winged_strawberry.player_id = id;
            winged_strawberry.player = player;
        } else if (runeG && winged_strawberry2 == noone) {
            winged_strawberry2 = instance_create(x, y - 72, "obj_article1");
            winged_strawberry2.player_id = id;
            winged_strawberry2.player = player;
        } else if (runeG && winged_strawberry3 == noone) {
            winged_strawberry3 = instance_create(x, y - 72, "obj_article1");
            winged_strawberry3.player_id = id;
            winged_strawberry3.player = player;
        } else {
            strawberry_effect = array_create(3);
            strawberry_effect[0] = x;
            strawberry_effect[1] = y;
            strawberry_effect[2] = 30;
        }
    }
}

if (attack == AT_DSPECIAL) {
    can_fast_fall = false;
    can_move = false;
    can_dspecial = false;
    if (runeK) {
        if (window == 1) {
            if (window_timer == 1) {
                badeline = array_create(5);
                badeline[0] = AT_DSPECIAL;
                badeline[1] = x;
                badeline[2] = y;
                badeline[3] = 0;
                badeline[4] = spr_dir;
            }
        }
    } else {
        if (window == 1) {
            if (window_timer % 8 == 1) {
                spawn_hit_fx(floor(x), floor(y - 20), 256);
            }
        }
        if (window == 1 && window_timer == 1) {
            if (dream_mist != noone) {
                dream_mist.destroy = true;
                dream_mist = noone;
            }
        }
        if (dream_mist == noone) {
            move_cooldown[AT_DSPECIAL] = 180
            dream_mist = instance_create(x, y - 22, "obj_article2");
            dream_mist.player_id = id;
            dream_mist.player = player;
        }
    }
}

if (attack == AT_USPECIAL && badeline != noone) {
    badeline = noone;
}

if (attack == AT_EXTRA_2 && window == 2) {
    hsp = last_climbing * 3.0;
}