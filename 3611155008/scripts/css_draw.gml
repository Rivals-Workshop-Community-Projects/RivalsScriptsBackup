var alt_cur = get_player_color(player);
init_shader_alts = alt_cur;
init_shader();

var corr = (!alt_cur? "corr_": "");
set_ui_element(UI_WIN_PORTRAIT, sprite_get(corr + "portrait"));
set_ui_element(UI_WIN_SIDEBAR, sprite_get(corr + "result_small"));
set_ui_element(UI_CHARSELECT, sprite_get(corr + "charselect"));
set_ui_element(UI_HUD_ICON, sprite_get(corr + "hud"));
set_ui_element(UI_HUDHURT_ICON, sprite_get(corr + "hud_hurt"));

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
draw_sprite_part_ext(sprite_get("idle"), anim_timer*.15, 16, 0, 200, 300, x + 8, y - 12 + 70, 2, 2, c_white, alpha_alt);
shader_end();

draw_set_halign(fa_left);
textDraw(x + 14, y + 44, "fName", make_color_rgb(get_color_profile_slot_r(alt_cur, 1), get_color_profile_slot_g(alt_cur, 1), get_color_profile_slot_b(alt_cur, 1)), 14, 400, 1, 1, alpha_alt, alt_name[alt_cur], c_black);
draw_set_halign(fa_left);


//draw_sprite_ext(sprite_get("css_icons"), 2, x + 172, y + 40, 1, 1, 0, c_white, 1);
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