//css_draw.gml

alt_cur = get_player_color(player);

//PORTRAITS OVERLAY
if (alt_cur == 14) draw_sprite_ext(sprite_get("charselect_ex"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);

//animation - character
if (css_anim_time < 140)
{
    //idle
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)),
        preview_y + 128,
        preview_scale,
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1
    );

    //idle outline
    draw_sprite_ext(
        preview_line,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)),
        preview_y + 128,
        preview_scale,
        preview_scale,
        0,
        preview_line_color,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1
    );
}
init_shader();
shader_end();


//ICONS
if (alt_cur >= 13 && alt_cur <= 18) draw_sprite(sprite_get("css_icons"), alt_cur - 13 , icon_x_pos, icon_y_pos);


//alt boxes
draw_set_halign(fa_left);
var thin = alt_total > 16;

rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? c_white : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}

var txt = "#" + string(alt_cur);
rectDraw(x + 76, y + 15, 42, 20, c_black);

textDraw(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt, false);


//options
draw_sprite(sprite_get("hud_voice"), synced_vars[0] * 3 + lang_button_state, x + lang_x, y + lang_y);

draw_sprite(sprite_get("hud_damage"), synced_vars[1] * 3 + dmg_button_state, x + dmg_x, y + dmg_y);


//animation - text
if (css_anim_time < 140)
{
    //alt name text
    textDraw(
        floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)),
        floor(y) + 43,
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


//supersonics CPU detection - displays outline
if cpu_hover_time>0 {
    var prog = min(cpu_hover_time/10,1);
    var colprog = min(cpu_color_swap_time/5,1);
    var col = merge_color(prev_color,new_color,colprog);
    draw_sprite_ext(sprite_get("cpu_controllingplayer_outline"),0,x-4,y-6,2,2,0,col,prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17,plate_bounds[3]+1,`P${cpu_hovering_player}`);
    draw_set_alpha(1);
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