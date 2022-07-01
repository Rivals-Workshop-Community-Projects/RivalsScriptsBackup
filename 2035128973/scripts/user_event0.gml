if (get_synced_var(player))
{
	sprite_change_offset("hudAcc", 0, -2);
	sprite_change_offset("hurtHudAcc", 0, -2);
	sprite_change_offset("offscreenAcc", 16, 18);
	set_ui_element(UI_HUD_ICON, sprite_get("hudAcc"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurtHudAcc"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreenAcc"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portraitAcc"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselectAcc"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_smallAcc"));
	user_event(2);
}
else
{
	sprite_change_offset("hudIdle", 0, -2);
	sprite_change_offset("hurtHud", 0, -2);
	sprite_change_offset("offscreen", 16, 18);
	set_ui_element(UI_HUD_ICON, sprite_get("hudIdle"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurtHud"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"));
	user_event(1);
}