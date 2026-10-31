if (state == "taunt" && state_timer == 8){
	sound_play(sound_get("phanto"));
	chsp = 0;
	cvsp = 0;
}

if(state == "run" or state == "idle"){
	chsp += 0.05*spr_dir;
	if(state == "idle" && waiting){
		chsp -= 0.05*spr_dir;
	}
	if(y < owner.y - owner.char_height){
		cvsp += 0.04;
	}
	if(y > owner.y - owner.char_height){
		cvsp -= 0.04;
	}
}

if((state == "idle" && waiting )or state == "taunt"){
	spr_dir = 1;
}

if(chsp > hmax){
	chsp -= 0.02;
}
if(chsp < hmin){
	chsp += 0.02;
}

if(cvsp > vmax){
	cvsp -= 0.02;
}
if(cvsp < vmin){
	cvsp += 0.02;
}

x = x + chsp;
y = y + cvsp;