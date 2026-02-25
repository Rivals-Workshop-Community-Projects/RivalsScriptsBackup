// pre-draw is a script that draws things behind the player.

if vfxTimer > 0{
    
    var rotation = get_hitbox_value(attack, hit_player_obj.last_hbox_num, HG_ANGLE);
    var index = 5 - floor(vfxTimer);
    var alpha_ = (vfxTimer/6);
    if spr_dir = -1 rotation = 180 - get_hitbox_value(attack, hit_player_obj.last_hbox_num, HG_ANGLE);
    shader_start();
    //draw_sprite_ext(sprite_get("levelup_blue"), index, ultimateTargetPos[0], ultimateTargetPos[1]-(hit_player_obj.char_height/2), 1, 1, rotation, c_white, 1);
    draw_sprite_ext(sprite_get("azula_ultimate_hit"), index, ultimateTargetPos[0], ultimateTargetPos[1]-(hit_player_obj.char_height/2), 2, 2, rotation, c_white, 1);
    //draw_sprite_ext(sprite_get("ion_explosion"), index, ultimateTargetPos[0], ultimateTargetPos[1]-(hit_player_obj.char_height/2), 1, 1, rotation, c_white, 1);
    shader_end();
}

if has_rune("I"){
    
    var drawBair = (attack == AT_BAIR && state == PS_ATTACK_AIR && window == 2);

    if drawBair && plus_active{
        shader_start();
        draw_sprite_ext(sprite_get("bair_plus"), clamp(0, 2, window_timer-1), x, y-12, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
    
}

if has_rune("L"){
    
    if comboLevel >= 1{
        var col = afterImageCols[comboLevel];
        gpu_set_fog(1, col, 0, 1);
        for (var s = 0; s < array_length(afterImageArray); s++){
           
            var alpha = afterImageArrayTimer[s]/3.5;
            draw_sprite_ext(afterImageArray[s][0], afterImageArray[s][1], afterImageArray[s][2], afterImageArray[s][3], 1*afterImageArray[s][4], 1, 0, c_white, alpha);
        }
        gpu_set_fog(0, c_white, 0, 0);
    }
}