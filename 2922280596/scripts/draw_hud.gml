//Time Capsule
draw_sprite_ext(sprite_get("desiraehud"), 0, temp_x, temp_y-26, 1, 1, 0, (move_cooldown[AT_DSPECIAL] == 0?c_white:c_dkgray), 1)
//FastForward
if(fast_fwd)
{
    draw_sprite_ext(sprite_get("desiraehud"), 1, temp_x+30+hud_timing, temp_y-26, 1, 1, 0, c_white, (30-hud_timing)/30)
    rectDraw(temp_x+50, temp_y-3, temp_x+140, temp_y-17, c_black);
    rectDraw(temp_x+48, temp_y-5, temp_x+48+(90*fast_timer/500), temp_y-15, c_aqua);
    draw_sprite_ext(sprite_get("desiraehud"), 1, temp_x+30, temp_y-26, 1, 1, 0, c_white, 1)
}
//Rewind
with(oPlayer)
{
    if(desirae_timelock)
    {
        with(other)
        {
            draw_sprite_ext(sprite_get("desiraehud"), 2, temp_x+60-hud_timing, temp_y-26, 1, 1, 0, c_white, (30-hud_timing)/30)
            draw_sprite_ext(sprite_get("desiraehud"), 2, temp_x+30, temp_y-26, 1, 1, 0, c_white, 1)
        }
    }
}
if(fast_fwd)
{
    draw_sprite_ext(sprite_get("desiraehud"), 1, temp_x+30+hud_timing, temp_y-26, 1, 1, 0, c_white, (30-hud_timing)/30)
    rectDraw(temp_x+50, temp_y-3, temp_x+140, temp_y-17, c_black);
    rectDraw(temp_x+48, temp_y-5, temp_x+48+(90*fast_timer/500), temp_y-15, c_aqua);
    draw_sprite_ext(sprite_get("desiraehud"), 1, temp_x+30, temp_y-26, 1, 1, 0, c_white, 1)
}

#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);