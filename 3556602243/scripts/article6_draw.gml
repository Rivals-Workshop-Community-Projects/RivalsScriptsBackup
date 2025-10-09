//
draw_set_halign(fa_center)
draw_set_valign(fa_top)

if (dmg_value != -4) {
	textDraw(x, y - (60 - life) * 3, "roaMBLFont", dmg_color, 1000, 100, 1, false, clamp(life / 30, .5, 1), string(dmg_value));
}

if (card_icon != -4) {
	draw_sprite_ext(card_sprite, card_icon, player_owner.x + (offset_x * 32), player_owner.y - floor(player_owner.char_height * 1.5) - (offset_y * 32) - (60 - life) * 3, 2, 2, 0, card_color, clamp(life / 30, .5, 1))
}

if (vfx_spr != -4) {
	draw_sprite_ext(vfx_spr, 0, x, y - (60 - life) * 3, 2, 2, 0, c_white, clamp(life / 30, .5, 1))
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
