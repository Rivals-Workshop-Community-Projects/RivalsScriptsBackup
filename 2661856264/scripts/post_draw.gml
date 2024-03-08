// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

print(stealth_rock_aux)

if (punch_charge == 4){
        var shade_alpha = .3;
        //Feel free to change this values for the proper timing
        if (state_timer % 18 <= 6){
                    			shade_alpha = 0;
		} else shade_alpha = .3;
        gpu_set_fog(1, c_yellow, 0, 1);
            draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale, image_yscale, spr_angle, c_white, shade_alpha)
        gpu_set_fog(0, c_yellow, 0, 1);
}

if (stealth_rock > 0){
	shader_start()
	draw_sprite_ext(sprite_get("fspecial_proj"), get_gameplay_time()*.4, x-30*spr_dir, y-50, 1, 1, 0, c_white, .5);
	if (stealth_rock > 1){
		draw_sprite_ext(sprite_get("fspecial_proj"), get_gameplay_time()*.35, x+30*spr_dir, y-50, 1, 1, 0, c_white, .5);
	}
	if (stealth_rock > 2){
		draw_sprite_ext(sprite_get("fspecial_proj"), get_gameplay_time()*.3, x-30*spr_dir, y+30, 1, 1, 0, c_white, .5);
	}
	if (stealth_rock > 3){
		draw_sprite_ext(sprite_get("fspecial_proj"), get_gameplay_time()*.25, x+30*spr_dir, y+30, 1, 1, 0, c_white, .5);
	}
	shader_end()
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == AT_USTRONG){
    	if (stealth_rock >= 1){
        	draw_sprite_ext(sprite_get("ustrong_armor"), image_index, x, y, spr_dir, 1, 0, point_1, 1 );
    	}
    }
}
if (stealth_rock > 0 && state == PS_ATTACK_GROUND){
    if (attack == AT_DSTRONG){
        draw_sprite_ext(sprite_get("dstrong_armor"), image_index, x, y, spr_dir, 1, 0, point_1, 1 );
    }
}