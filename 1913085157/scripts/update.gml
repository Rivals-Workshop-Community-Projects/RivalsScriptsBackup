//purplegarden


//musuic stuff
if (get_gameplay_time() <= 122 && mus_phase == 0){
	with (asset_get("oPlayer")){
		if (up_stick_down){
			other.mus_phase = 1;
			other.mus = 1;
		}
		if (down_stick_down){
			other.mus_phase = 1;
			other.mus = 2;
		}
		if (right_stick_down){
			other.mus_phase = 1;
			other.mus = 3;
		}
		if (left_stick_down){
			other.mus_phase = 1;
			other.mus = 4;
		}
	}
	if (mus_phase == 1){
		sound_play(sound_get("save"))
	}
}
if (get_gameplay_time() > 125 && mus_phase == 1){
	switch(mus){
		case 1: //up: resign your soul
			music_play_file("resign_your_soul");
			break;
		case 2: //down: veni vidi vici
			music_play_file("veni_vidi_vici");
			break;
		case 3: //right: the brown note
			music_play_file("the_brown_note");
			break;
		case 4: //left: megalolazing
			music_play_file("megalolazing_saruky");
			break;
	}
	mus_phase = 2;
	mus_timer = 0;
}

var input_test = false;
/*
with(oPlayer){
	if (shield_down){
		input_test = true;
	}
}*/

if (input_test && !fake_laststock||is_laststock() && !fake_laststock){
	fake_laststock = true;
	instance_create(640, 0, "obj_stage_article", 12);
}



























