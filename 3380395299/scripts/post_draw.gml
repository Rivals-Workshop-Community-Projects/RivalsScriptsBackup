//post-draw

/*
draw_debug_text( x, y + 40, string(judgeCharge));
*/

/*
draw_debug_text( x, y + 40, string("nspecialProj"));
draw_debug_text( x+130, y + 40, string(nspecialProj));
*/

shader_start();

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {

	if attack == AT_FTHROW {
		if window == 1 {
			draw_sprite_ext(dspecial_icon, dspecial_icon_bc, x-40*spr_dir, y-76, 2*spr_dir, 2, 0, c_white, 1);
		}
		if window == 2 {
			draw_sprite_ext(dspecial_icon, dspecial_icon_bc, x-36*spr_dir, y-54, 2*spr_dir, 2, 90*spr_dir, c_white, 1);
		}
		if window == 3 {
			draw_sprite_ext(dspecial_icon, dspecial_icon_bc, x+4*spr_dir, y-60, 2*spr_dir, 2, 180*spr_dir, c_white, 1);
		}
		if window == 4 {
			draw_sprite_ext(dspecial_icon, dspecial_icon_bc, x+24*spr_dir, y-90, 2*spr_dir, 2, 270*spr_dir, c_white, 1);
		}
		if window == 5 {
			draw_sprite_ext(dspecial_icon, dspecial_icon_bc, x+8*spr_dir, y-86, 2*spr_dir, 2, 0, c_white, 1);
		}
		if window == 6 {
			draw_sprite_ext(dspecial_icon, dspecial_icon_bc, x+12*spr_dir, y-40, 2*spr_dir, 2, 90*spr_dir, c_white, 1);
		}		
	}
	
	if attack == AT_USPECIAL {
		if window == 1 && window_timer > 7 {
			draw_sprite_ext(sprite_get("firemen"), 0, x, y, 1, 1, 0, c_white, 1);
		}
	}
	
	if attack == AT_NSPECIAL {
		if window == 1 && window_timer > 7 {
			switch (nspecialProj)
			{
				case 0:
					draw_sprite_ext(sprite_get("nspecial_proj1"), 0, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)), spr_dir, 1, 0, c_white, 1);
				break;
				
				case 1:
					draw_sprite_ext(sprite_get("nspecial_proj2"), 0, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)), spr_dir, 1, 0, c_white, 1);
				break;
				
				case 2:
					draw_sprite_ext(sprite_get("nspecial_proj3"), 0, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)), spr_dir, 1, 0, c_white, 1);
				break;
				
				case 3:
					draw_sprite_ext(sprite_get("nspecial_proj4"), 0, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)), spr_dir, 1, 0, c_white, 1);
				break;
			}
		}
	}
		
	if attack == AT_FSPECIAL {
		if window > 2 {
			if spr_dir {
				draw_sprite_ext(sprite_get("fspecial_number"), judgeCharge, x-18, y-116, 1, 1, 0, c_white, 1);
			} else {
				draw_sprite_ext(sprite_get("fspecial_number"), judgeCharge, x-4, y-116, 1, 1, 0, c_white, 1);
			}
		}
	}
}

shader_end();