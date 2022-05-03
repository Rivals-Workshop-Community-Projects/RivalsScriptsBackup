// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

//e
if move_cooldown[AT_FSPECIAL] > 0 {
	draw_sprite(sprite_get("darkerfs"), floor(1), temp_x + 160, temp_y + 5);
} else {
	draw_sprite(sprite_get("fs"), floor(1), temp_x + 160, temp_y + 5);
}

//e
if move_cooldown[AT_DSPECIAL] > 0 {
	draw_sprite(sprite_get("darkerds"), floor(1), temp_x + 160, temp_y + 5);
} else {
	draw_sprite(sprite_get("ds"), floor(1), temp_x + 160, temp_y + 5);
}

switch(current_job){
	default:
		draw_sprite(sprite_get("nonehud"), floor(1), temp_x + 130, temp_y + 5);
		break;
	case 2:
		draw_sprite(sprite_get("officehud"), floor(1), temp_x + 130, temp_y + 5);
		break;
	case 3:
		draw_sprite(sprite_get("chefhud"), floor(1), temp_x + 130, temp_y + 5);
		break;
	case 4:
		draw_sprite(sprite_get("clerkhud"), floor(1), temp_x + 130, temp_y + 5);
		break;
	case 5:
		draw_sprite(sprite_get("mechhud"), floor(1), temp_x + 130, temp_y + 5);
		break;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);