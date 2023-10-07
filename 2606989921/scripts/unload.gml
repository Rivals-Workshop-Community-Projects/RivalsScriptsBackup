//unload.gml

//prevents a crash because HUD elements persist across matches.
//somehow this still gets the original images? oddly enough
if object_index == oPlayer {
    set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
    set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
    set_ui_element(UI_CHARSELECT, get_char_info(player, INFO_CHARSELECT));
    set_victory_portrait(get_char_info(player, INFO_PORTRAIT));
}