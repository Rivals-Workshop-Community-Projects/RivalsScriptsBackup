// with hit_player_obj{
// 	set_state(PS_DEAD);
// 	visible = false;
// }



//random layout on death; aether = walls/bridges randomized too

if !practice{
	death_timer = death_timer_max;
	with obj_stage_article if num == 9{
		state = 2;
		state_timer = -90 - other.death_timer_max;
		// draw_height = draw_height_high;
	}
}



if ("training_town_combo" in hit_player_obj && hit_player_obj.training_town_combo > 4){
	sound_play(asset_get("sfx_ring_crowd"));
	sound_play(asset_get("mfx_ring_bell2"));
}