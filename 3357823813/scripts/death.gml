if (instance_exists(flame_pillar)) flame_pillar.shoulddie = true;

var random_voice;
	random_voice = random_func( 0, 6, true);
	if (synced_vars[0] == 1){
		got_hit_cooldown = 10;
		switch (random_voice){
			case 0:
			sound_play(death1);
			break;
			case 1:
			sound_play(death2);
			break;
			case 2:
			sound_play(death3);
			break;
			case 3:
			sound_play(death4);
			break;
			case 4:
			sound_play(death5);
			break;
			case 5:
			sound_play(death6);
			break;
		}
	}