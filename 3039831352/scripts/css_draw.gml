//css_draw.gml

alt_cur = get_player_color(player);

//setting up super sonic button disable
spr_set_button_available = (alt_cur != 20 && !has_rune("M"))
if (!spr_set_button_available && cur_spr_set != 0) cur_spr_set = 0;
else if (spr_set_button_available && stored_spr_set == 1) cur_spr_set = stored_spr_set;

//thanks to supersonic, we can use colors directly from //init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

//outline colors - different function but works like the outline_color array
switch (alt_cur)
{
    case 14: set_outline(15, 56, 15); break; //early access / gameboy
    default:
        set_outline(
            cur_spr_set ? cur_colors[8][0]-200 : 0,
            cur_spr_set ? cur_colors[8][1]-200 : 0,
            cur_spr_set ? cur_colors[8][2]-200 : 0
        );

        if (alt_cur == 5 && cur_spr_set == 0) set_outline(10, 36, 107); //chaos 0 alt
        break;
}


shader_start();

//draw portrait again to prevent fuckups
draw_sprite_ext(get_skin_sprite("charselect"), 0, x+8, y+8, 2, 2, 0, c_white, 1);

//show idles
if (alt_cur == 5)
{
    if (cur_spr_set == 0)
    {
        maskHeader();
        draw_sprite_ext(sprite_get("charselect"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
        maskMidder();
        draw_sprite_tiled(sprite_get("alt_chaos"), css_anim_time * 0.15, x, y + (-css_anim_time/8));
        maskFooter();
        draw_sprite_ext(sprite_get("charselect"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
    }
    draw_sprite_ext(get_skin_sprite("charselect_ex"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
}
if (alt_cur == 14) draw_sprite_ext(get_skin_sprite("charselect_ex"), 1, x + 8, y + 8, 2, 2, 0, c_white, 1);
if (alt_cur == 15) draw_sprite_ext(get_skin_sprite("charselect_ex"), 3, x + 8, y + 8, 2, 2, 0, c_white, 1);
if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3)
{
    shader_end();
    prepare_shader();
    draw_sprite_ext(get_skin_sprite("charselect_ex"), 2, x + 8, y + 8, 2, 2, 0, c_white, 1);
    shader_start();
}

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        get_skin_sprite("idle"),
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

//everything below this point shouldn't use shaders

//options
draw_sprite(sprite_get("hud_voice"), cur_lang * 3 + lang_button_state, x + lang_x, y + lang_y);
if (spr_set_button_available)
{
    draw_sprite(sprite_get("hud_superalt"),
        cur_spr_set * 3 + spr_set_button_state,
        x + spr_set_x,
        y + spr_set_y + spr_set_ex_offset
    );
}

//alt icons
if (alt_cur >= 13 && alt_cur <= 18) draw_sprite(sprite_get("css_icons"), alt_cur-13, icon_x_pos, icon_y_pos);

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

//functions by supersonic
#define prepare_shader()
{
    //init_shader() fails to generate these variables for some reason,
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

//i have this here cuz i need sonic to turn back to normal instantly
#define update_sync_var
{
    synced_vars = [cur_lang, cur_spr_set];
    synced_number = generate_var_chunk(synced_vars);

    set_synced_var(player, synced_number);
}
#define generate_var_chunk(var_array)
{
    // chunk format:
    // 4 bits per option
    var chunk = 0;
    //set specials from array, doing it backwards tho. i read it right to left in init
    var len = array_length(var_array)-1
    for (var i = len; i >= 0; i--) {
        //print(`${i} = ${var_array[i]}`); //debug print woo
        if (i != len)
            chunk = chunk << 4; //bitshift left 4 to make room for the next value
        chunk += var_array[i]; //add the special's value
    }
    return real(chunk);
}

//mask code
#define maskHeader
{
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //go back to drawing normally again
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}