var shader_player = player;
if object_index == asset_get("cs_playerbg_obj") {
    if "online_css" in self && online_css { shader_player = 0; }
}
var shader_alt = ("fake_alt" in self ? fake_alt : get_player_color(shader_player));

switch shader_alt {
    case 0: // default
        set_character_color_slot(0, 255, 255, 255); // shirt
        set_article_color_slot(0, 255, 255, 255);
        
        set_character_color_slot(1, 181, 181, 181); // shirt (s)
        set_article_color_slot(1, 181, 181, 181);
        
        set_character_color_slot(2, 0, 0, 0, 1); // pants
        set_article_color_slot(2, 0, 0, 0, 1);
        
        set_character_color_slot(3, 0, 0, 0, 1); // pants (s)
        set_article_color_slot(3, 0, 0, 0, 1);
        break;
}
