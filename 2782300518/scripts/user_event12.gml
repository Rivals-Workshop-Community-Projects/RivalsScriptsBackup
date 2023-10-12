if ("char_height" not in self) exit;

var col = c_white;
var boost_ready = c_blue;
var game_time = get_gameplay_time();

//Draw the fuel meter and canister
draw_sprite_ext(sprite_get("fuel_canister"), 0, temp_x+136, temp_y-16, 2, 2, 0, c_white, 1);
if (fuel < 40)
{
	draw_sprite_ext(sprite_get("fuel_meter"), 0, temp_x-16, temp_y-18, 2, 2, 0, col, 1);
	
	if ("fuel" in self)
	{
	
		//Draw the amount of fuel in the meter
		draw_sprite_ext(sprite_get("fuel"), 0, (temp_x -4) , temp_y-14, 3.1 * fuel, 2, 0, col, 1);
		//draw_debug_text(temp_x+ 104, temp_y - 12, string(fuel) + " / 40");
	}
}
else
{
	draw_sprite_ext(sprite_get("fuel_meter_full"), game_time * 0.4, temp_x-16, temp_y-18, 2, 2, 0, col, 1);
}

if (get_player_damage(player) >= 100 && (floor(game_time/4) == game_time/4 || (floor(game_time/4) == (game_time/4) - 0.25)))
{
	draw_sprite_ext(sprite_get("fuel_meter2"), 0, temp_x-16, temp_y-18, 2, 2, 0, col, 1);
}

if ("motorbike" in self && motorbike == false)
{
	draw_sprite_ext(sprite_get("jump_disc_hud"), 0, temp_x + 184, temp_y-16, 2, 2, 0, move_cooldown[AT_FSPECIAL] > 0? c_gray: c_white, 1);
	if (bike_stored) draw_sprite_ext(sprite_get("bike_stored_hud"), 0, temp_x+158, temp_y-18, 2, 2, 0, c_white, 1);
}


if ("motorbike" in self && motorbike == true)
{
	draw_sprite_ext(sprite_get("nitro_hud"), 0, temp_x +186, temp_y-18, 2, 2, 0, move_cooldown[AT_FSPECIAL_2] > 0? c_gray: c_white, 1);
	
	//Not particularly ideal but has to be done here because update doesn't run in pause screen
	if ("temp_pause" in self && instance_exists(temp_pause))
	{
		sound_stop(sound_get("motorbike_move"));
		sound_stop(sound_get("motorbike_idle"))
	}
}

/*//menue
    draw_debug_text( temp_x+60, temp_y-45, "state : " + get_state_name(state));
    draw_debug_text( temp_x+60, temp_y-60, "state timer : " + string(state_timer));
    draw_debug_text( temp_x+60, temp_y-75, "attack : " + string(attack));
    draw_debug_text( temp_x+60, temp_y-90, "window : " + string(window));
    draw_debug_text( temp_x+60, temp_y-105, "window timer : " + string(window_timer));
    draw_debug_text( temp_x- 15, temp_y-45, "hsp: " + string(hsp));
    draw_debug_text( temp_x- 15, temp_y-60, "vsp: " + string(vsp));
    draw_debug_text( temp_x- 15, temp_y-75, "grav: " + string(grav));
    draw_debug_text( 10, 10, "FPS : " + string(fps_real));