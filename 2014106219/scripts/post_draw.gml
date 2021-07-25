//post_draw

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) and wblastcharge > 0 and showHUD == true {
		{
		if wblastcharge >= 45 {
		draw_sprite_ext(sprite_get("nspecialcharge"), 2, x, y-60, 1, 1, 0, c_white, .6);
		}
	
		else
	
		if wblastcharge >= 25 {
		draw_sprite_ext(sprite_get("nspecialcharge"), 1, x, y-60, 1, 1, 0, c_white, .6);
		}
	
		else
	
		{
		draw_sprite_ext(sprite_get("nspecialcharge"), 0, x, y-60, 1, 1, 0, c_white, .6);
		}
	}
}

shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL {
	draw_sprite_ext(sprite_get("fspecial_overlay"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	if (window == 2) {
		if up_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*spr_dir, c_white, .6);	
		} else 
		if down_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*-spr_dir, c_white, .6);	
		} else {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 0, c_white, .6);	
		}
	}
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL_2 {
	draw_sprite_ext(sprite_get("fspecial_overlay2"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
	if (window == 2) {
		if up_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*spr_dir, c_white, .6);	
		} else 
		if down_down {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 45*-spr_dir, c_white, .6);	
		} else {
			draw_sprite_ext(sprite_get("arrow"), -1, x+40*spr_dir, y-45, spr_dir, 1, 0, c_white, .6);	
		}
	}
}
shader_end();
user_event(12); 