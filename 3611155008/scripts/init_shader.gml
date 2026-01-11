if !instance_exists(self) exit;
var cur_alt = ("init_shader_alts" in self? init_shader_alts: get_player_color(player));
var e = 0;
if cur_alt == 0 repeat 8{
    set_character_color_slot(e, get_color_profile_slot_r(32, e), get_color_profile_slot_g(32, e), get_color_profile_slot_b(32, e));
    set_article_color_slot(e, get_color_profile_slot_r(32, e), get_color_profile_slot_g(32, e), get_color_profile_slot_b(32, e));
    e++;
}