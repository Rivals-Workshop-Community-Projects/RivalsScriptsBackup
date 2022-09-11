// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

//	Meter Gauge
draw_debug_text(temp_x + 2, temp_y - 20, string(energy_meter));
draw_sprite_ext(sprite_get("meter_empty"), 0, temp_x + 28, temp_y - 30, 1, 1, 0, c_white, 1);

//	Filling in the Gauge
if (energy_meter > 0)
{
	draw_sprite_part_ext(sprite_get("meter"), 0, 0, 0, energy_meter * 0.90, 38, temp_x + 28, temp_y - 30, 1, 1, c_white, 1);
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);