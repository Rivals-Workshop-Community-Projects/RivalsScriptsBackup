//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    
    if (window = 1 && !special_down){
        window = 3;
        window_timer = 1;
        sound_play(asset_get("sfx_zetter_shine"));
    }
    move_cooldown[AT_NSPECIAL] = 20;
    if (free){
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -4);
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
    }
    else {
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
    }
    if(window == 3 && window_timer == 1)
        instance_create(x,y-40,"obj_article2");
    
    if(window == 2 && window_timer == 1){
        with(obj_article2) {
          if(player_id == other.id) {
            state = 3;
            state_timer = 1;
          }
        }
    }
}

if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    move_cooldown[AT_FSPECIAL] = 40;
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
    if (window == 5){
        can_wall_jump = true;
        can_fast_fall = true;
    }
    
    if (window == 2 && window_timer == 1){
        if (spr_dir){
            if (right_down && !up_down){
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 7);
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -7);
                set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 40);
                set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 40);
            }
            else{
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 2);
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -11.5);
                set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 80);
                set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 80);
            }
        }
        if (!spr_dir){
            if (left_down && !up_down){
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 7);
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -7);
                set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 40);
                set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 40);
            }
            else{
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 2);
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -11.5);
                set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 80);
                set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 80);
            }
        }
    }
    
    if(!free)
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
    else
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
}

if (attack == AT_DSPECIAL){
    dspecUsed = true;
    if (window != 2){
        can_move = false
    }
    if (window == 2 && window_timer < 4){
        air_accel = 2;
    }
    else{
        air_accel = .25;
    }
    can_fast_fall = false;
    
    if (window == 2 && window_timer > 14){
        can_jump = true;
        can_shield = true;
    }
}

if(attack == AT_TAUNT && window == 1 && window_timer == 1){
    if (down_down){
        attack = AT_TAUNT_2;
        window = 1;
        window_timer = 0;
    }
}

if (get_player_color(player) == 28){
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("C-amogus"));
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt3"));
}
else {
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("C-boom"));
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
}

if(attack == AT_TAUNT_2){
    if(window == 1 && window_timer == 2){
        shake_camera(2,15);
    }
    
    if (window == 2){
        suppress_stage_music(0, 0.1);
    }
    
    if (taunt_down && window_timer >= 74){
        window_timer = 73;
        suppress_stage_music(0, 0.1);
    }
    if (window == 3)
        suppress_stage_music(1, 0.1);
}

if (attack == AT_DATTACK){
    can_move = false;
    can_fast_fall = false;
}

if (attack == AT_TAUNT){
    if (!spr_dir)
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt-left"));
    else
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
}

if (attack == AT_DAIR) {
    if (window == 2 && window_timer < 2){
        if(position_meeting(x+8,y+52,asset_get("par_block")) && !has_hit) {
            //has_hit = false;
            vsp = -10;
            air_accel = 1;
            can_fast_fall = false;
            sound_play(asset_get("sfx_shovel_hit_light2"));
            spawn_hit_fx(x+8,y+52,301);
            if (!attack_down){
                window = 3;
                window_timer = 1;
            }
        }
    }
    if ((window == 2 && window_timer >= 4) || (window == 3 && window_timer > 2)){
        air_accel = .25;
    }
}

if (attack == AT_DSTRONG){
    if (window == 3){
        set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
        if(left_down)
            hsp -= 0.2 + (0.005 * strong_charge);
        if(right_down)
            hsp += 0.2 + (0.005 * strong_charge);
    }
    if (window != 3){
        set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);
    }
}