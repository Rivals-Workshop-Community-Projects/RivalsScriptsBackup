//death.gml

sound_play(sound_get("sfx_death"));

if (instance_exists(whispyRoot)){
	with(whispyRoot){
		if (state == 2
		|| state == 3
		|| state == 7
		|| state == 8){
			state = 9;
			state_timer = 0;
			sound_play(asset_get("sfx_plant_stepped"));
			should_instantly_die_because_of_death = true;
			//print("hi");
		}
	}
}