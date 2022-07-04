if (get_synced_var(player))
{
	sprite_change_offset("hudFur", 0, -2);
	sprite_change_offset("hurtHudFur", 0, -2);
	sprite_change_offset("offscreenFur", 16, 18);
	set_ui_element(UI_HUD_ICON, sprite_get("hudFur"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurtHudFur"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreenFur"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portraitFur"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselectFur"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_smallFur"));
}
else
{
	sprite_change_offset("hud", 0, -2);
	sprite_change_offset("hurtHud", 0, -2);
	sprite_change_offset("offscreen", 16, 18);
	set_ui_element(UI_HUD_ICON, sprite_get("hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurtHud"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"));
}