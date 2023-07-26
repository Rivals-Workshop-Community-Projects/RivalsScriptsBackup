if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
    if((attack == AT_NSPECIAL || attack == AT_NSPECIAL_2) && state_timer > 2 && window < 3)
        draw_sprite_ext(sprite_get("nspecialshot"),0, shoot_x, shoot_y, 1, 1, 0, c_white, 1);       
}
if(desirae_timelock && desirae_time_mode == 0)
{
    rectDraw(x-30, y+20, x+30, y+30, c_black);
    rectDraw(x-28, y+22, x-28+(56*desirae_time_left/300), y+28, c_red);
}
if(fast_fwd)
{
    draw_sprite_ext(sprite_get("meterbg"),0, x, y+20, 1, 1, 0, c_white, 1);
    draw_sprite_part(sprite_get("meter"), get_gameplay_time()/4, 50, 74-(20*fast_timer/500), 76, 74, x-14, y+30-(20*fast_timer/500));

    // rectDraw(x-30, y+20, x+30, y+30, c_black);
    // rectDraw(x-28, y+22, x-28+(56*fast_timer/500), y+28, c_aqua);
    if(nspec_target != noone)
    {
        draw_sprite_ext(sprite_get("nspecialshot"),0, floor(ease_circOut(x, shoot_x, 30-nspec_target_timer, 30)), floor(ease_circOut(y, shoot_y, 30-nspec_target_timer, 30)), 1, 1, 0, c_red, 0.5);
        draw_sprite_ext(sprite_get("ffbullets"), nspec_shells, floor(ease_circOut(x, shoot_x, 30-nspec_target_timer, 30)), floor(ease_circOut(y, shoot_y, 30-nspec_target_timer, 30)), 1, 1, 0, c_white, 1);
    }
}

#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);