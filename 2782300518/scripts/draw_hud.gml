var col = c_white;
//draw special meter
draw_sprite_ext(sprite_get("multikick_meter"), 0, temp_x, temp_y-18, 2, 2, 0, col, 1);

//debug variable
var debugmet;

//draw the meter based on how much energy there is
for (var kickCharge = 0; kickCharge <multikick_energy; kickCharge++)
{
    draw_sprite_ext(sprite_get("multikick_charge"), 0, (temp_x + 12) + (kickCharge * 0.765), temp_y-14, 2, 2, 0, col, 1);
}

//Add polish to the meter, code in update.gml animates this
if (multikick_energy == 200)
{
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 12, temp_y-15, 2, 2, 0, col, shine0);
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 28, temp_y-15, 2, 2, 0, col, shine1);
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 44, temp_y-15, 2, 2, 0, col, shine2);
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 60, temp_y-15, 2, 2, 0, col, shine3);
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 76, temp_y-15, 2, 2, 0, col, shine4);
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 92, temp_y-15, 2, 2, 0, col, shine5);
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 108, temp_y-15, 2, 2, 0, col, shine6);
    draw_sprite_ext(sprite_get("multikick_meter_polish"), 0, temp_x + 124, temp_y-15, 2, 2, 0, col, shine7);
}

//Draw the fuel meter and canister
draw_sprite_ext(sprite_get("fuel_meter"), 0, temp_x-16, temp_y-32, 2, 2, 0, col, 1);
draw_sprite_ext(sprite_get("fuel_canister"), 0, temp_x+84, temp_y-32, 2, 2, 0, col, 1);

//Draw the amount of fuel in the meter
for (var fuelCharge = 0; fuelCharge <fuel; fuelCharge++)
{
    draw_sprite_ext(sprite_get("fuel"), 0, (temp_x -4) + (fuelCharge * 2) , temp_y-28, 2, 2, 0, col, 1);
}

//This code lets the player know how many walljumps Carol has, as a clear indicator to the player that they have multiple walljumps
if (motorbike == false)
{
    draw_debug_text(temp_x+105, temp_y-32, string("Walljumps: ") + string(5 - walljump_number));
}


//Generic Debug Check
if (debugCheck == true)
{
    draw_debug_text(temp_x+105, temp_y-62, string("I'm here"));
}

//Practise prompt
if (fuel < 40 && motorbike = false && practice == true)
{
    draw_debug_text(temp_x- 16, temp_y-60, string("Press Shield during Down Special"));
    draw_debug_text(temp_x- 16, temp_y-44, string("to fully fuel the bike to max"));
}
//Let the player know that pressing Down and Special will allow them to get on the bike
if (fuel >=40 && motorbike == false)
{
    draw_debug_text(temp_x- 16, temp_y-44, string("DOWN +"));
    draw_sprite_ext(sprite_get("fuel_prompt"), 0, temp_x + 44, temp_y-48, 2, 2, 0, col, 1);
}