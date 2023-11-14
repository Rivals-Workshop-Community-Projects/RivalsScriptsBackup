switch (color){
	case 0:
		draw_sprite_ext( sprite_get("daruma_proj"), 0, x - 0*spr_dir, y - 0, 1, 1, angle_to_draw, c_red, 1 - (timer/7.5) );
	break;
	case 1:
		draw_sprite_ext( sprite_get("daruma_proj"), 0, x - 0*spr_dir, y - 0, 1, 1, angle_to_draw, c_orange, 1 - (timer/7.5) );
	break;
	case 2:
		draw_sprite_ext( sprite_get("daruma_proj"), 0, x - 0*spr_dir, y - 0, 1, 1, angle_to_draw, c_yellow, 1 - (timer/7.5) );
	break;
	case 3:
		draw_sprite_ext( sprite_get("daruma_proj"), 0, x - 0*spr_dir, y - 0, 1, 1, angle_to_draw, c_green, 1 - (timer/7.5) );
	break;
	case 4:
		draw_sprite_ext( sprite_get("daruma_proj"), 0, x - 0*spr_dir, y - 0, 1, 1, angle_to_draw, c_blue, 1 - (timer/7.5) );
	break;
	case 5:
		draw_sprite_ext( sprite_get("daruma_proj"), 0, x - 0*spr_dir, y - 0, 1, 1, angle_to_draw, c_purple, 1 - (timer/7.5) );
	break;
}