//css_draw.gml


alt_cur = get_player_color(player);

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

//outline colors - different function but works like the outline_color array
//switch (alt_cur)
{
    //case 14: set_outline(15, 56, 15); break; //early access / gameboy
    //default: set_outline(0, 0, 0); break;
}

shader_start();
//draw portrait again to prevent fuckups
draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

//animation - character
if (css_anim_time < 140)
{
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
}

shader_end();
prepare_shader(); //resets shader

var qe_b = string(sprite_get("idle")) //my sneaky trick to make sure every reload refreshes -supersonic
// ! you can now scroll down until you reach "the primary part you should change."
online_fix = player; //this is used in init_shader to fix the online init_shader bug.
draw_sprite_ext(sprite_get("cssvoice_button"), cur_lang * 3 + lang_button_state, x + lang_x, y + lang_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("cssink_button"), inks_button_state, x + inks_x, y + inks_y, 2, 2, 0, ink_colors[cur_ink], 1);
textDraw(x + 16 + inks_x, y + 6 + inks_y, "fName", c_white, 0, 999, 1, fa_middle, true, 1, string(ink_names[cur_ink]), false);

cpu_hover_draw(); 

//everything below this point shouldn't use shaders

//alt icons
switch (get_player_color(player)){
case 29:
	    draw_sprite(sprite_get("css_vortex"),0,x+176,y+110);
	break;
case 30:
	    draw_sprite(sprite_get("css_icon_riptide"),0,x+176,y+110);
	break;	
case 31:
	    draw_sprite(sprite_get("css_allstar"),0,x+176,y+110);
	break;
}

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

//animation - alt name text
if (css_anim_time < 140)
{
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
#define set_outline(r, g, b)
{
    //we use this function to add custom outlines to our character's portrait
    var start = 8*4; //outline
    static_colorO[start] = r/255;
    static_colorO[start+1] = g/255;
    static_colorO[start+2] = b/255;
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

#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}