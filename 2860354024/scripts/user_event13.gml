/* voicelines */

var voice_randomizer;

if (!hitpause && nero_voice){
	switch (attack){
		case AT_TAUNT:

		if (nero_voice){
			if (window == 2 && window_timer == 1){

				voice_randomizer = random_func( 0, 2, 1 );
				if (voice_randomizer == 0)
				sound_play(sound_get("nero_comeon"));
				if (voice_randomizer == 1)
				sound_play(sound_get("nero_shallwe"));

				if (excited || tab_is_dummy){
					if (voice_randomizer == 0)
					sound_play(sound_get("nero_comeon_exct"));
					if (voice_randomizer == 1)
					sound_play(sound_get("nero_shallwe_exct"));
				}
			}
		}

		break;

		//grunts
		
		case AT_FAIR:
		case AT_NAIR:
		case AT_UAIR:
		case AT_DAIR:
		case AT_DTILT:
		if (nero_voice){
		if (window == 1 && window_timer == timer_end){

						voice_randomizer = random_func( 1, 4, 1 );

						if (voice_randomizer != 0){
						sound_play(sound_get("nero_sgrunt_" + string(voice_randomizer)));
						if (excited || tab_is_dummy)
						sound_play(sound_get("nero_sgrunt_" + string(voice_randomizer) + "_exct"));
						}
					}
			
		}
		break;

		case AT_FTILT:
		case AT_BAIR:
		if(nero_voice){
			if (window == 1 && window_timer == timer_end){


						voice_randomizer = random_func( 1, 4, 1 );

						if (voice_randomizer != 0){
						sound_play(sound_get("nero_grunt_" + string(voice_randomizer)));
						if (excited || tab_is_dummy)
						sound_play(sound_get("nero_grunt_" + string(voice_randomizer) + "_exct"));
						}
					}
			
		}
		break;

		case AT_JAB:
		if (nero_voice){
			if (window == 1 && window_timer == timer_end){


						voice_randomizer = random_func( 1, 4, 1 );

						if (voice_randomizer != 0){
						sound_play(sound_get("nero_sgrunt_" + string(voice_randomizer)));
						if (excited || tab_is_dummy)
						sound_play(sound_get("nero_sgrunt_" + string(voice_randomizer) + "_exct"));
						}
					
			}

			if (window == 4 && window_timer == timer_end){


						voice_randomizer = random_func( 1, 4, 1 );

						if (voice_randomizer != 0){
						sound_play(sound_get("nero_grunt_" + string(voice_randomizer)));
						if (excited || tab_is_dummy)
						sound_play(sound_get("nero_grunt_" + string(voice_randomizer) + "_exct"));
						}
			}
			
		}
		break;

		case AT_DATTACK:
		if (nero_voice){
			if (window == 1 && window_timer == timer_end){

						voice_randomizer = random_func( 1, 2, 1 );

						sound_play(sound_get("nero_streak_" + string(voice_randomizer)));
						if (excited || tab_is_dummy)
						sound_play(sound_get("nero_streak_" + string(voice_randomizer) + "_exct"));

			}
		}
		break;

		case AT_FSPECIAL:
		case AT_USPECIAL:
		if (nero_voice){
			if (window == 1 && window_timer == timer_end){

						voice_randomizer = random_func( 1, 4, 1 );

						if (voice_randomizer != 0){
						sound_play(sound_get("nero_grunt_" + string(voice_randomizer)));
						if (excited || tab_is_dummy)
						sound_play(sound_get("nero_grunt_" + string(voice_randomizer) + "_exct"));
						}
				
			}
		}
		break;

		


	}
}