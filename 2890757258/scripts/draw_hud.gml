// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

//	Magic Gauge
draw_debug_text(temp_x + 12, temp_y - 30, string(magic_meter));
draw_sprite_ext(sprite_get("meter_bar"), 0, temp_x + 4, temp_y - 20, 1, 1, 0, c_white, 1);

//	Filling in the Gauge
if (magic_meter > 0)
{
	draw_sprite_part_ext(sprite_get("magic_bar"), 0, 0, 0, magic_meter * 1.20, 38, temp_x + 4, temp_y - 20, 1, 1, c_white, 1);
}

if (move_cooldown[AT_NSPECIAL] > 0)
{
	draw_sprite(sprite_get("fire_icon2"), floor(1), temp_x + 170, temp_y - 0);
} 

else 
{
	draw_sprite(sprite_get("fire_icon1"), floor(1), temp_x + 170, temp_y - 0);
}

if (magic_meter < 24) 
{ 
	draw_sprite(sprite_get("cloud_icon2"), floor(1), temp_x + 170, temp_y - 4);
} 

else 
{
	draw_sprite(sprite_get("cloud_icon1"), floor(1), temp_x + 170, temp_y - 4);
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);