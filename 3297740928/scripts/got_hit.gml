//got_hit.gml
//stops this from repeating over and over
multihit = 0;
multihit_timer = 21;
echosound = 0;
echosound_timer = 215;
absorbvortexsound = 0;
absorbvortexsound_timer = 120;
sound_stop(sound_get("sfx_multihit"));
sound_stop(sound_get("sfx_stealthburstloop"));
if (attack == AT_FSPECIAL_2){
    with (pHitBox){
		if (hbox_num == 2){
			destroy_fx = 1;
			destroyed = true;
		}
	}
}
