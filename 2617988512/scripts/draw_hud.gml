if (money_lost_gui_timer > 0) draw_debug_text(temp_x+16,temp_y-42 + floor(money_lost_gui_timer/10)-12,"-"+string(money_lost));
//if (money_lost_gui_timer > 0) draw_text_color(temp_x+16,temp_y-42 + floor(money_lost_gui_timer/10)-12, "-"+string(money_lost), c_red, c_red, c_maroon, c_maroon, money_lost_gui_timer/120);
shader_start();
draw_sprite_ext(sprite_get("gui_money_symbol"), 1, temp_x+12, temp_y-16, 1, 1, 0, c_white, 1);
if (money >= 1000)
{
    draw_sprite_ext(sprite_get("gui_money_font"), floor (money/1000) % 10, temp_x+32, temp_y-16, 1, 1, 0, c_white, 1); //1000's
    draw_sprite_ext(sprite_get("gui_money_font"), floor (money/100) % 10, temp_x+52, temp_y-16, 1, 1, 0, c_white, 1); //100's
    draw_sprite_ext(sprite_get("gui_money_font"), floor (money/10) % 10, temp_x+72, temp_y-16, 1, 1, 0, c_white, 1); //10's
    draw_sprite_ext(sprite_get("gui_money_font"), money % 10, temp_x+92, temp_y-16, 1, 1, 0, c_white, 1); //1's
}
else if (money >= 100)
{
    draw_sprite_ext(sprite_get("gui_money_font"), floor (money/100) % 100, temp_x+32, temp_y-16, 1, 1, 0, c_white, 1); //100's
    draw_sprite_ext(sprite_get("gui_money_font"), floor (money/10) % 10, temp_x+52, temp_y-16, 1, 1, 0, c_white, 1); //10's
    draw_sprite_ext(sprite_get("gui_money_font"), money % 10, temp_x+72, temp_y-16, 1, 1, 0, c_white, 1); //1's
}
else if (money >= 10)
{
    draw_sprite_ext(sprite_get("gui_money_font"), floor (money/10) % 10, temp_x+32, temp_y-16, 1, 1, 0, c_white, 1); //10's
    draw_sprite_ext(sprite_get("gui_money_font"), money % 10, temp_x+52, temp_y-16, 1, 1, 0, c_white, 1); //1's
}
else draw_sprite_ext(sprite_get("gui_money_font"), money % 10, temp_x+32, temp_y-16, 1, 1, 0, c_white, 1); //1's
shader_end();
