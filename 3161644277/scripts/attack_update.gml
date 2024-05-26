//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
    was_parried = false;
}


if (attack == AT_DAIR){
    can_wall_jump = true;
    if (window == 2){
        vsp = vsp + 1;
    }
    if (window == 3 && window_timer < 3){
        destroy_hitboxes();
        shake_camera(5, 5);
    }
}

if (attack == AT_DTILT){
    move_cooldown[AT_DTILT] = 10;
}


if (attack == AT_UTILT){
    if (window >= 2){ 
        hud_offset = 70;
    }
}

if (attack == AT_USTRONG){
    if (window == 2){ 
        hsp = (right_down - left_down) * 4;
        if (hsp != 0) {
            ustrong_walk = ustrong_walk + 0.25;
            set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, ustrong_walk + 5);
        }
        else {
            set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
        }
        if (ustrong_walk > 3){
            ustrong_walk = 1;
        }
    }
}

if (attack == AT_DSTRONG){
    if (window == 3){ 
        if (has_hit == false){
            hsp = (right_down - left_down) * 3;
        }
    }
}

if (attack == AT_DATTACK){
    can_fast_fall = false;
    if (window == 3){ 
        can_attack = true;
        can_jump = true;
    }
    if (window == 4 && window_timer < 2){
        shake_camera(4, 5);
    }
}

if (attack == AT_FTILT){
    move_cooldown[AT_FTILT] = 20;
    if (window == 3 && window_timer > 6){ 
        if (special_down){
            set_attack(AT_FSPECIAL);
            window = 2;
            sound_play(sound_get("dash"));
        }
        else {
            set_state(PS_IDLE);    
        }
        window_timer = 0;
        destroy_hitboxes();
    }
    if ((has_hit || was_parried == true) && window == 2){
        old_vsp = 0
        old_hsp = -10 * spr_dir
        window = 4;
        window_timer = 0;
        destroy_hitboxes();
        sound_stop(sound_get("grabdash"));
        pepperpose = random_func_2(1, 3, 1);
        if (pepperpose == 1){
            set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 11);
        }
        else if (pepperpose == 2){
            set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
        }
        else {
            set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 13);
        }

    }
}
if (attack == AT_NSPECIAL){
    if (window == 1 && window_timer == 6){
        if (!free){
            shake_camera(4, 5);
            sound_play(sound_get("slam"));
        }
        else {
            sound_play(asset_get("sfx_kragg_rock_shatter"));
        }        
    }
    if (window == 2 && window_timer == 1){
        if !instance_exists(my_player_article) {
            my_player_article = instance_create(x+30*spr_dir, y-70,"obj_article1");
        }
    }
}
if (attack == AT_FSPECIAL){
    if (window == 1){
        dash_time = 0;
    }
    if (window == 2 || window == 4){
        hsp = 10 * spr_dir;
        if (dash_time > 7){
            can_jump = true;
        }
        dash_time++;
        if (special_pressed && !right_down && !left_down && move_cooldown[AT_NSPECIAL] == 0 || special_pressed && up_down || special_pressed && down_down ){
            set_state(PS_IDLE);
            window_timer = 0;
            destroy_hitboxes();
            sound_stop(sound_get("dash"));
        }
        var holding_back = (right_down - left_down == -1 * sign(spr_dir)); // holding back var from mr nart cuz im bad
        if (special_pressed && holding_back && window == 2 && !has_hit){
            dash_time = 0;
            window = 3;
            window_timer = 0;
            spr_dir *= -1;
            destroy_hitboxes();
            sound_stop(sound_get("dash"));
            sound_play(sound_get("pepperturn"));
        }
        if (has_hit) || (place_meeting( x+10 * spr_dir, y-1, asset_get("par_block")) || was_parried == true){
            dash_time = 0;
            window = 5;
            window_timer = 0;
            destroy_hitboxes();
            can_jump = false;
            if (has_hit){
                old_hsp = -5 * spr_dir;
                old_vsp = -5;
            }
            else{
                hsp = -5 * spr_dir;
                vsp = -5;
                sound_play(sound_get("slam"));
            }
            shake_camera(5, 5);
            sound_stop(sound_get("dash"));
        }
    }
    can_fast_fall = false;
    can_move = false;
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer < 2){
        hsp = 5 * spr_dir;
    }
    if (window == 2){
        can_wall_jump = true;
    }
    if (window == 3 && window_timer < 3){ 
        sound_stop(sound_get("uspec"));
        shake_camera(5, 5);
        destroy_hitboxes();
    }
    
    if (window == 4){
        can_move = false;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2){
        if (free) {
            vsp = -5;
        }
        pepperdrawing = random_func_2(1, 3, 1);
        if (pepperdrawing == 1){
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj2"));
        }
        else if (pepperdrawing == 2){
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj3"));
        }
        else {
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj"));
        }
    }
    can_fast_fall = false;
    can_move = true;
    move_cooldown[AT_DSPECIAL] = 100;
}

#define CreateAfterimage()
{
    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:c_white, timer:0, timerMax:15};
}