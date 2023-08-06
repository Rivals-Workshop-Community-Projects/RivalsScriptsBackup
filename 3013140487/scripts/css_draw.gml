alt_cur = get_player_color("alt_fix" in self? alt_fix: player);
//css names
var temp_x = x;
var temp_y = y;


if(alt_cur != prev_alt){
    anim_timer = 0;
    alpha_alt = 6;
}
if alpha_alt > 0 {
    alpha_alt -= 0.05;
    anim_timer++;
}
prev_alt = alt_cur;

draw_sprite_part_ext(sprite_get("idle"), anim_timer * 0.10, 10, 0, 100, 100, temp_x, temp_y + 26 + 15 * alpha_alt/3, 2, 2, c_white, alpha_alt);
shader_end();
draw_set_halign(fa_left);
textDraw(temp_x + 14, temp_y + 44, "fName", make_color_rgb(get_color_profile_slot_r(alt_cur, 1), get_color_profile_slot_g(alt_cur, 1), get_color_profile_slot_b(alt_cur, 1)), 16, 400, 1, 1, alpha_alt, alt_name[alt_cur], ((get_color_profile_slot_r(alt_cur, 1) + get_color_profile_slot_g(alt_cur, 1) + get_color_profile_slot_b(alt_cur, 1)) <= 100? c_white: c_black));

if alt_cur == 8 draw_sprite_ext(sprite_get("css_icons"), 9, x + 174, y + 108, 1, 1, 0, c_white, 1);

//button
draw_sprite_ext(sprite_get("css_button"), voicebutton, x + (player = 0? 80: (get_player_hud_color(onlpl) == 8421504? 58: 74)), y + (player == 0? 12: 178), 2, 2, 0, c_white, 1);


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(font));

if outline{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(x + scale*2, y, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x + scale*2, y + scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x + scale*2, y - scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x, y - scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x - scale*2, y - scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x - scale*2, y, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x - scale*2, y + scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
    draw_text_ext_transformed_color(x, y +  scale*2, string, lineb, linew, scale, scale, 0, outline_c, outline_c, outline_c,outline_c, alpha);
}
draw_text_ext_transformed_color(x, y, string, lineb, linew, scale, scale, 0, color, color, color, color, alpha);