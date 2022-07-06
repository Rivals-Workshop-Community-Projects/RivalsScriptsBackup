//post_draw.gml

//draw_debug_text(x, y - 20, string(spin_hit));
//draw_debug_text(x-90, y - 20, string(confetti_L));
//draw_debug_text(x+90, y - 20, string(confetti_R));
draw_debug_text(x, y - 20, string(rat_timer));

if (state == PS_AIR_DODGE ){
	draw_sprite_ext(sprite_get("airdodge_bubble_neutral_front"), -1, x, y, spr_dir, 1, 0, c_white, 1);
}
shader_start();
if (state == PS_ATTACK_AIR && attack == AT_USPECIAL){
	switch(rats){
		case 1:
			if (window == 3){ draw_sprite_ext(sprite_get("uspecial_rats"), 0, x, y, spr_dir, 1, 0, c_white, 1); }
			if (window > 3 && window < 5){ draw_sprite_ext(sprite_get("uspecial_rats"), rat_timer, x, y+4, spr_dir, 1, 0, c_white, 1); }
		break;
		
		case 2:
			if (window == 6 || window == 3){ draw_sprite_ext(sprite_get("uspecial_rats"), 5, x, y, spr_dir, 1, 0, c_white, 1); }
			if (window > 3 && window < 5){ draw_sprite_ext(sprite_get("uspecial_rats"), rat_timer, x, y, spr_dir, 1, 0, c_white, 1); }
		break;
		
		case 3:
			if (window == 6 || window == 3){ draw_sprite_ext(sprite_get("uspecial_rats"), 10, x, y, spr_dir, 1, 0, c_white, 1); }
			if (window > 3 && window < 5){ draw_sprite_ext(sprite_get("uspecial_rats"), rat_timer, x, y, spr_dir, 1, 0, c_white, 1); }
		break;
	}
}
shader_end();