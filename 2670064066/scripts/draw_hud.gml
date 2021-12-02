

var width = 100;
var height = 6;
var origin_x = temp_x + 12;
var origin_y = temp_y - height - 4;


draw_debug_text(temp_x+170, temp_y+18, string(string(frags)))

if (weapon == 1)
{
    draw_sprite(sprite_get("AR HUD"),0 , temp_x-22, temp_y-75);
     //draw_sprite(sprite_get("fire1"),0 , temp_x-22, temp_y-120);  
}


if (weapon == 2)
{
    var fill_color = c_purple;
    var origin_x = temp_x + 45;
    var origin_y = temp_y - height - 4;    
    draw_sprite(sprite_get("PR HUD"),0 , temp_x, temp_y-85);   
    var fill_width = max(floor((PR_ammo / 100) * width));

// draw border
draw_rectangle_colour(origin_x , origin_y - 2, origin_x + width, origin_y + height + 2, c_black, c_black, c_black, c_black, false);
// draw background
draw_rectangle_colour(origin_x, origin_y, origin_x + width, origin_y + height, c_black, c_black, c_black, c_black, false);
if (PR_ammo > 0)
{
draw_rectangle_colour(origin_x, origin_y, origin_x + fill_width, origin_y + height, fill_color, fill_color, fill_color, fill_color, false);
}
}

if (weapon == 3)
{
    var fill_color = c_blue;
    var origin_x = temp_x + 45;
    var origin_y = temp_y - height - 4;    
    draw_sprite(sprite_get("PP HUD"),0 , temp_x + 30, temp_y-65);   
    var fill_width = max(floor((PP_ammo / 100) * width));

// draw border
draw_rectangle_colour(origin_x , origin_y - 2, origin_x + width, origin_y + height + 2, c_black, c_black, c_black, c_black, false);
// draw background
draw_rectangle_colour(origin_x, origin_y, origin_x + width, origin_y + height, c_black, c_black, c_black, c_black, false);
if (PP_ammo > 0)
{
draw_rectangle_colour(origin_x, origin_y, origin_x + fill_width, origin_y + height, fill_color, fill_color, fill_color, fill_color, false);
}
//draw_debug_text(temp_x+100, temp_y-28, string(string(PP_charge)))
}

if (weapon == 4)
{
    draw_sprite(sprite_get("needle HUD"),0 , temp_x - 30, temp_y-68);
    draw_sprite(sprite_get("needle ammo"),needles, temp_x + 40, temp_y - 50);
//draw_debug_text(temp_x+100, temp_y-28, string(string(stucks)))
}

if (weapon == 5)
{
    draw_sprite(sprite_get("BS HUD"),0 , temp_x - 80, temp_y-72);
    draw_sprite(sprite_get("BS ammo"),BS_shots, temp_x + 90, temp_y - 42);
//draw_debug_text(temp_x+100, temp_y-28, string(string(stucks)))
}

if (weapon == 6)
{
    draw_sprite(sprite_get("BR HUD"),0 , temp_x - 40, temp_y-72);
    draw_sprite(sprite_get("BR ammo"),BR_shots, temp_x + 80, temp_y - 48);
//draw_debug_text(temp_x+100, temp_y-28, string(string(stucks)))
}

if (weapon == 7)
{
    draw_sprite(sprite_get("sniper HUD"),0 , temp_x - 20, temp_y-65);
    draw_sprite(sprite_get("sniper ammo"),sniper_shots, temp_x + 160, temp_y - 48);
//draw_debug_text(temp_x+100, temp_y-28, string(string(stucks)))
}

if (weapon == 8)
{
    draw_sprite(sprite_get("RPG HUD"),0 , temp_x - 20, temp_y-65);
    draw_sprite(sprite_get("RPG ammo"),RPG_shots, temp_x + 160, temp_y - 59);
//draw_debug_text(temp_x+100, temp_y-28, string(string(stucks)))
}
//draw_debug_text(temp_x+100, temp_y-28, string(string(plasma_timer)))