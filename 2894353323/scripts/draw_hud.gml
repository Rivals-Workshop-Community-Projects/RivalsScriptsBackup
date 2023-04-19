
if ("char_height" not in self) exit;
var t_x = temp_x - 16;
var t_y = temp_y - 16;

draw_sprite_ext(sprite_get("hud_top"), 0, t_x + 32, t_y - 32, 2, 2, 0, c_white, 1);

//XP Bar
var exp_gague_total = skill_exp_smooth / ease_quadIn(skill_exp_min, skill_exp_max, skill_level-1, skill_level_max);

draw_sprite_ext(sprite_get("hud_exp_bar_bg"), 0, t_x + 42, t_y + 16, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_exp_bar"), skill_exp_smooth >= skill_exp - 0.5 ? 0 : 1, t_x + 44, t_y + 18, 2 * exp_gague_total, 2, 0, c_white, 1);

//Items

if (skill_current[0] != undefined) draw_sprite_ext(skill_current[0].icon, skill_current[0].icon_img, t_x + 56, t_y - 8, 2, 2, 0, c_white, 1);
if (skill_current[1] != undefined) draw_sprite_ext(skill_current[1].icon, skill_current[1].icon_img, t_x + 104, t_y - 8, 2, 2, 0, c_white, 1);
if (skill_current[2] != undefined) draw_sprite_ext(skill_current[2].icon, skill_current[2].icon_img, t_x + 152, t_y - 8, 2, 2, 0, c_white, 1);
if (skill_current[3] != undefined) draw_sprite_ext(skill_current[3].icon, skill_current[3].icon_img, t_x + 208, t_y - 8, 2, 2, 0, c_white, 1);

//Level
text_draw(t_x + 208 , t_y - 18, "fName", c_white, 0, 1000, 1, true, 1, string(skill_level));

//Level
if (is_attacking && attack == AT_DSPECIAL) {
    if (window == 4) {
        text_draw(t_x, t_y - 32, "fName", c_white, 0, 1000, 1, true, 1, "Attack: Accept");
        text_draw(t_x, t_y - 16, "fName", c_white, 0, 1000, 1, true, 1, "Parry: Cancel");
    }
}

#define text_draw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
draw_set_halign(fa_left);
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);


return string_width_ext(argument[9], argument[4], argument[5]);
