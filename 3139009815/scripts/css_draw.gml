muno_event_type = 6;
user_event(14);

var height_offset = round(sin(get_gameplay_time() / 8)) * 2;
var x_off = x + 110;
var y_off = y + 188 + height_offset;
var col = c_white;
var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

// draw_rectangle_color(x_off, y_off - 2, x_off + 29, y_off + 27, col, col, col, col, false);
// draw_sprite_ext(sprite_get("_info_alert"), 0, x_off, y_off, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("_info_outline"), 0, x_off-2, y_off-12-height_offset, 2, 2, 0, c_white, sin(get_gameplay_time() / 8) + 1);

// draw_debug_text(round(x+70), round(y+188 + height_offset), "!!! ->")
// draw_debug_text(round(x+70), round(y+186 + height_offset), "!!! ->")


if (playerAlt == 23){
    set_outline(15, 56, 15);
}
shader_start();
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