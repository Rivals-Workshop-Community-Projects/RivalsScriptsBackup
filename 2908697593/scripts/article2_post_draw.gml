draw_set_halign(fa_center);
textDraw(x, y - draw, "fName", c_white, 0, 300, 1, 1, alpha, "+ Plasma Energy", make_color_rgb(0, 242, 255));


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
   
}
