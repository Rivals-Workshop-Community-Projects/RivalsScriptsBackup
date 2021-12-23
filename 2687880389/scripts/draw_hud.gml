user_event(11);

shader_start();
// Meter
draw_sprite_ext(meter_sprite, 0,
				temp_x + 7, temp_y + 3, 1, 1,
				0, c_white, 1);
var fill_offset = 0;
var fill_fraction = rocket_fuel / max_rocket_fuel;
draw_sprite_ext(meter_fill_sprite, 0,
				temp_x + 9 + fill_offset, temp_y + 1, fill_fraction, 1,
				0, c_white, 1);

// Center pip
draw_sprite_ext(charge_button_sprite, rocket_fuel >= booster_rush_cost ? 1 : 0,
				temp_x + 104, temp_y - 9, 1, 1,
				0, c_white, 1);
			
// Rightmost pip
draw_sprite_ext(charge_button_sprite, rocket_fuel == max_rocket_fuel ? 1 : 0,
				temp_x + 198, temp_y - 9, 1, 1,
				0, c_white, 1);
shader_end();