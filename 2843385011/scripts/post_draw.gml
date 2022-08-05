//post_draw.gml

//print(enemy_dspecial_cont);
//print(minion_controlling);

shader_start();

if (dspecial_orb != 0 || enemy_dspecial_orb != 0){
	if (dspecial_orb > 0 || enemy_dspecial_orb > 0){
		draw_sprite_ext(sprite_get("dspecial_proj_orbit"), get_gameplay_time()*.3, 
		orb_x1, orb_y1, spr_dir, 1, 0, c_white, .7);
	}
	if (dspecial_orb > 1 || enemy_dspecial_orb > 1){
		draw_sprite_ext(sprite_get("dspecial_proj_orbit"), get_gameplay_time()*.3, 
		orb_x2, orb_y2, spr_dir, 1, 0, c_white, .7);
	}
	if (dspecial_orb > 2 || enemy_dspecial_orb > 2){
		draw_sprite_ext(sprite_get("dspecial_proj_orbit"), get_gameplay_time()*.3, 
		orb_x3, orb_y3, spr_dir, 1, 0, c_white, .7);
	}
	if (dspecial_orb > 3 || enemy_dspecial_orb > 3){
		draw_sprite_ext(sprite_get("dspecial_proj_orbit"), get_gameplay_time()*.3, 
		orb_x4, orb_y4, spr_dir, 1, 0, c_white, .7);
	}
}

shader_end();

if (window == 1 && state == PS_ATTACK_GROUND && strong_charge > 0 && 
	strong_charge % 10 < 6 && instance_exists(minion)){    
        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_set_alpha(0);
        draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
        if (minion.strong_dir == 1){
			draw_sprite_ext(sprite_get("minion_fstrong"), 0, minion.x, minion.y, minion.spr_dir, 1, 0, c_white, 0.5);
		}
		if (minion.strong_dir == 2){
			draw_sprite_ext(sprite_get("minion_ustrong"), 0, minion.x, minion.y, minion.spr_dir, 1, 0, c_white, 0.5);
		}
		if (minion.strong_dir == 3){
			draw_sprite_ext(sprite_get("minion_dstrong"), 0, minion.x, minion.y, minion.spr_dir, 1, 0, c_white, 0.5);
		}
        gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true,true,true,true);
        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        draw_rectangle_color(0, 0, room_width, room_height, 
            c_yellow, c_yellow, c_yellow, c_yellow, false);
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);
    }



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;