//TAUNT INDICATOR


if (GAUGE_SIG_CURRENT = 25 and GAUGE_UNLOCK = 0) {
	draw_sprite_ext(sprite_get("ui_taunt"), 0, x, y + 12, 2, 2, lock_rot, -1, 1);
	
} else if (GAUGE_SIG_CURRENT = 50 and GAUGE_UNLOCK = 1) {
	draw_sprite_ext(sprite_get("ui_taunt"), 0, x, y + 12, 2, 2, lock_rot, -1, 1);
	
} else if (GAUGE_SIG_CURRENT = 75 and GAUGE_UNLOCK = 2) {
    draw_sprite_ext(sprite_get("ui_taunt"), 0, x, y + 12, 2, 2, lock_rot, -1, 1);
	
}



if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 1) {
    if (window_timer = 1) {
        frame = 0;
        image_timer = 1;
    }
    
    if (window_timer > image_timer + 0.01) {
        frame += 1;
        image_timer = window_timer;
    }
    
    
    //draw_sprite_ext(sprite_get("uspec_guide"),0,x+lengthdir_x(50,direc),y-40+lengthdir_y(50,direc),1,1,direc-90,c_white,1);
    if (direc < 90 or direc > 270) {
        draw_sprite_ext(sprite_get("uspec_guide"), frame, x + lengthdir_x(50,direc), y - 25 + lengthdir_y(25,direc), 1, -1, direc-90, c_white,1);
    } else {
        draw_sprite_ext(sprite_get("uspec_guide"), frame, x + lengthdir_x(25,direc), y - 25 + lengthdir_y(25,direc), -1, -1, direc-90, c_white,1);
    }
    
}

shader_start();

if (attack == AT_USPECIAL and (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    //FRAMES
    if (window == 1) {
        if (window_timer = 1) {
            hookFrame = 0;
            hookTimer = 1;
        }
        if (window_timer != 1 and hookFrame < 5 and window_timer > hookTimer + 2) {
            hookFrame += 1;
            hookTimer = window_timer;
        }
    } else if (window == 2) {
        if (window_timer = 1) {
            hookFrame = 7;
            hookTimer = 1;
        }
        if (window_timer != 1 and hookFrame < 15 and window_timer > hookTimer + 2) {
            hookFrame += 1;
            hookTimer = window_timer;
        }
    } else if (window >= 3) {
        hookFrame = 17;
        
    }
    
    
    
        //draw_sprite_ext(sprite_get("uspec_guide"),0,x+lengthdir_x(50,direc),y-40+lengthdir_y(50,direc),1,1,direc-90,c_white,1);
    _hookFlip = 1;
    _xOff = -10;
    if (direc <= 90 or direc >= 270) {
        _hookFlip = 1;
    } else {
        _hookFlip = -1;
    }
    
    if (direc <= 90 and direc >= 0) {
        _xOff = 10
    } else if (direc >= 180 and direc <= 270) {
        _xOff = 10
    }
    
    draw_sprite_ext(sprite_get("HookShot"), hookFrame, x + lengthdir_x(25,direc), y - 10 + lengthdir_y(25,direc), _hookFlip, -1, direc-90, c_white,1);
}


//CODE FROM THAT PRE DRAW (DOES THE CHAIN THAT CONNECTS THE SHOT TO THE HOOK)
if attack == AT_USPECIAL && instance_exists(hook) {
    //rope_dir = point_direction(x,y,hook.x,hook.y);
     var bamboo_dir = point_direction(x,y,hook.x,hook.y);
    if (spr_dir == -1) bamboo_dir += 180;
    var bamboo_dist = point_distance(x,y,hook.x,hook.y);
    
    //since the arm sprite's origin isn't centered, do some math
    if (bamboo_dist < 7) bamboo_dist = 7; //needs minimum distance to prevent arcsin errors
    var arm_dir = darcsin(6 / bamboo_dist);
    arm_dir = bamboo_dir - arm_dir*spr_dir;
    if (spr_dir == -1) arm_dir += 180;
    if (bamboo_dist > 64){
        var rope_x = x + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(32, arm_dir);
        var rope_y = y - 5 + lengthdir_y(6, arm_dir+90*spr_dir) + lengthdir_y(32, arm_dir);
        
        var rope_length = 0;
        var max_rope_length = point_distance(rope_x, rope_y, hook.x, hook.y);
        /*if (window == 5){
            var window_length = get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
            max_rope_length = max_rope_length * (window_timer / window_length);
        }*/
        while (rope_length < max_rope_length-32){
            draw_sprite_ext(sprite_get("ropeTile"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
            rope_x += lengthdir_x(16, arm_dir);
            rope_y += lengthdir_y(16, arm_dir);
            rope_length += 16;
        }
        draw_sprite_ext(sprite_get("ropeTile"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
    }

}


shader_end();

//Phone (stay at bottom)
user_event(12);