// prevents draw_hud from running a frame too early and spitting an error
if "unown_text_buffer" not in self exit;


var text_posx = temp_x+32;
var text_posy = temp_y+11;
outlined_text_draw(text_posx, text_posy, string_upper(unown_text_buffer), c_gray, c_black);

var detected_word = string_copy(unown_text_buffer, unown_best_word_pos+1, unown_best_word_length);
text_posx += string_width(string_upper(string_copy(unown_text_buffer, 0, unown_best_word_pos)));
outlined_text_draw(text_posx, text_posy, string_upper(detected_word), c_white, c_blue);

//Animated word that "!" just used
if (hidden_power_text_anim_timer > 0)
{
    text_posx = temp_x+32 + 8 * (hidden_power_text_anim_pos + string_length(hidden_power_text_anim)/2);
    text_posy += 12;
    
    if (hidden_power_text_anim_timer > 100)
    {
        var shake_level = 0.01 * ease_quadOut(0, 100, hidden_power_text_anim_timer - 100, 20)
        var shake_x = -6 + random_func(7, 12, true);
        var shake_y = -6 + random_func(8, 12, true);
        text_posx += floor(shake_level * shake_x);
        text_posy += floor(shake_level * shake_y);
    }
    
    var alpha = (hidden_power_text_anim_timer > 60) ? 1
                : (0.01 * ease_quadOut(0, 100, hidden_power_text_anim_timer, 60)) 
    
    big_outlined_text_draw(text_posx, text_posy, hidden_power_text_anim, c_white, c_red, alpha);
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
//muno_event_type = 5;
//user_event(14);

//====================================================
#define outlined_text_draw(posx, posy, text_string, text_color, outline_color)
{
    var text_scale = 2;
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

//====================================================
#define big_outlined_text_draw(posx, posy, text_string, text_color, outline_color, alpha)
{
    var text_scale = 3;
    var half_scale = text_scale/2; //font is already 2x2
    var max_line_length = 1200;
    var line_spacing = 20;
    draw_set_font(asset_get("fName"));
    draw_set_halign(fa_center);
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
             half_scale, half_scale, 0, outline_color, outline_color, outline_color, outline_color, alpha*alpha);
        }
    }
    //white text
    draw_text_ext_transformed_color
    (posx, posy, text_string, line_spacing, max_line_length, 
     half_scale, half_scale, 0, text_color, text_color, text_color, text_color, alpha);
}