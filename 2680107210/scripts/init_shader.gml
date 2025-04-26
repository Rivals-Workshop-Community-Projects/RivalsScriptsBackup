if(object_index == asset_get("draw_result_screen"))
{
	set_victory_portrait(sprite_get("win_portrait"));
	sprite_change_offset("win_portrait", 0, get_synced_var(player));
}