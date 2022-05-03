//draw hud
if (ball_cooldown < 1) && (ball_exists == false)
{
    draw_sprite(sprite_get("hud_ball"+"p"+string(player)),0,temp_x+160,temp_y-32);
}
else if (ball_cooldown > 0) || (ball_exists == true)
{
    draw_sprite(sprite_get("hud_ball"+"p"+string(player)),1,temp_x+160,temp_y-32);
}

