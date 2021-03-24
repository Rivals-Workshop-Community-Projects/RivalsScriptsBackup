//parry

if (cookieMeter == 0) {
	cookieMeter++;
}

if bossmode = 1 && cookieMeter == 0 && get_training_cpu_action() == CPU_FIGHT {
	yosword = 1
	spawn_hit_fx (x, y-40, 304)
	sound_play(asset_get("sfx_war_horn"));	
}