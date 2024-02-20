//setting up frisk alt ui

set_ui_element(UI_HUD_ICON, get_synced_var(player) == 1 ? sprite_get("f_hud") : get_char_info(player, INFO_HUD));
sprite_change_offset("f_hud", 0, -2);
set_ui_element(UI_HUDHURT_ICON, get_synced_var(player) == 1 ? sprite_get("f_hudhurt") : get_char_info(player, INFO_HUDHURT));
sprite_change_offset("f_hudhurt", 0, -2);
set_ui_element(UI_OFFSCREEN, get_synced_var(player) == 1 ? sprite_get("f_offscreen") : get_char_info(player, INFO_OFFSCREEN));
sprite_change_offset("f_offscreen", 16, 18);
set_ui_element(UI_CHARSELECT, get_synced_var(player) == 1 ? sprite_get("f_charselect") : get_char_info(player, INFO_CHARSELECT));
set_ui_element(UI_WIN_SIDEBAR, get_synced_var(player) == 1 ? sprite_get("f_result_small") : get_char_info(player, INFO_SIDEBAR));
set_ui_element(UI_WIN_PORTRAIT, get_synced_var(player) == 1 ? sprite_get("f_portrait") : get_char_info(player, INFO_PORTRAIT));