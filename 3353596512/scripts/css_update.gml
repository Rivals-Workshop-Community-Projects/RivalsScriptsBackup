//css update

//special alts
if (get_player_color(player) == 5){
    set_ui_element(UI_HUD_ICON, sprite_get("hud_rabbit"));
    set_ui_element(UI_HUDHURT_ICON, sprite_get("hudhurt_rabbit"));
    sprite_change_offset("hud_rabbit", 0, -2);
	sprite_change_offset("hudhurt_rabbit", 0, -2);
}

if (get_player_color(player) != 5){
	set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
	set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
}