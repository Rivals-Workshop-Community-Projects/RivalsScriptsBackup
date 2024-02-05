var alt_cur = get_player_color(player);
init_shader_alts = alt_cur;
init_shader();

if alt_cur != 0{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("unmapped_portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("unmapped_result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("unmapped_charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("unmapped_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("unmapped_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("unmapped_offscreen"));
}else{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("corr_portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("corr_result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("corr_charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("corr_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("corr_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("corr_offscreen"));
}

if(alt_cur != prev_alt){
    anim_timer = 0;
    alpha_alt = 8;
}
if alpha_alt > 0 {
    alpha_alt -= 0.05;
    anim_timer++;
}
prev_alt = alt_cur;

shader_end();
prepare_shader();
shader_start();

draw_sprite_ext(get_char_info(player, UI_CHARSELECT), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
draw_sprite_part_ext(sprite_get("idle"), anim_timer * .22 + 2, 18, 0, 100, 200, x + 8, y - 12 + 82, 2, 2, c_white, alpha_alt);
shader_end();

if(alt_cur == 17) draw_sprite_ext(sprite_get("css_icons"), 2, x + 174, y + 108, 1, 1, 0, c_white, 1);
if(alt_cur == 21) draw_sprite_ext(sprite_get("css_icons"), 6, x + 174, y + 108, 1, 1, 0, c_white, 1);
if(alt_cur == 26) draw_sprite_ext(sprite_get("css_icons"), 10, x + 174, y + 108, 1, 1, 0, c_white, 1);
if(alt_cur == 27) draw_sprite_ext(sprite_get("css_icons"), 11, x + 174, y + 108, 1, 1, 0, c_white, 1);
if(alt_cur == 28) draw_sprite_ext(sprite_get("css_icons"), 12, x + 174, y + 108, 1, 1, 0, c_white, 1);
if alt_cur == 29 || alt_cur == 30 || alt_cur == 31 draw_sprite_ext(sprite_get("css_icons"), 9, x + 174, y + 108, 1, 1, 0, c_white, 1);
draw_set_halign(fa_left);
textDraw(x + 14, y + 44, "fName", (alt_cur == 23? c_white: (alt_cur? make_color_rgb(get_color_profile_slot_r(alt_cur, 0), get_color_profile_slot_g(alt_cur, 0), get_color_profile_slot_b(alt_cur, 0)): make_color_rgb(143, 143, 143))), 14, 400, 1, 1, alpha_alt, alt_name[alt_cur], (alt_cur == 7? make_color_rgb(33, 255, 251): (alt_cur = 24? make_color_rgb(209, 241, 255): c_black)));


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

#define prepare_shader()
{
    //init_shader(); fails to generate these variables for some reason,
    //so we assign them to these completely equivalent values
    //this allows shader_start() to be run in css_draw.gml!!!
    static_colorB = colorB;
    static_colorO = colorO;
    static_colorT = colorT;
    static_colorI = colorI;
    init_shader();
}