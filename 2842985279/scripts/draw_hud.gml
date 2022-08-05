// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

var fnt = ssl_hud_font;
var olfnt = ssl_hud_font_ol;
 var alt = get_player_color(player);
    if "_sslhb_col1" not in self {
        var col1_r = get_color_profile_slot_r(alt, 0)
        var col1_g = get_color_profile_slot_g(alt, 0)
        var col1_b = get_color_profile_slot_b(alt, 0)
        _sslhb_col1 = make_color_rgb(col1_r, col1_g, col1_b); //$313423
    }
    if "_sslhb_col4" not in self {
        var col4_r = get_color_profile_slot_r(alt, 3)
        var col4_g = get_color_profile_slot_g(alt, 3)
        var col4_b = get_color_profile_slot_b(alt, 3)
        _sslhb_col4 = make_color_rgb(col4_r, col4_g, col4_b); //$313423
    }
    if "_sslhb_col3" not in self {
        var col3_r = get_color_profile_slot_r(alt, 2)
        var col3_g = get_color_profile_slot_g(alt, 2)
        var col3_b = get_color_profile_slot_b(alt, 2)
        _sslhb_col3 = make_color_rgb(col3_r, col3_g, col3_b); //$313423
    }
var text_posx = temp_x+32;
var text_posy = temp_y;
draw_hud_text(text_posx, text_posy,string_upper(unown_text_buffer),fnt,olfnt,_sslhb_col4,_sslhb_col1);
var detected_word = string_copy(unown_text_buffer, unown_best_word_pos+1, unown_best_word_length);
text_posx += (string_width(string_upper(string_copy(unown_text_buffer, 0, unown_best_word_pos)))*2);
draw_hud_text(text_posx, text_posy,string_upper(detected_word),fnt,olfnt,_sslhb_col3,_sslhb_col1);
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
muno_event_type = 5;
user_event(14);

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

#define draw_hud_text(x, y, str, font, fontol, col, olcol)
str = string(str);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(font)
draw_text_transformed_color(x,y,str,2,2,0,col,col,col,col,1);
draw_set_font(fontol)
draw_text_transformed_color(x,y,str,2,2,0,olcol,olcol,olcol,olcol,1);