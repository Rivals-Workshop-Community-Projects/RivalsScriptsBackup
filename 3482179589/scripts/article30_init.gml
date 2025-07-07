//article30 init - flash

init = 0;
sprite_index = asset_get("empty_sprite");

depth = 31;
the_timer = 0;
timer_max = 60;

if (obj_stage_main.init == false){ 
	if obj_stage_main.cutscene_triggered ==  1  {
		depth = -500 
		timer_max = 120;
	//	print("aeiou")
	}
}
