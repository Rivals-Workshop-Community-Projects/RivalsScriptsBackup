// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;


var text_posx = temp_x+32;
var text_posy = temp_y+11;
outlined_text_draw(text_posx, text_posy, string_upper(unown_text_buffer), c_gray, c_black);

var detected_word = string_copy(unown_text_buffer, unown_best_word_pos+1, unown_best_word_length);
text_posx += string_width(string_upper(string_copy(unown_text_buffer, 0, unown_best_word_pos)));
outlined_text_draw(text_posx, text_posy, string_upper(detected_word), c_white, c_blue);



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);

//====================================================
#define outlined_text_draw(posx, posy, text_string, text_color, outline_color)
{
    var text_scale = 2; //2x2 pixels
    var half_scale = text_scale/2; //font is already 2x2
    var max_line_length = 1200;
    var line_spacing = 20;
    draw_set_font(asset_get("fName"));
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    
    //black contour
    for (var i = 0; i < 9; i++)
    {
        if (i != 4) //ignore middle
        {
            var t_x = floor(i / 3 - 1) * text_scale;
            var t_y = floor(i % 3 - 1) * text_scale;
            draw_text_ext_transformed_color
            (posx + t_x, posy + t_y, text_string, line_spacing, max_line_length, 
             half_scale, half_scale, 0, outline_color, outline_color, outline_color, outline_color, 1);
        }
    }
    //white text
    draw_text_ext_transformed_color
    (posx, posy, text_string, line_spacing, max_line_length, 
     half_scale, half_scale, 0, text_color, text_color, text_color, text_color, 1);
}