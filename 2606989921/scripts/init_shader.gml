//init_shader.gml

var true_player = (room == asset_get("network_char_select")) ? 0 : player;
var color = get_player_color(player);

if ("msg_effective_alt" in self) && (msg_effective_alt != color)
{
    color = msg_effective_alt;
    apply_color_slot(0, color, 0);
    apply_color_slot(1, color, 1);
    apply_color_slot(2, color, 2);
    apply_color_slot(3, color, 3);
}

//these are not reset automatically
static_colorO[8*4 + 0] = 0;
static_colorO[8*4 + 1] = 0;
static_colorO[8*4 + 2] = 0;

if (color == 8)
{
    colorO[8*4 + 0] = 1;
    colorO[8*4 + 1] = 1;
    colorO[8*4 + 2] = 1;
    static_colorO[8*4 + 0] = 1;
    static_colorO[8*4 + 1] = 1;
    static_colorO[8*4 + 2] = 1;
}
else if (color == 14)
{
    var sync = get_synced_var(player);
    apply_color_slot(1, (sync & 0xF0) >> 4, 2);
    apply_color_slot(2, (sync & 0xF00)>> 8, 1);
}
else if (color == 15)
{
    colorO[8*4 + 0] = 0;
    colorO[8*4 + 1] = 0.55;
    colorO[8*4 + 2] = 0;
    static_colorO[8*4 + 0] = 0;
    static_colorO[8*4 + 1] = 0.55;
    static_colorO[8*4 + 2] = 0;
    set_character_color_shading(0, 0.0);
    set_character_color_shading(1, 0.0);
    set_character_color_shading(2, 0.0);
    set_character_color_shading(3, 0.0);
}

//============================================
//remove all shading
if (object_index == asset_get("oPlayer") || object_index == asset_get("oTestPlayer"))
{
    set_character_color_shading(0, 0.0);
    set_character_color_shading(1, 0.0);
    set_character_color_shading(2, 0.0);
    set_character_color_shading(3, 0.0);

    //set true colors to pixelblock zones
    apply_color_slot(4, color, 0);
    apply_color_slot(5, color, 1);
    apply_color_slot(6, color, 2);
    apply_color_slot(7, color, 3);
}

#define apply_color_slot(target_shade, source_color, source_shade)
{
   set_character_color_slot(target_shade,  
        get_color_profile_slot_r(source_color, source_shade),  
        get_color_profile_slot_g(source_color, source_shade),
        get_color_profile_slot_b(source_color, source_shade), 1);
   set_article_color_slot(target_shade,  
        get_color_profile_slot_r(source_color, source_shade),  
        get_color_profile_slot_g(source_color, source_shade),
        get_color_profile_slot_b(source_color, source_shade), 1);
}