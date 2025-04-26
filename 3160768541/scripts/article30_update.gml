//my mind no work right now im pushing myself kind of

//this article also draws SOULs on players as draw script

if (state==0){
	state_end = 0
	
	if (state_timer > state_end){
		state_timer = 0;
		state = 1;
	}
}

if (state==1){
	state_end = 8
	//like idk why
	//it just isnt
	//processing all this
	//usually its just a good flow
	if (state_timer == 1){
		sound_play(sound_get("snd_test"),false,0)
	}
	
	if (state_timer > state_end){
		if (loop_count == 0){
			state_timer = 0;
			loop_count = 1;
		}else{
			state_timer = 0;
			state = 2;
		}
	}
}

if (state==2){
	state_end = 100
	if (state_timer == 0){
		sound_play(sound_get("snd_battlefall"),false,0)
	}
	
	if (state_timer > state_end){
		//obj_stage_main.sequencer = -4;
		//instance_destroy();
		//exit;
			state_timer = 0;
			state = 3;
	}
}
//state 3 is nothing

var detect_kill_ = false;
with (oPlayer){
	if (activated_kill_effect && get_player_stocks( player )!=0){
		detect_kill_ = true;
	}
}
if (detect_kill_){
	if (special_killeffect==0){
		special_killeffect = special_killeffect_max;
		sound_play(sound_get("mus_f_orchhit"),false,0,0.8)
	}
	
}
if (special_killeffect>0){
	special_killeffect--;
}

music_timer++;
if (music_timer>music_timing){
	if (music_transition_timer<music_transition_timer_max){
		music_transition_timer++;
	}
}
if (music_timer>music_timing-music_transition_b_timer_max){
	if (music_transition_b_timer<music_transition_b_timer_max){
		music_transition_b_timer++;
	}
}


state_timer++