//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
if (bombEffect == -3)
    draw_sprite_ext(sprite_get("HUDpowderL"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);
if (bombEffect == -2)
    draw_sprite_ext(sprite_get("HUDpowderU"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);
if (bombEffect == -1)
    draw_sprite_ext(sprite_get("HUDpowderD"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);
if (bombEffect == 11)
    draw_sprite_ext(sprite_get("HUDpowderR"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);