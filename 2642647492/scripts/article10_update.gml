//Ufo
state_timer++;
switch(state){
	case 0://Spawn delay
		if(state_timer >= 300){
			state++;
			state_timer = 0;
			sound_play(sound_get("sh2_ufo"), false, 0);
		}
	break;
	case 1://Fly in
		hsp = 2.85;
		vsp = -1.1;
		if(state_timer >= 360){
			state++;
			state_timer = 0;
		}
	break;
	case 2://Pause
		hsp = 0;
		vsp = 0;
		ufo_glow_min = 0.4;
		ufo_glow_max = 0.55;
		if(state_timer >= 240){
			state++;
			state_timer = 0;
		}
	break;
	case 3://Fly Out
		hsp = 3.5;
		vsp = 1.55;
		ufo_glow_max = 0.4;
		ufo_glow_min = 0.25;
		if(state_timer >= 600){
			instance_destroy();
			exit;
		}
	break;
}

if(image_alpha < ufo_glow_min){
	ufo_glow_change = 0.025
}
if(image_alpha > ufo_glow_max){
	ufo_glow_change = -0.025;
}
image_alpha += ufo_glow_change