//draw_hud - the x position of your HUD element is 48*(i-1)

draw_sprite_ext(sprite_get("cooldown_hud"), tokens_hud*10, temp_x+27, temp_y+7, 1, 1, 0, c_white, 1);

shader_start();

draw_sprite_ext(sprite_get("0tokens"), tokens, temp_x+90, temp_y-50, 1, 1, 0, c_white, 1);
        
shader_end();
