//
metal_count = 200;
// respawn_platform_spawn = true;

if(get_synced_var (player) == 1){
	snd_rng = random_func(0, 5, true);
	if (snd_rng == 0) {
		voice_id = "v_death1";
		voice_volume = 1.5;
		voice_play();
	}else if (snd_rng == 1) {
		voice_id = "v_death2";
		voice_volume = 2;
		voice_play();
	}else if (snd_rng == 2) {
		voice_id = "v_death3";
		voice_volume = 1.5;
		voice_play();
	}else if (snd_rng == 3) {
		voice_id = "v_death4";
		voice_volume = 1.5;
		voice_play();
	}
	else if (snd_rng == 4) {
		voice_id = "v_death5";
		voice_volume = 1.5;
		voice_play();
	}
}
if(get_synced_var (player) == 2){
    voice_id = "cd_noooo";
	voice_volume = 1.5;
	voice_play();
}
if(get_synced_var (player) == 3){
	snd_rng = random_func(0, 3, true);
	if (snd_rng == 0) {
		voice_id = "pt_yeouch1";
		voice_volume = 1.5;
		voice_play();
	}else if (snd_rng == 1) {
		voice_id = "pt_yeouch2";
		voice_volume = 2;
		voice_play();
	}else if (snd_rng == 2) {
		voice_id = "pt_yeouch3";
		voice_volume = 1.5;
		voice_play();
	}
}


#define voice_play() //voiceline code is heavily based off of Roboshyguy's Jerma985 mod, I was given permission to use his code as a base.
if(!dont_shutup){
sound_stop(voice_playing_sound);
}
voice_playing_sound = sound_play(sound_get(voice_id), false, noone, voice_volume);
dont_shutup = false;