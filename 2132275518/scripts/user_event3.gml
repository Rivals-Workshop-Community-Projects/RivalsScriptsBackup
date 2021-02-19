//Enemy draw event
//Used for custom draw calls

var eid = 0
if ("enemy_id" in self)
    eid = enemy_id;
switch (eid) {
    case 0: //Dracula
        var teleport_alpha = lerp(0, 1, (teleport_timer - 16) / 16);
        if (teleport_timer >= 192)
            teleport_alpha = lerp(1, 0, (teleport_timer - 144) / 16);
        var teleport_color = make_color_rgb(222, 230, 247);
        
        var spr_width = sprite_get_width(spr_index);
        var spr_height = sprite_get_height(spr_index);
        var spr_offx = sprite_get_xoffset(spr_index);
        var spr_offy = sprite_get_yoffset(spr_index);
        
        var mist_alpha = lerp(1, 0.5, (mist_timer) / 15);
        if (mist_timer > 15)
            mist_alpha = lerp(0.5, 1, (mist_timer - 15) / 15);
        if (mist_timer == -1)
            mist_alpha = 1;
            
        for (var i = spr_height; i >= 0; i -= 2) {
            var j = lerp (2, -2, (i - 80) / (spr_height));
            draw_sprite_part_ext(spr_index, img_index, 0, i - 2, spr_width, 2, round(x - spr_offx * spr_dir), round(y + (i) - spr_offy), spr_dir, image_yscale, c_white,
            mist_timer == -1 ? 1 : clamp((mist_alpha) * j, 0, 1));
            
        }
        if (teleport_alpha > 0) {
            gpu_set_fog(1, teleport_color, 0, 0);
                 draw_sprite_part_ext(spr_index, img_index, 0, 0, spr_width, spr_height, round(x - spr_offx * spr_dir), round(y - spr_offy), spr_dir, image_yscale, c_black, teleport_alpha);
            gpu_set_fog(0, 0, 0, 0);
        }    
        if (hitstop > 0) {
            gpu_set_fog(1, c_white, 0, 0);
                draw_sprite_ext(spr_index, img_index,  round(x), round(y), spr_dir, image_yscale, image_angle, c_white, 0.5);
            gpu_set_fog(0, 0, 0, 0);
        }
    break;
    case 1: //Big Drac
        var white_alpha = 0;
        var white_scale = 1;
        var white_yoff = 0;
        
        if (!done_intro) {
            if (phase == 0) {
                white_alpha = lerp(0, 1, (fade_white_timer - 120) / 64);
                white_scale = 1;
                white_yoff = 0;
            }
            else if (phase == 1) {
                white_alpha = 1;
            }
            
            if (phase < 2) {
                if (white_alpha > 0) {
                    gpu_set_fog(1, c_white, 0, 0);
                        draw_sprite_ext(sprite_index, image_index, round(x), round(y), spr_dir, image_yscale, image_angle, c_white, white_alpha);
                    gpu_set_fog(0, 0, 0, 0);
                }   
            }
        }
        
        if (death_fade_timer > 0) {
            var spr_offx = sprite_get_xoffset(sprite_get("dracula2_die"));
            var spr_offy = sprite_get_yoffset(sprite_get("dracula2_die"));
            draw_sprite_part_ext(sprite_get("dracula2_die"), image_index, 0, 0, 288, lerp(288, 0, death_fade_timer), round(x - (spr_offx * spr_dir)), round(y - spr_offy), spr_dir, image_yscale, c_white, 1);
        }
            
        if (hitstop > 0) {
            gpu_set_fog(1, c_white, 0, 0);
                draw_sprite_ext(sprite_index, image_index,  round(x), round(y), spr_dir, image_yscale, image_angle, c_white, 0.5);
            gpu_set_fog(0, 0, 0, 0);
        }
        
        if (claw_spr != -1) {
            draw_sprite_ext(claw_spr, claw_img, round(x), round(y), spr_dir, image_yscale, image_angle, c_white, 1);
        }
    break;
}