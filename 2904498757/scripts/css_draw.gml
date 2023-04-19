subimg = (subimg + 0.25) % 11;

alt_cur = get_player_color(player);
if alt_cur != alt_old {
    alt_old = alt_cur;
    timer = timer_max;
}

if timer > 0 {
    var alpha = min(timer * 3 / timer_max, 1);
    draw_sprite_ext(spr_idle, subimg, x + 172, y + 96, 2, 2, 0, c_white, alpha);
    shader_end();
    draw_set_halign(fa_left);
    textDraw(x + 10, y + 41, "fName", c_white, 0, 1000, 1, true, alpha, alt_name[alt_cur]);
    timer -= 1;
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);