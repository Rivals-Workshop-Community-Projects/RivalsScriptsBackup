if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}

if (taunt_active && taunt_timer < 900)
{
	temp_x_pos = view_get_xview() + 820;
	temp_y_pos = view_get_yview();
	draw_sprite(sprite_get("voice"), taunt_image_index, temp_x_pos, temp_y_pos);
}

user_event(12);