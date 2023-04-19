shader_start();

switch (state){
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_FSPECIAL_2){
            if (window == 2 && instance_exists(pellet)){
                /*
                var bamboo_dir = point_direction(x,y-60,pellet.x,pellet.y - 30);
                if (spr_dir == -1) bamboo_dir += 180;
                var bamboo_dist = point_distance(x,y-60,pellet.x,pellet.y - 30);
                
                //since the arm sprite's origin isn't centered, do some math
                if (bamboo_dist < 7) bamboo_dist = 7; //needs minimum distance to prevent arcsin errors
                var arm_dir = darcsin(6 / bamboo_dist);
                arm_dir = bamboo_dir - arm_dir*spr_dir;
                if (spr_dir == -1) arm_dir += 180;
                
                if (bamboo_dist > 64){
                    var rope_x = x + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(54, arm_dir);
                    var rope_y = y - 30 + lengthdir_y(6, arm_dir+30*spr_dir) + lengthdir_y(54, arm_dir);
                    
                    var rope_length = 0;
                    var max_rope_length = point_distance(rope_x, rope_y, pellet.x, pellet.y);
                    if (window == 5){
                        var window_length = get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
                        max_rope_length = max_rope_length * (window_timer / window_length);
                    }
                    while (rope_length < max_rope_length-16){
                        draw_sprite_ext(sprite_get("dot"), dot_img, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                        rope_x += lengthdir_x(32, arm_dir);
                        rope_y += lengthdir_y(32, arm_dir);
                        rope_length += 32;
                    }
                    draw_sprite_ext(asset_get("empty_sprite"), dot_img, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                }
                var dot_x = 0;
                var dot_y = 0;
                if (arm_dir_number > -180)
                draw_sprite_ext(sprite_get("dot"), dot_img, x + dot_x*spr_dir, y - 30, 1, spr_dir, arm_dir, c_white, 1);*/
    //rope_dir = point_direction(x,y,pellet.x,pellet.y);
                    var bamboo_dir = point_direction(x-6*spr_dir,y-50,pellet.x,pellet.y-30);
                    if (spr_dir == -1) bamboo_dir += 180;
                    var bamboo_dist = point_distance(x-6*spr_dir,y-50,pellet.x,pellet.y-30);
                    
                    //since the arm sprite's origin isn't centered, do some math
                    if (bamboo_dist < 7) bamboo_dist = 7; //needs minimum distance to prevent arcsin errors
                    var arm_dir = darcsin(6 / bamboo_dist);
                    arm_dir = bamboo_dir - arm_dir*spr_dir;
                    if (spr_dir == -1) arm_dir += 180;
                    if (bamboo_dist > 64){
                        var rope_x = x - 2*spr_dir + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(32, arm_dir);
                        var rope_y = y - 20 + lengthdir_y(6, arm_dir+90*spr_dir) + lengthdir_y(32, arm_dir);
                        
                        var rope_length = 0;
                        var max_rope_length = point_distance(rope_x, rope_y, pellet.x, pellet.y);
                    while (rope_length < max_rope_length-32){
                        draw_sprite_ext(sprite_get("dot"), dot_img, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                        rope_x += lengthdir_x(32, arm_dir);
                        rope_y += lengthdir_y(32, arm_dir);
                        rope_length += 32;
                    }
                    draw_sprite_ext(sprite_get("dot"), dot_img, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                }
                        }
                        if (window == 2 || window == 3){
                            if (!hitpause){
                            var fspecial_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
                            arm_dir_number = fspecial_angle;
                            }
                            draw_sprite_ext(sprite_get("fspecial_2_overlay"), image_index, x, y-30, 1*spr_dir, 1, fspecial_angle, c_white, 1);
            }
        }
    break;
}

shader_end();