//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack){
    case AT_TAUNT:
    set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get(string(spr_dir) + "_taunt"));
    if(window == 2 || window == 3) && menu_version == 0{
        if((right_pressed || (right_down && select_timer = 0)) && item_id < 5){
            item_id++;
            select_timer = 13;
            sound_play(sound_get("hud_scroll"));
        }else if((right_pressed || (right_down && select_timer = 0)) && item_id == 5){
            item_id = 0;
            select_timer = 13;
            sound_play(sound_get("hud_scroll"));
        }else if((left_pressed || (left_down && select_timer = 0)) && item_id > 0){
            item_id--;
            select_timer = 13;
            sound_play(sound_get("hud_scroll"));
        }else if((left_pressed || (left_down && select_timer = 0)) && item_id == 0){
            item_id = 5;
            select_timer = 13;
            sound_play(sound_get("hud_scroll"));
        }
        if(select_timer > 0){
            select_timer--;
        }
    }
    if(taunt_down && window == 2){
        openmenu = false;
        window = 4;
        window_timer = 0;
        if(items_select[0] == 1 || items_select[1] == 1 || items_select[2] == 1) && (has_rune("N")? hud_beam_cooldown >= 0: hud_beam_cooldown == 0){
            hud_beam_cooldown = (has_rune("A")? 1500: 900);
            power_ups[0] = items_select[0];
            power_ups[1] = items_select[1];
            power_ups[2] = items_select[2];
        }
        if(items_select[3] == 1 || items_select[4] == 1) && (has_rune("N")? hud_missile_cooldown >= 0: hud_missile_cooldown == 0){
            hud_missile_cooldown = (has_rune("A")? 1500: 900);
            power_ups[3] = items_select[3];
            power_ups[4] = items_select[4];
        }
        if(items_select[5] == 1) && (has_rune("N")? hud_flash_shift_cooldown >= 0: hud_flash_shift_cooldown == 0){
            hud_flash_shift_cooldown = (has_rune("A")? 1300: 800);
            power_ups[5] = items_select[5];
        }
    }
    if(attack_pressed && menu_version == 0 && menu_y == -42){
        if(item_id < 3 && (has_rune("N")? hud_beam_cooldown >= 0: hud_beam_cooldown == 0)){
            if(items_select[0] == 0 && item_id == 0) || (items_select[1] == 0 && item_id == 1) || (items_select[2] == 0 && item_id == 2){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
            }
        }else if(item_id > 2 && item_id < 5 && (has_rune("N")? hud_missile_cooldown >= 0: hud_missile_cooldown == 0)){
            if(items_select[3] == 0 && item_id == 3) || (items_select[4] == 0 && item_id == 4){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
            }
        }else if(item_id == 5 && (has_rune("N")? hud_flash_shift_cooldown >= 0: hud_flash_shift_cooldown == 0)){
            if(items_select[5] == 0 && item_id == 5){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
            }
        }
        items_select[item_id] = 1;
    }else if(menu_version == 1 && menu_y == -42){
        if(left_pressed){
            item_id = 0;
            if(hud_beam_cooldown == 0 && items_select[0] == 0){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
                items_select[item_id] = 1;
            }
        }else if(up_pressed){
            item_id = 1;
            if(hud_beam_cooldown == 0 && items_select[1] == 0){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
                items_select[item_id] = 1;
            }
        }else if(right_pressed){
            item_id = 2;
            if(hud_beam_cooldown == 0 && items_select[2] == 0){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
                items_select[item_id] = 1;
            }
        }else if(attack_pressed){
            item_id = 3;
            if(hud_missile_cooldown == 0 && items_select[3] == 0){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
                items_select[item_id] = 1;
            }
        }else if(special_pressed){
            item_id = 4;
            if(hud_missile_cooldown == 0 && items_select[4] == 0){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
                items_select[item_id] = 1;
            }
        }else if(down_pressed){
            item_id = 5;
            if(hud_flash_shift_cooldown == 0 && items_select[5] == 0){
                instance_create(x - 10, y - 90, "obj_article1");
                sound_play(sound_get("hud_select"));
                window = 3;
                window_timer = 0;
                items_select[item_id] = 1;
            }
        }
    }
    break;
    
    case AT_DSPECIAL:
    can_fast_fall = false;
    set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get(string(spr_dir) + "_ball"));
    set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_ball_hurt"));
    if((special_pressed || shield_pressed || taunt_pressed) && window == 2){
        window = 3;
        window_timer = 0;
        ball_angle = 0;
        sprite_change_offset("1_ball", 24, 47);
        sprite_change_offset("-1_ball", 24, 47);
    }
    if(window == 2){
        sprite_change_offset("1_ball", 24, 40);
        sprite_change_offset("-1_ball", 24, 40);
        draw_y = -14;
        if(left_down){
            spr_dir = -1;
            ball_hsp -= (ball_hsp = -6? 0: 1.5);
            hsp = ball_hsp;
        }else if(right_down){
            spr_dir = 1;
            ball_hsp += (ball_hsp = 6? 0: 1.5);
            hsp = ball_hsp;
        }else{
            ball_hsp = 0;
            if(place_meeting(x, y, pHitBox) == false && place_meeting(x, y, obj_article1) == false && hsp != 0){
                if(free){
                    hsp = 0
                }else{
                    hsp -= 0.1 * spr_dir;
                }
            }
        }
        if(jump_down && !free){
            sound_play(sound_get("ball_jump"));
            vsp = -8;
        }
        if(!free && freee != free){
            sound_play(sound_get("ball_land"))
        }
        freee = free;
    }else{
        draw_y = 0;
    }
    if(hsp > 0){
        ball_angle -= (free? 5: 10 * abs(hsp) / 6);
        if(dspecial_sound == 0 && !free){
            dspecial_sound = 1;
            sound_play(sound_get("ball_roll"), true);
        }else if(free){
            dspecial_sound = 0;
            sound_stop(sound_get("ball_roll"));
        }
    }else if(hsp < 0){
        ball_angle += (free? 5: 10 * abs(hsp) / 6);
        if(dspecial_sound == 0 && !free){
            dspecial_sound = 1;
            sound_play(sound_get("ball_roll"), true);
        }else if(free){
            dspecial_sound = 0;
            sound_stop(sound_get("ball_roll"));
        }
    }else{
        dspecial_sound = 0;
        sound_stop(sound_get("ball_roll"));
    }
    //attacks
    if(window == 2 && attack_pressed && bomb_timer == 0){
        if(has_rune("L")){
            bomb_timer = 30;
            bomb_type = 1;
            boom = instance_create(x, y - 10, "obj_article1");
            sound_play(sound_get("power_deploy"));
        }else{
            bomb_type = 0;
            instance_create(x, y - 10, "obj_article1");
            bomb_timer = 12;
            sound_play(sound_get("bomb_deploy1"), false, false, 0.6);
            sound_play(sound_get("bomb_deploy2"), false, false, 0.6);
        }
    }
    if(window == 2){
        spr_angle = ball_angle;
    }else{
        spr_angle = 0;
    }
    //spread
    if(spreading == 1 && window == 1 && state_timer == 6){
        spreading = 0;
        for(i = 0; i < 5; i++){
            bomb_type = 0;
            spread[i] = instance_create(x, y - 10, "obj_article1");
            sound_play(sound_get("bomb_deploy1"), false, false, 0.6);
            sound_play(sound_get("bomb_deploy2"), false, false, 0.6);
            spread[i].vsp = spreadvsp[i];;
            spread[i].spread = 1;
            spread[i].hsp = spreadhsp[i];
            spread[i].loop = random_func_2(floor(x % 200), 2, true) + 1;
        }
    }
    //power
    if(window == 2 && attack_down && power_charge < 100 && power_cooldown <= 0 && power_bomb_amount > 0){
        power_charge++;
    }else if(!attack_down){
        if(power_charge >= 90){
            power_cooldown = 400;
            power_bomb_amount--;
            bomb_type = 1;
            instance_create(x, y - 10, "obj_article1");
            sound_play(sound_get("power_deploy"));
        }
        power_charge = 0;
    }
    if(power_charge == 40){
        sound_play(sound_get("power_charge"));
    }
    if(power_charge == 90){
        sound_play(sound_get("power_ready"));
    }
    
    //cross
    if(up_strong_pressed ||  left_strong_pressed || right_strong_pressed ||  down_strong_pressed) && cross_timer = 0{
        cross = instance_create(x, y - 14, "obj_article1");
        cross.attack = AT_DSTRONG;
        cross.quick = true;
        cross_timer = (has_rune("B")? 10: 100);
    }
    break;
    
    case AT_NSPECIAL:
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get(string(spr_dir) + "_nspecial"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get(string(spr_dir) + "_nspecial_air"));
    set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_nspecial_hurt"));
    set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get(string(spr_dir) + "_nspecial_air_hurt"));
    set_num_hitboxes(AT_NSPECIAL, (power_ups[0] = 0? 1: 3));
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, (power_ups[2] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, (power_ups[2] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, (power_ups[1] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, (power_ups[1] = 1? 11: 0));
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, (power_ups[2]?1: 0));
    set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, (charge = 90 || has_rune("M")? 46: 26));
    set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, (charge = 90 || has_rune("M")? 34: 20));
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, (charge = 90 || has_rune("M")? 7: (power_ups[1] = 1? (has_rune("J")? 8: 1): (has_rune("J")? 8: 0))));
    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, (charge = 90 || has_rune("M")? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, (charge = 90 || has_rune("M")? 8: (power_ups[1] = 1? 7: 0)));
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, (charge = 90 || has_rune("M")? 3: 0));
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, (power_ups[2] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, (power_ups[2] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, (power_ups[1] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, (power_ups[1] = 1? 11: 0));
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, (power_ups[2]?1: 0));
    set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, (charge = 90 || has_rune("M")? 46: 26));
    set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, (charge = 90 || has_rune("M")? 34: 20));
    set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, (charge = 90 || has_rune("M")? 7: (power_ups[1] = 1? (has_rune("J")? 8: 1): (has_rune("J")? 8: 0))));
    set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, (charge = 90 || has_rune("M")? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, (charge = 90 || has_rune("M")? 8: (power_ups[1] = 1? 7: 0)));
    set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, (charge = 90 || has_rune("M")? 3: 0));
    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, (power_ups[2] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, (power_ups[2] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, (power_ups[1] = 1? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, (power_ups[1] = 1? 11: 0));
    set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, (power_ups[2]?1: 0));
    set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, (charge = 90 || has_rune("M")? 46: 26));
    set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, (charge = 90 || has_rune("M")? 34: 20));
    set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, (charge = 90 || has_rune("M")? 7: (power_ups[1] = 1? (has_rune("J")? 8: 1): (has_rune("J")? 8: 0))));
    set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, (charge = 90 || has_rune("M")? 1: 0));
    set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, (charge = 90 || has_rune("M")? 8: (power_ups[1] = 1? 7: 0)));
    set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, (charge = 90 || has_rune("M")? 3: 0));
    if(!special_down && window == 2 && window_timer >= 5){
        window = (beam_sprite = 0? 3: (beam_sprite = 1? 4: 5));
        window_timer = 0;
    }else if(special_down && window == 2 && charge < 90){
        charge++;
    }else if (window == 1 && charge != 90) || (window == 6 && charge != 90) || (window >= 3 && window <= 5 && window_timer >= 2){
        charge = 0;
        sound_stop(sound_get("beam_wide_charging"));
        sound_stop(sound_get("beam_wide_charged"));
        sound_stop(sound_get("beam_normal_charging"));
        sound_stop(sound_get("beam_normal_charged"));
        sound_stop(sound_get("beam_plasma_charging"));
        sound_stop(sound_get("beam_plasma_charged"));
        sound_stop(sound_get("beam_wave_charging"));
        sound_stop(sound_get("beam_wave_charged"));
        sound_stop(sound_get("beam_wave_charging"));
        sound_stop(sound_get("beam_wave_charged"));
    }
    if(shield_pressed && window == 2 && charge == 90){
        window = 6;
        window_timer = 0;
        sound_stop(sound_get("beam_wide_charging"));
        sound_stop(sound_get("beam_wide_charged"));
        sound_stop(sound_get("beam_normal_charging"));
        sound_stop(sound_get("beam_normal_charged"));
        sound_stop(sound_get("beam_plasma_charging"));
        sound_stop(sound_get("beam_plasma_charged"));
        sound_stop(sound_get("beam_wave_charging"));
        sound_stop(sound_get("beam_wave_charged"));
        sound_stop(sound_get("beam_wave_charging"));
        sound_stop(sound_get("beam_wave_charged"));
    }
    if(jump_pressed && window == 2 && djumps < max_djumps){
        if(free){
            set_state(PS_DOUBLE_JUMP);
        }else{
            set_state(PS_JUMPSQUAT);
        }
    }
    if(down_pressed && charge == 90){
        spreading = 1;
        charge = 0;
        set_attack(AT_DSPECIAL);
        sound_stop(sound_get("beam_wide_charging"));
        sound_stop(sound_get("beam_wide_charged"));
        sound_stop(sound_get("beam_normal_charging"));
        sound_stop(sound_get("beam_normal_charged"));
        sound_stop(sound_get("beam_plasma_charging"));
        sound_stop(sound_get("beam_plasma_charged"));
        sound_stop(sound_get("beam_wave_charging"));
        sound_stop(sound_get("beam_wave_charged"));
        sound_stop(sound_get("beam_wave_charging"));
        sound_stop(sound_get("beam_wave_charged"));
    }
    switch(beam_sprite){
        case 0:
        if(power_ups[0] == 1){
            if(charge == 24){
                sound_play(sound_get("beam_wide_charging"));
            }
            if(charge == 76 || charge == 90) && c_sound == 0{
                c_sound = 1;
                sound_play(sound_get("beam_wide_charged"), true);
            }
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, (charge >= 90? sound_get("beam_wide_chargeshot"): sound_get("beam_wide_shot")));
        }else{
            if(charge == 24){
                sound_play(sound_get("beam_normal_charging"));
            }
            if(charge == 76 || charge == 90) && c_sound == 0{
                c_sound = 1;
                sound_play(sound_get("beam_normal_charged"), true);
            }
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, (charge >= 90? sound_get("beam_normal_chargeshot"): sound_get("beam_normal_shot")));
        }
        set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, hit_0);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_0);
        set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, hit_0);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, hit_0);
        set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hit_0);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, hit_0);
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, (charge = 90 || has_rune("M")? 8: 1));
        set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, (charge = 90 || has_rune("M")? 8: 1));
        set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, (charge = 90 || has_rune("M")? 8: 1));
        break;
        case 1:
        set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, hit_1);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_1);
        set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, hit_1);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, hit_1);
        set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 4);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hit_1);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, hit_1);
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, (charge = 90 || has_rune("M")? 9: 2));
        set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, (charge = 90 || has_rune("M")? 9: 2));
        set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, (charge = 90 || has_rune("M")? 9: 2));
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, (charge >= 90? sound_get("beam_plasma_chargeshot"): sound_get("beam_plasma_shot")));
        if(charge == 24){
            sound_play(sound_get("beam_plasma_charging"));
        }
        if(charge == 76 || charge == 90) && c_sound == 0{
            c_sound = 1;
            sound_play(sound_get("beam_plasma_charged"), true);
        }
        break;
        case 2:
        set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, hit_2);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_2);
        set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, hit_2);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, hit_2);
        set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hit_2);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, hit_2);
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, (charge = 90 || has_rune("M")? 9: 2));
        set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, (charge = 90 || has_rune("M")? 9: 2));
        set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, (charge = 90 || has_rune("M")? 9: 2));
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, (charge >= 90? sound_get("beam_wave_chargeshot"): sound_get("beam_wave_shot")));
        if(charge == 24){
            sound_play(sound_get("beam_wave_charging"));
        }
        if(charge == 76 || charge == 90) && c_sound == 0{
            c_sound = 1;
            sound_play(sound_get("beam_wave_charged"), true);
        }
        break;
        case 3:
        set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, hit_3);
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_3);
        set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, hit_3);
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, hit_3);
        set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get(string(beam_sprite) + (charge = 90 || has_rune("M")? "_charge": "_shot")));
        set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hit_3);
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, hit_3);
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, (charge = 90 || has_rune("M")? 10: 3));
        set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, (charge = 90 || has_rune("M")? 10: 3));
        set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, (charge = 90 || has_rune("M")? 10: 3));
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, (charge >= 90? sound_get("beam_wave_chargeshot"): sound_get("beam_wave_shot")));
        if(charge == 24){
            sound_play(sound_get("beam_wave_charging"));
        }
        if(charge == 76 || charge == 90) && c_sound == 0{
            c_sound = 1;
            sound_play(sound_get("beam_wave_charged"), true);
        }
        break;
    }
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, (power_ups[1]? 15: 6));
    if(window >= 3 && window < 6 && special_down && window_timer >= 4 && (has_rune("O")? special_down: !power_ups[1])){
        window = 2;
        window_timer = 0;
    }
    break;
    
    case AT_USPECIAL:
    move_cooldown[AT_USPECIAL] = 10;
    fall_through = true;
    set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(string(spr_dir) + "_uspecial"));
    if(window == 1 || window >= 7){
        hsp = 0;
        vsp = 0;
    }
    if(window <= 6 && spark_timer > 0 && spark_timer <= 5){
        spark_timer = 15;
    }
    if(spark_timer > 0 && window <= 6){
        soft_armor = 999999999;
        set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 12);
        set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 2);
        set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
        set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 112);
        set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 12);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 2);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 15);
        set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
        set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 16);
    }
    if(window >= 7 && spark_timer > 0){
        soft_armor = 0;
        spark_timer = 0;
        set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1);
        set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
        set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 111);
        set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
        set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 13);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 13);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 13);
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 13);
        set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 13);
        set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
        set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
    }
    if(window == 1){
        char_height = lerp(char_height, 80, 0.6);
        if(right_down){
            spr_dir = 1;
        }else if(left_down){
            spr_dir = -1;
        }
        if(joy_dir >= -22.5 && joy_dir < 22.5) || (joy_dir >= 157.5 && joy_dir < 202.5){
            set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 4);
            set_window_value(AT_USPECIAL, 1, AG_WINDOW_GOTO, 4);
            set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 100);
            set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
        }else if(joy_dir >= 22.5 && joy_dir < 67.5) || (joy_dir >= 112.5 && joy_dir < 157.5){
            set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
            set_window_value(AT_USPECIAL, 1, AG_WINDOW_GOTO, 3);
            set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
            set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
        }else if(joy_dir >= 67.5 && joy_dir < 112.5){
            set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
            set_window_value(AT_USPECIAL, 1, AG_WINDOW_GOTO, 2);
            set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
            set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 100);
        }else if(joy_dir >= 247.5 && joy_dir <292.5){
            set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 6);
            set_window_value(AT_USPECIAL, 1, AG_WINDOW_GOTO, 6);
            set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
            set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 100);
        }else if(joy_dir >= 292.5 && joy_dir < 337.5) || (joy_dir >= 202.5 && joy_dir < 247.5){
            set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
            set_window_value(AT_USPECIAL, 1, AG_WINDOW_GOTO, 5);
            set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
            set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
        }
    }else{
        char_height = lerp(char_height, 60, 0.6);
    }
    if(collision_point(x + 24, y - 20, asset_get("solid_32_obj"), false, true) || collision_point(x - 24, y - 20, asset_get("solid_32_obj"), false, true)) && (window == 3 || window == 4 || window == 5){
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
        set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 8);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -44);
        window = 8;
        window_timer = 0;
    }else if(collision_point(x, y + 4, asset_get("solid_32_obj"), false, true)) && (window == 5 || window == 6){
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
        set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 9);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -24);
        window = 9;
        window_timer = 0;
    }else if(collision_point(x, y - 68, asset_get("solid_32_obj"), false, true)) && (window == 1 || window == 2){
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
        set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 7);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -48);
        window = 7;
        window_timer = 0;
    }
    break;
    
    case AT_FSTRONG:
    if(window == 2 && window_timer == 1){
        spawn_hit_fx(x + 30 * spr_dir, y - 40, diffusion1);
        spawn_hit_fx(x + 30 * spr_dir, y - 20, diffusion2);
        spawn_hit_fx(x + 30 * spr_dir, y - 60, diffusion1);
        spawn_hit_fx(x + 30 * spr_dir, y - 80, diffusion2);
        spawn_hit_fx(x + 50 * spr_dir, y - 30, diffusion1);
        spawn_hit_fx(x + 50 * spr_dir, y - 50, diffusion2);
        spawn_hit_fx(x + 50 * spr_dir, y - 70, diffusion2);
        spawn_hit_fx(x + 10 * spr_dir, y - 30, diffusion2);
        spawn_hit_fx(x + 10 * spr_dir, y - 50, diffusion2);
        spawn_hit_fx(x + 10 * spr_dir, y - 70, diffusion1);
    }
    if(window == 1 && window_timer == 18){
        sound_play(sound_get("beam_wave_charging"));
    }else if(window == 2){
        sound_stop(sound_get("beam_wave_charging"));
    }
    break;
    
    case AT_USTRONG:
    if(window == 2 && window_timer == 1){
        spawn_hit_fx(x - 30 * spr_dir, y - 110, diffusion1);
        spawn_hit_fx(x + 10 * spr_dir, y - 110, diffusion2);
        spawn_hit_fx(x - 10 * spr_dir, y - 110, diffusion1);
        spawn_hit_fx(x - 50 * spr_dir, y - 110, diffusion2);
        spawn_hit_fx(x + 0 * spr_dir, y - 130, diffusion1);
        spawn_hit_fx(x - 20 * spr_dir, y - 90, diffusion2);
        spawn_hit_fx(x - 40 * spr_dir, y - 130, diffusion2);
        spawn_hit_fx(x + 0 * spr_dir, y - 90, diffusion2);
        spawn_hit_fx(x - 20 * spr_dir, y - 130, diffusion2);
        spawn_hit_fx(x - 40 * spr_dir, y - 90, diffusion1);
    }
    if(window == 1 && window_timer == 12){
        sound_play(sound_get("beam_wave_charging"));
    }else if(window == 2){
        sound_stop(sound_get("beam_wave_charging"));
    }
    break;
    
    case AT_DSTRONG:
    if(window == 2){
        sound_play(sound_get("cross_deploy"));
        cross = instance_create(x, y - 14, "obj_article1");
        set_attack(AT_DSPECIAL);
        window = 2;
        bomb_amount = 0;
    }
    break;
    
    case AT_FSPECIAL:
    set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get(string(spr_dir) + "_" + string(missile_sprite) + "_fspecial"));
    set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get(string(spr_dir) + "_" + string(missile_sprite) + "_fspecial_air"));
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(string(missile_sprite) + "_missile"));
    missile_hit = hit_fx_create(sprite_get(string(missile_sprite) + "_missile_hit_big"), 10);
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, missile_hit);
    if(window == 2 && window_timer == 1){
        if(missile_amount > 0){
            missile_amount--;
        }
    }
    if(missile_amount == 0){
        set_num_hitboxes(AT_FSPECIAL, 0);
    }else{
        set_num_hitboxes(AT_FSPECIAL, 1);
    }
    if(has_rune("I") && window >= 2 && window_timer >= 4 && special_pressed){
        window = 1;
        window_timer = 0;
    }
    if(missile_sprite == 1){
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("super_shot"));
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 11);
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 143);
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1.1);
        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
        move_cooldown[AT_FSPECIAL] = 30;
    }else if(missile_sprite == 0){
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("missile_shot"));
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 141);
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
        move_cooldown[AT_FSPECIAL] = 30;
    }else if(missile_sprite == 2){
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("ice_shot"));
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, -1);
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
        move_cooldown[AT_FSPECIAL] = 20;
    }
    break;
    
    case AT_DATTACK:
    if(window <= 4 && spark_timer == 0){
        spark_timer = 10;
    }
    if(down_pressed && (window == 4 || window == 3)) || (!attack_down && (window == 4 || window == 3)){
        if(attack_down){
            sound_play(sound_get("boost_endspark"));
            spark_timer = 600;
        }else{
            sound_play(sound_get("boost_end"));
        }
        sound_stop(sound_get("boost_run"));
        sound_stop(sound_get("boost_start"));
        window = 5;
        window_timer = 0;
    }
    break;
    
    case AT_UTILT:
    if(window == 3 || (window == 2 && window_timer == 4)) || (has_rune("D") && window >= 2 && window <= 3){
        soft_armor = 9999999;
    }else{
        soft_armor = 0;
    }
    break;
    
    case AT_FAIR:
    if(window == 2 || (window == 1 && window_timer == 8)) || (has_rune("D") && window >= 1 && window <= 2){
        soft_armor = 9999999;
    }else{
        soft_armor = 0;
    }
    break;
    
    case AT_DTILT:
    if(jump_pressed && window == 2 && window_timer >= 5){
        set_state(PS_JUMPSQUAT);
        hsp /= 1.5;
    }
    break;
    
    case AT_DAIR:
    if(window == 3 && window_timer == 1){
        spawn_hit_fx(x -22 * spr_dir, y - 110 + 110, diffusion1);
        spawn_hit_fx(x + 18 * spr_dir, y - 110 + 110, diffusion2);
        spawn_hit_fx(x - 2 * spr_dir, y - 110 + 110, diffusion1);
        spawn_hit_fx(x - 48 * spr_dir, y - 110 + 110, diffusion2);
        spawn_hit_fx(x + 8 * spr_dir, y - 130 + 110, diffusion1);
        spawn_hit_fx(x - 12 * spr_dir, y - 90 + 110, diffusion2);
        spawn_hit_fx(x - 32 * spr_dir, y - 130 + 110, diffusion2);
        spawn_hit_fx(x + 8 * spr_dir, y - 90 + 110, diffusion2);
        spawn_hit_fx(x - 12 * spr_dir, y - 130 + 110, diffusion2);
        spawn_hit_fx(x - 32 * spr_dir, y - 90 + 110, diffusion1);
        create_hitbox(AT_DAIR, 1, x + 4 * spr_dir, y + 12);
        create_hitbox(AT_DAIR, 2, x + 4 * spr_dir, y + 12);
        sound_play(sound_get("diffusion_shot"));
    }
    break;
    
    case AT_BAIR:
    if(missile_sprite == 0){
        var sounder = sound_get("missile_hit");
        
        set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 141);
        set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.3);
        
        set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4);
        set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 141);
        set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.3);
        
        set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 4);
        set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 141);
        set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.8);
        set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
    }else if(missile_sprite == 1){
        var sounder = sound_get("super_hit");
        
        set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
        set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 143);
        set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.6);
        
        set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
        set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 143);
        set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.6);
        
        set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 6);
        set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 143);
        set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 1);
        set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.9);
        
        move_cooldown[AT_BAIR] = 25;
    }else if(missile_sprite == 2){
        var sounder = sound_get("ice_hit");
        
        set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
        set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 0);
        set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.3);
        
        set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
        set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 0);
        set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.3);
        
        set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
        set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 0);
        set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.9);
        set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
        
        move_cooldown[AT_BAIR] = 25;
    }
    switch(window){
        case 1:
        if(window_timer == 9 && missile_amount > 0){
            missile_amount--;
            set_num_hitboxes(AT_BAIR, 1);
            sound_play(sounder);
        }else if(missile_amount == 0){
            set_num_hitboxes(AT_BAIR, 0);
        }
        break;
        case 2:
        if(window_timer == 8 && missile_amount > 0){
            missile_amount--;
            set_num_hitboxes(AT_BAIR, 2);
            sound_play(sounder);
        }else if(missile_amount == 0){
            set_num_hitboxes(AT_BAIR, 0);
        }
        break;
        case 3:
        if(window_timer == 8 && missile_amount > 0){
            missile_amount--;
            set_num_hitboxes(AT_BAIR, 3);
            sound_play(sounder);
        }else if(missile_amount == 0){
            set_num_hitboxes(AT_BAIR, 0);
        }
        break;
    }
    break;
    
    case AT_NAIR:
    if(window_timer < 8 && window == 1){
        set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("somer"));
    }else if (window == 2){
        set_attack_value(AT_NAIR, AG_SPRITE, sprite_get(string(spr_dir) + "_idle_air"));
    }else{
        set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
    }
    break;
    
    case AT_JAB:
    if(window == 7 && window_timer == 1){
        sound_play(sound_get("melee_dash"), false, false, 1.5);
    }
    if(window == 7 && window_timer >= 3 && window_timer <= 9){
        soft_armor = 9999999;
    }else{
        soft_armor = 0;
    }
    
    if(window == 7 && window_timer >= 20){
        if(special_pressed && joy_pad_idle){
            set_attack(AT_NSPECIAL);
        }else if(special_pressed && (left_down || right_down)){
            set_attack(AT_FSPECIAL);
        }
    }
}