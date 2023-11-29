//draw_hud - the x position of your HUD element is 48*(i-1)

draw_rectangle_color(temp_x + 26, temp_y + 6, temp_x + 37, temp_y + 41, c_black, c_black, c_black, c_black, 0);
draw_rectangle_color(temp_x + 28, temp_y + 8, temp_x + 35, temp_y + 39, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0);
draw_rectangle_color(temp_x + 28, temp_y + 8 + 32*(tokens>=3? 1: tokens%1), temp_x + 35, temp_y + 39, c_white, c_white, c_white, c_white, 0);

shader_start();

draw_sprite_ext(sprite_get("0tokens"), (tokens>0) + (tokens>1) + (tokens>2), temp_x+90, temp_y-50, 1, 1, 0, c_white, 1);
        
shader_end();
