//css_draw.gml
//this script allows us to draw anything over the CSS - icons, text etc.
//NOTE: CSS is short for Character Select Screen

alt_cur = get_player_color(player); //checks the current alt

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

shader_start();
//we need to draw over the portrait so the outline colors apply to it too
//draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)), //if css_anim time is under 60 it positions the character differently
        preview_y + 128,
        preview_scale, //so it is affected by small_sprites aswell
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1 //if css_anim_time is over 10 the sprite's transperency acts differently
    );
}

shader_end();
prepare_shader(); //resets shader
//everything below this point shouldn't use shaders (which means it won't recolor with alts)


//alt icons
if (alt_cur == 8) draw_sprite(sprite_get("css_icons"), 0, icon_x_pos, icon_y_pos); // Abyss
if (alt_cur == 9) draw_sprite(sprite_get("css_icons"), 1, icon_x_pos, icon_y_pos); // EA
if (alt_cur == 10) draw_sprite(sprite_get("css_icons"), 5, icon_x_pos, icon_y_pos); // gold
if (alt_cur == 13) draw_sprite(sprite_get("css_icons"), 2, icon_x_pos, icon_y_pos); // RoA2

//alt boxes
alt_total = 14;
draw_set_halign(fa_left);
var thin = alt_total > 16; //if we have more than 16 alts, the box sizes change accordingly

rectDraw(x+78, y+9, 132, 4, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? c_white : c_gray * 0.5;
	var draw_x = x + 79 + (thin ? 6 : 9) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 2, draw_color);
}

/* var txt = "#" + string(alt_cur);
rectDraw(x + 76, y + 15, 42, 20, c_black);

textDraw(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt, false); */


//animation - alt name text
//this is not in the same place as the character sprites because it shouldn't be affected by the shader (unless you want it to be)
var display_name = alt_name[alt_cur];
var drawx = floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10))
var sync = get_synced_var(player)

if alt_cur == playtester_alt { // playtesters
  display_name = alt_name[alt_cur] + string(playtester_list[sync-10*floor(sync/10)][0]);
  drawx = floor(x) + 14;
} else if alt_cur == tournament_alt {
  display_name = alt_name[alt_cur] + string(tournament_list[floor(sync/10)-1][0]);
  drawx = floor(x) + 14;
}

if (css_anim_time < 140)
{
    textDraw(
        //floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)), //if css_anim_time is under 10 the positioning work differently
        drawx,
        floor(y) + 45,//45,
        "fName",
        c_white,
        0,
        1000,
        fa_left,
        1,
        true,
        css_anim_time < 10 ? css_anim_time * 0.1 : css_anim_time*-0.05+7, //if css_anim_time is under 10 the alpha works differently
        string(display_name),
        false
    );
}

if alt_cur == playtester_alt or alt_cur == tournament_alt {
  draw_sprite_ext(sprite_get("css_buttons"), up_button_state, x + up_button_x, y + up_button_y, 2, 2, 0, c_white, 1);
  //draw_sprite_ext(sprite_get("css_buttons"), down_button_state+3, x + down_button_x, y + down_button_y, 2, 2, 0, c_white, 1);
}
init_shader();

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
