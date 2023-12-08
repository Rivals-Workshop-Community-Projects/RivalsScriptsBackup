var shader_player = player;
if object_index == asset_get("cs_playerbg_obj") {
    if "online_css" in self && online_css { shader_player = 0; }
}
else if "fake_alt" not in self {
    get_fake_alt();
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

#define get_fake_alt
true_alt = get_player_color(player);
fake_alt = true_alt;
var test_alt = get_player_color(player);
for (var i = 0; i < 4; i += 1) {
    if get_color_profile_slot_r(test_alt, 7) == round(colorO[28] * 255) {
        fake_alt = test_alt;
        break;
    }
    test_alt += 1;
    if test_alt >= 6 { test_alt = 0; }
}
//print(get_player_name(player) + " " + string(true_alt) + " " + string(fake_alt))