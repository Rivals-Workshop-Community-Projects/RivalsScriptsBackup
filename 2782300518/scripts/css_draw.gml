init_shader();

//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "Red Scarf";
alt_name[1]  = "Yellow Scarf";
alt_name[2]  = "Pink Scarf";
alt_name[3]  = "Blue Scarf";
alt_name[4]  = "White Scarf";
alt_name[5]  = "Corazon";
alt_name[6]  = "Lilac";
alt_name[7]  = "Milla";
alt_name[8]  = "Neera";
alt_name[9]  = "Spade";
alt_name[10]  = "Mayor Zhao";
alt_name[11] = "Ratchet";
alt_name[12] = "Rivet";
alt_name[13] = "Abyss";
alt_name[14] = "Early Access";
alt_name[15] = "Big";
alt_name[16] = "Blaze";
alt_name[17] = "Honey";
alt_name[18] = "Solid Gold Motorbike";
alt_name[19] = "Litten";
alt_name[20] = "Sprigatito";
alt_name[21] = "Mio";
alt_name[22] = "Niko";
alt_name[23] = "Doraemon";
alt_name[24] = "Kamen Rider";
alt_name[25] = "Trans Rights";
alt_name[26] = "Carrie";
alt_name[27] = "Wes";
alt_name[28] = "Valentino Rossi";
alt_name[29] = "Christmas";
alt_name[30] = "Garfield";
alt_name[31] = "Nanashi Mumei";

//Patch

shader_end();
prepare_shader();

switch (alt_cur)
{
    case 14: set_outline(15, 56, 15); break; //early access / gameboy
    default: set_outline(0, 0, 0); break;
}

shader_start();
draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

shader_end();

draw_set_halign(fa_left);

//This code is a mishmash of code made by Muno, Sai and Bar-Kun with my own flairs, mainly taken from Keqing's CSS

rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < num_alts; i++)
{
	var draw_color = (i == alt_cur) ? col : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}

//rectDraw(x + 76, y + 15, 42, 20, c_black);

//textDraw(x + 82, y + 19, "fName", col, 20, 1000, fa_left, 1, false, 1, txt, false);


//ANIMATION VARIABLES
//original code was made by SAI

var temp_x = floor(x+10);
var temp_y = floor(y+10);

draw_sprite_ext(sprite_get("alt_number"), alt_cur, x + 10, y + 42, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("alt_name_text"), alt_cur, temp_x + 2, temp_y + 122, 2, 2, 0, c_white, title_alpha);


//textDraw(floor(x) + 10, floor(y) + 43, "fName", c_white, 0, 1000, fa_left, 1, true, 1, string(alt_name[alt_cur]), false);

shader_start();
if (css_timer < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_timer * preview_anim_speed,
        preview_x + 10 + (css_timer < 60 ?  + 24 + (css_timer / 20) : 16 + (css_timer / 5)), //if css_anim time is under 60 it positions the character differently
        preview_y + 122,
        preview_scale, //so it is affected by small_sprites aswell
        preview_scale,
        0,
        c_white,
        css_timer > 10 ? (css_timer * -0.01 + 1.25) + 0.2 : css_timer * 0.1 //if css_anim_time is over 10 the sprite's transperency acts differently
    );
}
shader_end();

//bike
if (instance_exists(cursor_id))
{
	if (drawtime < 12) draw_sprite_ext(bike, drawtime/anim_speed, temp_x+40+(drawtime *4), temp_y+148, scale, scale, 0, -1, 1);
	else draw_sprite_ext(bike, drawtime/anim_speed, temp_x+42+(drawtime *4), temp_y+148, scale, scale, 0, -1, 0);
}
draw_sprite_ext(sprite_get("voice_button"), voicebutton, voice_button_position_x, voice_button_position_y, 1, 1, 0, c_white, 1);

if !(instance_exists(cursor_id)) exit;

cpu_hover_draw(); 

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

#define set_outline(r, g, b)
{
    //we use this function to add custom outlines to our character's portrait
    var start = 8*4; //outline
    static_colorO[start] = r/255;
    static_colorO[start+1] = g/255;
    static_colorO[start+2] = b/255;
}

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