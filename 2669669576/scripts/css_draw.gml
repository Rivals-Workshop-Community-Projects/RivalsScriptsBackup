if(get_player_color(player) == 7){
    draw_sprite_ext(sprite_get("charselect_outline"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("early_acces"), 0, x+180, y+108, 1, 1, 0, c_white, 1);
    
}

if(get_player_color(player) < 16){
    textDraw(x+40, y+40, "fName", c_white, 0, 10000, 1, true, 1, "No Voice")
} else {
    textDraw(x+40, y+40, "fName", c_white, 0, 10000, 1, true, 1, "Voice")
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 