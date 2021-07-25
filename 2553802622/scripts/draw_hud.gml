//hello
hudstrip_timer ++;

if(hudstrip_mode == 0)
{
    if(hudstrip_timer > 28)
        hudstrip_timer = 0;

    draw_sprite(sprite_get("hudstrip"), hudstrip_timer/15, temp_x+10, temp_y-16);
}
else
{
    if(hudstrip_timer > 24)
        hudstrip_mode = 0;
    if(hudstrip_timer ==  10)
        hudstrip_select = power_color;
    draw_sprite(sprite_get("hudstrip"), 2+(hudstrip_timer/5), temp_x+10, temp_y-16);
}

draw_sprite_ext(sprite_get("arrow_hud"), hudstrip_select, temp_x+8, temp_y-20, clamp((hudstrip_mode == 0 ? 1.5 : hudstrip_timer/5-1),0,1.5), 1.5 , 0, c_white, 1);
shader_start();

//depending on what mode youre on
if(power_color != 0)
{
    for(i = 0; i < arrowsremain[power_color]; i++)
    {
        draw_sprite(sprite_get("arrowcount"), 0, temp_x+50+(16*i), temp_y-20);
    }
}
shader_end();
if(select_cooldown != 0)
{
    rectDraw(temp_x + 110, temp_y - 2, temp_x + 180, temp_y - 12, c_black)
    rectDraw(temp_x + 112, temp_y - 4, temp_x + 112 + (66 * select_cooldown/(60*5)), temp_y - 10, c_aqua);
}


#define rectDraw(x1, y1, x2, y2, color)
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);