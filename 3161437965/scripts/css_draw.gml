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
draw_sprite_ext(cur_skin == 1 ? sprite_get("f_charselect") : get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle[cur_skin],
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
switch (alt_cur)
{
    case 25: draw_sprite_ext(sprite_get("css_icons_ex"), 0, icon_x_pos, icon_y_pos, 2, 2, 0, c_white, 1); break; //VAE
    case 26: draw_sprite_ext(asset_get("prem_skin_spr"), 3, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //abyss
    case 27: draw_sprite_ext(asset_get("prem_skin_spr"), 2, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //early access
}


draw_sprite(sprite_get("css_altswitch"), cur_skin * 3 + skin_but_state, x + skin_but_x, y + skin_but_y);
draw_sprite(sprite_get("css_button"), voiced * 3 + voice_but_state, x + voice_but_x, y + voice_but_y);



//alt boxes
draw_set_halign(fa_left);
var thin = alt_total > 16; //if we have more than 16 alts, the box sizes change accordingly

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
//this is not in the same place as the character sprites because it shouldn't be affected by the shader (unless you want it to be)
if (css_anim_time < 140)
{
    //frisk alt name setup
    var new_name = 0;
    if (cur_skin == 1)
    {
        for (var frisk_alt = 0; frisk_alt < array_length(frisk_colors); frisk_alt ++) if (alt_cur == frisk_colors[frisk_alt][0])
        {
            new_name = frisk_colors[frisk_alt][1];
        }
    }

    textDraw(
        floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)), //if css_anim_time is under 10 the positioning work differently
        floor(y) + 43,
        "fName",
        c_white,
        0,
        1000,
        fa_left,
        1,
        true,
        css_anim_time < 10 ? css_anim_time * 0.1 : css_anim_time*-0.05+7, //if css_anim_time is under 10 the alpha works differently
        string(cur_skin == 1 && new_name != 0 ? new_name : alt_name[alt_cur]),
        false
    );
}



//supersonics CPU detection - displays outline
if (cpu_hover_time > 0)
{
    var prog = min(cpu_hover_time/10,1);
    var colprog = min(cpu_color_swap_time/5,1);
    var col = merge_color(prev_color,new_color,colprog);
    draw_sprite_ext(sprite_get("cpu_controllingplayer_outline"),0,x-4,y-6,2,2,0,col,prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17,plate_bounds[3]+1,`P${cpu_hovering_player}`);
    draw_set_alpha(1);
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

#define get_skin_sprite()
{
    var sprite_name = argument[0];
    var skin_prefix;

    switch (cur_spr_set)
    {
        case 0: skin_prefix = ""; break;
        case 1: skin_prefix = "s_"; break;
    }

    return sprite_get(skin_prefix + sprite_name);
}
