if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && state_timer > 2 && window < 3)
    draw_sprite_ext(sprite_get("nspecialshot"),0, shoot_x, shoot_y, 1, 1, 0, c_white, 1);


if(desirae_timelock && desirae_time_mode == 0)
{
    var percentage = desirae_time_percent-get_player_damage(player);
    rectDraw(x-30, y+20, x+30, y+30, c_black);
    rectDraw(x-28, y+22, x-28+(56*desirae_time_left/300), y+28, c_red);
    draw_debug_text(x-8, y+6, string(percentage) +"%") //write percent
}

#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);