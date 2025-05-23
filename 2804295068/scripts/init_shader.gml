//early access alt
if (get_player_color(player) == 7){
    outline_color = [35, 67, 49];
}
//cosmic alt
if (get_player_color(player) == 15){
    outline_color = [255, 255, 255];
    set_character_color_slot(0, 255, 255, 255, 0);
    set_character_color_slot(1, 255, 255, 255, 0);
    set_character_color_slot(2, 255, 255, 255, 0);
    set_character_color_slot(3, 255, 255, 255, 0);
    set_character_color_slot(4, 255, 255, 255, 0);
	if object_index == asset_get("stage_HUD") {
        set_ui_element(UI_HUD_ICON, sprite_get("cosmic_hud"));
    }
}

//glass alt
if (get_player_color(player) == 20){
    set_character_color_slot(0, 205, 252, 237, 0.5);
    set_character_color_slot(1, 85, 167, 242, 0.5);
    set_character_color_slot(2, 217, 120, 56, 0.5);
    set_character_color_slot(3, 89, 82, 255, 0.5);
    set_character_color_slot(4, 100, 0, 143, 0.5);
}