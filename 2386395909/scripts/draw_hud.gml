//draw hud
if (ball_cooldown < 1) && (ball_exists == false)
{
    draw_sprite(sprite_get("hud_ball"),0,temp_x+194,temp_y-11);
}
else if (ball_cooldown > 0) || (ball_exists == true)
{
    draw_sprite(sprite_get("hud_ball"),1,temp_x+194,temp_y-11);
}

