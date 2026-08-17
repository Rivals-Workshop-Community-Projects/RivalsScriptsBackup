var alt_cur = ("init_shader_alts" in self? init_shader_alts: get_player_color(player));

if !alt_cur for(var e = 0; e < 8; e++){
    set_character_color_slot(e, get_color_profile_slot_r(32, e), get_color_profile_slot_g(32, e), get_color_profile_slot_b(32, e), 1);
    set_article_color_slot(e, get_color_profile_slot_r(32, e), get_color_profile_slot_g(32, e), get_color_profile_slot_b(32, e), 1);
}

static_colorO[32] = 0;
static_colorO[33] = 0;
static_colorO[34] = 0;
if alt_cur == 7{
    static_colorO[32] = 33/255;
    static_colorO[33] = 1;
    static_colorO[34] = 251/255;
    if ("burned" in self && burned) || ("outline_color" in self && (outline_color[0] != 0 || outline_color[1] != 0 || outline_color[2] != 0)) exit;
    colorO[32] = 33/255;
    colorO[33] = 1;
    colorO[34] = 251/255;
}else if alt_cur == 24{
    static_colorO[32] = 209/255;
    static_colorO[33] = 241/255;
    static_colorO[34] = 1;
    if ("burned" in self && burned) || ("outline_color" in self && (outline_color[0] != 0 || outline_color[1] != 0 || outline_color[2] != 0)) exit;
    colorO[32] = 209/255;
    colorO[33] = 241/255;
    colorO[34] = 1;
}