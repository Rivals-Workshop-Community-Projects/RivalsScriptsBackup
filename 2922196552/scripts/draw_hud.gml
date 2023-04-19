

var width = 125;
var height = 7;
var origin_x = temp_x + 60;
var origin_y = temp_y - 12;


if (rock == true)
{
    //draw_debug_text(temp_x+70, temp_y-78, string(string("rock is out")))
    draw_sprite(sprite_get("hudrock1"),0 , temp_x - 100, temp_y-200);
}

else 
{
	//draw_debug_text(temp_x+70, temp_y-78, string(string("rock is not out")))
	draw_sprite(sprite_get("hudrock2"),0 , temp_x - 100, temp_y-200);
}

draw_sprite(sprite_get("hudarmor"),rockarmor,temp_x + 50,temp_y - 135);

//draw_debug_text(temp_x+70, temp_y-98, string(rockarmor))

//draw_debug_text(temp_x+10, temp_y-98, string(charge))

//draw_debug_text(temp_x+10, temp_y-118, string(fall_power))

