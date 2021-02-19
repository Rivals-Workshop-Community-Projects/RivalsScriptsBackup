if ("phone_inited" not in self) exit;



if !phone_cheats[cheat_hide_hud]{

    shader_start();
    
    var draw_x = temp_x;
    var draw_y = temp_y + 6;
    
    draw_sprite(spr_hud_hotbar, legion.type, draw_x - 8, draw_y - 92);
    
    var max_width = 200;
    var rect_width = round(max_width * (legion.legion_health / legion.max_health) / 2) * 2 - 1;
    var white_width = min(rect_width + 2, max_width - 1);
    
    rectDraw(draw_x + 4, draw_y - 20, white_width, 7, c_white);
    rectDraw(draw_x + 4, draw_y - 20, rect_width, 7, blue_color);
    
    draw_x += 86;
    draw_y += -18;
    
    textDraw(draw_x + 50, draw_y - 17, "fName", c_white, 100, 1000, fa_right, 1, 0, 1, string(ceil(legion.legion_health / legion.health_ratio)));
    textDraw(draw_x + 50, draw_y - 17, "fName", blue_color, 100, 1000, fa_left, 1, 0, 1, " / " + string(legion.max_health / legion.health_ratio));
    
    shader_end();
    
}



user_event(11);



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha > 0 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];