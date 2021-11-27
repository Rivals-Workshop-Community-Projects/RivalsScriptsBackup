if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}

if (burst == 0)
{
	var icon_full = sprite_get("blood_icon");
	var icon_height = sprite_get_height(icon_full);
	var icon_width = sprite_get_width(icon_full);

	var blood_growth = bloodmeter / 100;
	var meter_draw_percentage2 = lerp(meter_draw_percentage, blood_growth, 0.35);
	
	shader_start();
	draw_sprite_part(icon_full,0, 0, 0, icon_width, icon_height * meter_draw_percentage2, x - 10, y - 93);
	shader_end();
}

user_event(12);