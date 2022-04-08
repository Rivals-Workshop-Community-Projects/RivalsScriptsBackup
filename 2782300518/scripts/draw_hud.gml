var col = c_white;
var boost_ready = c_blue;
//draw special met2
draw_sprite_ext(sprite_get("multikick_meter"), 0, temp_x, temp_y-18, 2, 2, 0, col, 1);


//draw the meter based on how much energy there is
 draw_sprite_ext(sprite_get("multikick_charge"), 0, temp_x + 12, temp_y-14, 2 * (multikick_energy * 0.386), 2, 0, col, 1);

//Add polish to the meter, code in update.gml animates this (feature disabled due to performance issues)
if (multikick_energy == 200 && meterShine < 8)
{
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 12 + (meterShine * 16) , temp_y-15, 2, 2, 0, col, 1);
}

//Draw the fuel meter and canister
draw_sprite_ext(sprite_get("fuel_meter"), 0, temp_x-16, temp_y-32, 2, 2, 0, col, 1);

draw_sprite_ext(sprite_get("fuel_canister"), 0, temp_x+84, temp_y-32, 2, 2, 0, col, 1);

//Draw the amount of fuel in the meter
draw_sprite_ext(sprite_get("fuel"), 0, (temp_x -4) , temp_y-28, 2 * (fuel * 1.02), 2, 0, col, 1);

if (motorbike == false)
{
	//This code lets the player know how many walljumps Carol has, as a clear indicator to the player that they have multiple walljumps
	draw_sprite_ext(sprite_get("walljump_counter"), walljump_number, temp_x+102, temp_y-32, 2, 2, 0, col, 1);
    //Practise prompt
    if (practice == true && practice_hud_clearance < 200)
    {
    	draw_debug_text(temp_x- 16, temp_y-46, string("Shield in DSPECIAL = Max Fuel"));
    }
    //Let the player know that pressing Down and Special will allow them to get on the bike
    if (fuel >=40)
	{
		draw_sprite_ext(sprite_get("fuel_prompt"), 0, temp_x - 16, temp_y-52, 2, 2, 0, col, 1);
	}
}

//Not particularly ideal but Has to be done here because update doesn't run in pause screen
if (motorbike == true)
{
	if (move_cooldown[AT_FSPECIAL_2] == 0)
	{
		draw_sprite_ext(sprite_get("nitro_ready"), 0, temp_x +102, temp_y-34, 2, 2, 0, col, 1);
	}
	
	if ("temp_pause" in self && instance_exists(temp_pause))
	{
		sound_stop(sound_get("motorbike_move"));
		sound_stop(sound_get("motorbike_idle"))
	}
}