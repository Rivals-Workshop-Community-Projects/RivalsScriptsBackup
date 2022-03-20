
if (portal_number == 1){
	switch (portal_direction){
		case 1:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, 90, arrow_color, 1);
		break;
		case 2:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, 45, arrow_color, 1);
		break;
		case 3:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, 0, arrow_color, 1);
		break;
		case 4:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, -45, arrow_color, 1);
		break;
		case 5:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, -90, arrow_color, 1);
		break;
		case 6:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, -135, arrow_color, 1);
		break;
		case 7:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, 180, arrow_color, 1);
		break;
		case 8:
		draw_sprite_ext(sprite_get("portal_arrow_1"), 0, x, y, 1, 1, 135, arrow_color, 1);
		break;
	}
}

if (portal_number == 2){
	switch (portal_direction){
		case 1:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, -90, arrow_color, 1);
		break;
		case 2:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, -135, arrow_color, 1);
		break;
		case 3:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, 180, arrow_color, 1);
		break;
		case 4:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, 135, arrow_color, 1);
		break;
		case 5:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, 90, arrow_color, 1);
		break;
		case 6:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, 45, arrow_color, 1);
		break;
		case 7:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, 0, arrow_color, 1);
		break;
		case 8:
		draw_sprite_ext(sprite_get("portal_arrow_2"), 0, x, y, 1, 1, -45, arrow_color, 1);
		break;
	}
}

if (portal_cooldown > 0 && state == 1){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*spr_dir, image_yscale, image_angle, c_gray, 1);
}

