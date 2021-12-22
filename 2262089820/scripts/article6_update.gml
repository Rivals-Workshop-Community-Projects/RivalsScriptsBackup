//a

/*
if (z_timer<z_max){
	z_timer++;
}*/

if (mode=="comet"){
	image_index = 0 + get_gameplay_time() * 4 / 64;
}
/*
if (mode=="sky"){
	if (obj_stage_main.fake_laststock){
		if (z_timer<z_max){
			z_timer++;
		}
		image_alpha = 0.5 + ((z_timer/z_max)/3)
	}
}*/