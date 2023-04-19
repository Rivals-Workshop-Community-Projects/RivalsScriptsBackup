var col = c_white;
var col_2 = c_white;
var boost_ready = c_blue;

//draw special meter
draw_sprite_ext(sprite_get("multikick_meter"), 0, temp_x, temp_y-18, 2, 2, 0, col, 1);
if ((floor(state_timer/4) == state_timer/4 ||(floor(state_timer/4) == (state_timer/4) - 0.25)) && get_player_damage( player ) >=100)
{
    draw_sprite_ext(sprite_get("multikick_meter2"), 0, temp_x, temp_y-18, 2, 2, 0, col, 1);
}

if ("multikick_energy" in self)
{
	if (multikick_energy < 200)
	{
		draw_sprite_ext(sprite_get("multikick_meter"), 0, temp_x, temp_y-18, 2, 2, 0, col, 1);
		if ((floor(state_timer/4) == state_timer/4 ||(floor(state_timer/4) == (state_timer/4) - 0.25)) && get_player_damage( player ) >=100)
		{
			draw_sprite_ext(sprite_get("multikick_meter2"), 0, temp_x, temp_y-18, 2, 2, 0, col, 1);
		}
		if (multikick_energy > 0)
		{
			//draw the meter based on how much energy there is
			 draw_sprite_ext(sprite_get("multikick_charge"), 0, temp_x + 12, temp_y-14, 2 * round(multikick_energy * 0.386), 2, 0, col, 1);
		}
	}
	
	else if (multikick_energy == 200)
	{
		draw_sprite_ext(sprite_get("multikick_meter_full"), state_timer * 0.4, temp_x, temp_y-18, 2, 2, 0, col, 1);
		if ((floor(state_timer/4) == state_timer/4 ||(floor(state_timer/4) == (state_timer/4) - 0.25)) && get_player_damage( player ) >=100)
		{
			draw_sprite_ext(sprite_get("multikick_meter2_full"), state_timer * 0.4, temp_x, temp_y-18, 2, 2, 0, col, 1);
		}
	}
	
}

//Draw the fuel meter and canister
draw_sprite_ext(sprite_get("fuel_meter"), 0, temp_x-16, temp_y-32, 2, 2, 0, col, 1);

if (move_cooldown[43] > 0) col_2 = c_gray;
draw_sprite_ext(sprite_get("fuel_canister"), 0, temp_x+84, temp_y-32, 2, 2, 0, col_2, 1);

if ("fuel" in self)
{
	//Draw the amount of fuel in the meter
	draw_sprite_ext(sprite_get("fuel"), 0, (temp_x -4) , temp_y-28, 2 * fuel, 2, 0, col, 1);
}

if ("motorbike" in self && motorbike == false && "walljump_number" in self && "fuel" in self)
{
	//This code lets the player know how many walljumps Carol has, as a clear indicator to the player that they have multiple walljumps
	draw_sprite_ext(sprite_get("walljump_counter"), walljump_number, temp_x+102, temp_y-32, 2, 2, 0, col, 1);
    //Practise prompt
    if ("practice" in self && "practice_hud_clearance" in self && practice == true && practice_hud_clearance < 200)
    {
    	draw_debug_text(temp_x- 16, temp_y-46, string("Shield in DSPECIAL = Max Fuel"));
    }
    //Let the player know that pressing Down and Special will allow them to get on the bike
    if (fuel >=40)
	{
		draw_sprite_ext(sprite_get("fuel_prompt"), 0, temp_x - 16, temp_y-52, 2, 2, 0, col, 1);
	}
	
	draw_sprite_ext(sprite_get("jump_disc_hud"), 0, temp_x + 184, temp_y-20, 2, 2, 0, move_cooldown[AT_FSPECIAL] > 0? c_gray: c_white, 1);
}

if ("motorbike" in self && motorbike == true)
{
	if (move_cooldown[AT_FSPECIAL_2] == 0)
	{
		draw_sprite_ext(sprite_get("nitro_ready"), 0, temp_x +102, temp_y-34, 2, 2, 0, col, 1);
	}
	
	//Not particularly ideal but Has to be done here because update doesn't run in pause screen
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