//draw_hud - the x position of your HUD element is 48*(i-1)

draw_rectangle_color(temp_x + 26, temp_y + 6, temp_x + 37, temp_y + 41, c_black, c_black, c_black, c_black, 0);
draw_rectangle_color(temp_x + 28, temp_y + 8, temp_x + 35, temp_y + 39, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0);
draw_rectangle_color(temp_x + 28, temp_y + 8 + 32*(tokens>=3? 1: tokens%1), temp_x + 35, temp_y + 39, c_white, c_white, c_white, c_white, 0);

shader_start();

draw_sprite_ext(sprite_get("0tokens"), (tokens>0) + (tokens>1) + (tokens>2), temp_x+90, temp_y-50, 1, 1, 0, c_white, 1);

shader_end();

if jestermode == true && state == PS_SPAWN{
    textDraw(temp_x + 100, temp_y - 4, "fName", c_white, 14, 400, 1, true, 1, "Samsara looms, watching its jester.", c_black);
}
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] +  argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);