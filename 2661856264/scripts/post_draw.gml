// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);


if (stealth_rock > 0){
	shader_start()
	draw_sprite_ext(sprite_get("nspecial_proj"), get_gameplay_time()*.4, x-30*spr_dir, y-50, 1, 1, 0, c_white, .5);
	if (stealth_rock > 1){
		draw_sprite_ext(sprite_get("nspecial_proj"), get_gameplay_time()*.35, x+30*spr_dir, y-50, 1, 1, 0, c_white, .5);
	}
	if (stealth_rock > 2){
		draw_sprite_ext(sprite_get("nspecial_proj"), get_gameplay_time()*.3, x-30*spr_dir, y+30, 1, 1, 0, c_white, .5);
	}
	if (stealth_rock > 3){
		draw_sprite_ext(sprite_get("nspecial_proj"), get_gameplay_time()*.25, x+30*spr_dir, y+30, 1, 1, 0, c_white, .5);
	}
	shader_end()
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == AT_DTILT){
    	draw_sprite_ext(sprite_get("dtilt_armor"), image_index, x, y, spr_dir, 1, 0, point_1, 1 );
    }
    if (attack == AT_UTILT){
    	if (stealth_rock >= 1){
    	   draw_sprite_ext(sprite_get("utilt_armor"), image_index, x, y, spr_dir, 1, 0, point_1, 1 );
    	}
    }
    if (attack == AT_NAIR){
    	if (stealth_rock >= 1){
        	draw_sprite_ext(sprite_get("nair_armor"), image_index, x, y, spr_dir, 1, 0, point_1, 1 );
    	}
    }
    if (attack == AT_FSTRONG){
        draw_sprite_ext(sprite_get("fstrong_armor"), image_index, x, y, spr_dir, 1, 0, point_1, 1 );
    }
}

if (stealth_rock > 0 && state == PS_ATTACK_GROUND){
    if (attack == AT_DSTRONG){
        draw_sprite_ext(sprite_get("dstrong_armor"), image_index, x, y, spr_dir, 1, 0, point_1, 1 );
    }
}