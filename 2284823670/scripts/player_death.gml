if get_training_cpu_action() != CPU_FIGHT && hit_player_obj.taunt_down && !trigger{
	trigger = 60;
	sound_play(asset_get("mfx_confirm"), false, 0);
}
else{
	with obj_stage_article add();
	with obj_stage_article_solid add();
	with obj_stage_article_platform add();
}



#define add

died = min(died + 1, died_max);