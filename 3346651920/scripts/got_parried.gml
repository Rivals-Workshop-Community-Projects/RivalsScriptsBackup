//GOT PARRIED

if (hit_player_obj.object_index == asset_get("oPlayer") || hit_player_obj.object_index == asset_get("oTestPlayer")){
	hit_player_obj.slender_haunt = -4;
	hit_player_obj.slender_haunt_timer = 0;
	hit_player_obj.slender_buildup = 0;
}