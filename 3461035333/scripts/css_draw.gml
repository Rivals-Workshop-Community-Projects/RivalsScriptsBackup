//css_draw.gml

alt_cur = get_player_color(player);
sprite_change_offset("idle", 16, 31);
sprite_change_offset("sage_idle", 16, 31);

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

shader_start();
//draw portrait again to prevent fuckups

draw_sprite_ext((cur_sage_display % 2 == 0) ? sprite_get("sage_charselect") : sprite_get("normal_charselect"), 0, x+8, y+8, 2, 2, 0, c_white, 1);

draw_sprite(sprite_get("hud_sage_display"), synced_vars[0] * 3 + sage_display_button_state, x + sage_display_x, y + sage_display_y);

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x - 36 + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)),
        preview_y+20,
        preview_scale,
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1
    );
}

shader_end();
prepare_shader(); //resets shader

//everything below this point shouldn't use shaders

//alt icons
/*
switch (alt_cur)
{
    case 13: draw_sprite_ext(asset_get("prem_skin_spr"), 3, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //abyss
    case 14: draw_sprite_ext(asset_get("prem_skin_spr"), 2, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //early access
    case 15: draw_sprite_ext(asset_get("prem_skin_spr"), 8, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //milestone
    case 16: draw_sprite_ext(asset_get("prem_skin_spr"), 7, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //seasonal
    case 17: draw_sprite_ext(asset_get("prem_skin_spr"), 0, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //infamous/premium
    case 18: draw_sprite_ext(asset_get("prem_skin_spr"), 5, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //gold rank
    case 25: draw_sprite_ext(sprite_get("css_umbra"), 0, icon_x_pos, icon_y_pos, 2, 2, 0, c_white, 1); break; //umbra princess
    case 26: draw_sprite_ext(sprite_get("css_allstar"), 0, icon_x_pos, icon_y_pos, 2, 2, 0, c_white, 1); break; //all-star heroine
    case 27: draw_sprite_ext(sprite_get("css_vortex"), 0, icon_x_pos, icon_y_pos, 2, 2, 0, c_white, 1); break; //vortex 2024
}
*/

//alt boxes
draw_set_halign(fa_left);
var thin = alt_total > 16;
rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? c_white : c_gray * 0.5;
	var draw_x = x + 78 + 6 * i;
	rectDraw(draw_x, y + 9, 3, 4, draw_color);
}
var txt = "#" + string(alt_cur);
rectDraw(x + 76, y + 15, 42, 20, c_black);
textDraw(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt, false);

//animation - alt name text
if (css_anim_time < 140)
{
    textDraw(
        floor(x) + 30 +  (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)),
        floor(y) + 133,
        "fName",
        c_white,
        0,
        1000,
        fa_left,
        1,
        true,
        css_anim_time < 10 ? css_anim_time * 0.1 : css_anim_time*-0.05+7,
        string(alt_name[alt_cur]),
        false
    );
}



//functions by supersonic
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

//functions by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
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
}