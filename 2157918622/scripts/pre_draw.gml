//pre draw

shader_start();

if (nspecialused < 18){
	draw_sprite_ext(sprite_get("nspecial_effect"), floor(nspecialused / 4), x - (2 * spr_dir), y + 2, spr_dir, 1, 0, c_white, 1);
}

if (attack == AT_FSPECIAL){
    if (((window == 2 && window_timer > 1) || window == 3 || whip_tether) && state != PS_AIR_DODGE && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PARRY){
        var whip_dir = point_direction(x,y-56,fspecial_point[0],fspecial_point[1]);
        if (spr_dir == -1) whip_dir += 180;
        var whip_dist = point_distance(x,y-56,fspecial_point[0],fspecial_point[1]);
        
        //since the arm sprite's origin isn't centered, do some math
        if (whip_dist < 7) whip_dist = 7; //needs minimum distance to prevent arcsin errors
        var arm_dir = darcsin(6 / whip_dist);
        arm_dir = whip_dir - arm_dir*spr_dir;
        if (spr_dir == -1) arm_dir += 180;
        
        if (whip_dist > 64){
            //var rope_x = x - (32 * spr_dir) + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(54, arm_dir);
            //var rope_y = y - 20 + lengthdir_y(6, arm_dir+90*spr_dir) + lengthdir_y(54, arm_dir);
            var rope_x = x + (32 * spr_dir);
            var rope_y = y - 24;
            
            var rope_length = 0;
            var max_rope_length = point_distance(rope_x, rope_y, fspecial_point[0], fspecial_point[1]);
            if (window == 2){
                var window_length = get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH);
                max_rope_length = max_rope_length * (window_timer / window_length);
            }
            while (rope_length < max_rope_length-16){
                draw_sprite_ext(sprite_get("uspecial_rope"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                rope_x += lengthdir_x(16, arm_dir);
                rope_y += lengthdir_y(16, arm_dir);
                rope_length += 16;
            }
            draw_sprite_ext(sprite_get("uspecial_rope"), 1, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
        }
    }
}

shader_end();