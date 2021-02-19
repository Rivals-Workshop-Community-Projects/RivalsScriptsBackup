// drawing stuff
if ("wisp_regen_timer" in self) draw_debug_text(temp_x,temp_y,string(wisp_regen_timer))

if ("wisps" in self)
{
    shader_start();
    for (var w = 0; w < array_length_1d(wisps); ++w)
    {
        if (wisps[w] != -1)
        {
            var spawn_speed = 3;
            var idle_speed = 5;
            var frame = floor(wisps[w].state_timer>9*spawn_speed?(wisps[w].state_timer/idle_speed)%idle_speed+10:wisps[w].state_timer/spawn_speed);
            draw_sprite_ext(sprite_get("wisphud"),frame,temp_x+190 - (w*20),temp_y-22,1,1,0, c_white, 1); //note from Delta: Sorry about that, I did not see the conditional when I first went to put in the statement.
        }
    }
    shader_end();
}

if ("tMenuState" in self)
{
    if (tMenuState != -1)
    {
        DrawTutBlockExt(array_length_1d(tMenuOptions), temp_x, 0, string_length("Toggle Wisp Recall Visual")*10)
        DrawTutTextExt(array_length_1d(tMenuOptions), tMenuOptions, temp_x, -20-(array_length_1d(tMenuOptions)*6))
    }
}


if (special_down and attack == AT_NSPECIAL and move_cooldown[AT_NSPECIAL] == 0 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR))
{
    var flick, frame;
    flick = get_gameplay_time() mod 10 >= 5;
    frame = (attack_down || strong_down) ? 2 : 1
    draw_sprite(sprite_get("buttons4"),flick ? frame : 0,temp_x,temp_y - 30)
}

#define DrawTutTextExt(noofthings, list, xpos, ypos) //Hikaru code, credit to Luka for letting me use it
{
    var rad, mult, xx, yy;
    rad = (get_gameplay_time()/30) mod (2*3.14159)
    mult = abs(sin(rad))*0.3;
    
    xx = xpos
    yy = 0;
    
    draw_set_alpha(tMenuAlpha);
	for (var i = 0; i < noofthings; ++i)
	{
	   // var t;
	   // t = is_real(temp_y - 20 - (tMenuAlpha-i-1)*16 + floor(tMenuAlpha*4)*2-8 + ypos) ? "yes" : "no";
	   // print_debug("real?: " + t)
	    yy = floor(temp_y - 16*(tMenuAlpha-i-1) + 8*(tMenuAlpha-1) + ypos -4)
		draw_debug_text(xx, yy, list[i]);
	}
	draw_circle_color(xx - 10, floor(temp_y - 16*(tMenuAlpha-tMenuSelected-1) + 8*(tMenuAlpha-1) + ypos)  - mult*8, 6, c_white, c_blue, false)
	draw_set_alpha(1);
}

#define DrawTutBlockExt(noofthings, xpos, ypos, width) //Hikaru code, credit to Luka for letting me use it
{
    var rad, mult, uhhh;
    rad = (get_gameplay_time()/30) mod (2*3.14159)
    mult = abs(sin(rad))*0.3;
    uhhh = floor(temp_y - 16*(tMenuAlpha-tMenuSelected-1) + 8*(tMenuAlpha-1) + ypos);
	draw_set_alpha(tMenuAlpha*0.4);
	draw_rectangle_color(-8 + xpos,temp_y - 12 + ypos - 16*noofthings + floor(tMenuAlpha*4)*2-8,-8 + xpos + width,temp_y + ypos + floor(tMenuAlpha*4)*2-8,fire_color,fire_color,fire_color,fire_color,false);
	draw_rectangle_color(-6 + xpos,temp_y - 10 + ypos - 16*noofthings + floor(tMenuAlpha*4)*2-8,-10 + xpos + width,temp_y-2 + ypos + floor(tMenuAlpha*4)*2-8,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(mult);
	draw_rectangle_color(xpos- 2, uhhh - 40,-8 + xpos + width, uhhh - 26, c_white,c_white,c_white,c_white,false)
	draw_set_alpha(1)
}


#define find_wisp
//Return: real, -1 if failed
//Takes the wisps array and sees if there is any object in it.
//If there is, return the index of the first one found starting from the end.
i = 2;
while (wisps[i] == -1)
{
    i = (i == 0) ? -1 : i-1;
    if (i == -1) break; // to avoid out of bounds errors
}
return i;


#define destroy_wisp
//Return: none
//Removes wisp from the array.
if argument0 != -1 //idiot proofing
{
    wisps[argument0] = -1;
}