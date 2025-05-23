//post_draw.gml





if (cannonball_charge >= 10){
        var shade_alpha = .01*cannonball_charge;
        if (state_timer % 12 <= 6){
                    			shade_alpha = 0;
		} else shade_alpha = .01*cannonball_charge;
        gpu_set_fog(1, c_white, 0, 1);
            draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale, image_yscale, spr_angle, c_white, shade_alpha)
        gpu_set_fog(0, c_white, 0, 1);
}
// code for kamehameha



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;