init_shader();

switch (alt_cur)
{
    case 17:
        draw_sprite_ext(sprite_get("charselec_ext"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
        break;
}

//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "Red Scarf";
alt_name[1]  = "Yellow Scarf";
alt_name[2]  = "Pink Scarf";
alt_name[3]  = "Blue Scarf";
alt_name[4]  = "White Scarf";
alt_name[5]  = "Corazon";
alt_name[6]  = "Lilac";
alt_name[7]  = "Milla";
alt_name[8]  = "Mayor Zhao";
alt_name[9]  = "Garfield";
alt_name[10]  = "Litten";
alt_name[11] = "Sprigatito";
alt_name[12]  = "Big";
alt_name[13] = "Abyss";
alt_name[14] = "Ratchet";
alt_name[15] = "Rivet";
alt_name[16] = "Carrie";
alt_name[17] = "Game Boy";
alt_name[18] = "Golden";

//Patch

draw_set_halign(fa_left);

//This code is a mishmash of code made by Muno, Sai and Bar-Kun, mainly taken from Keqing's CSS

//ANIMATION VARIABLES

rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < num_alts; i++)
{
	var draw_color = (i == alt_cur) ? col : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}

rectDraw(x + 76, y + 15, 42, 20, c_black);

textDraw(x + 82, y + 19, "fName", col, 20, 1000, fa_left, 1, false, 1, txt, false);

//ANIMATION VARIABLES
//original code was made by SAI

var temp_x = floor(x+10);
var temp_y = floor(y+10);

textDraw(floor(x) + 10, floor(y) + 43, "fName", c_white, 0, 1000, fa_left, 1, true, 1, string(alt_name[alt_cur]), false);


//bike
if (drawtime < 12) draw_sprite_ext(bike, drawtime/anim_speed, temp_x+40+(drawtime *4), temp_y+148, scale, scale, 0, -1, 1);
else draw_sprite_ext(bike, drawtime/anim_speed, temp_x+42+(drawtime *4), temp_y+148, scale, scale, 0, -1, 0);

draw_sprite_ext(sprite_get("voice_button"), voicebutton, voice_button_position_x, voice_button_position_y, 1, 1, 0, c_white, 1);

if !(instance_exists(cursor_id)) exit;

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