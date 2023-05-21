
var input_test = false;

if (!stg_init){
	//rc = roomcenter (hopefully)
	//print(string(rc))
	
	wheels = instance_create(rc, 670, "obj_stage_article", 1);
	//instance_create(640, -105, "obj_stage_article", 4);
	grnd = instance_create(rc, 687, "obj_stage_article", 2);
	railf = instance_create(rc, 687, "obj_stage_article", 3);
	railm = instance_create(rc, 720, "obj_stage_article", 4);
	railb = instance_create(rc, 711, "obj_stage_article", 5);
	cart_big = instance_create(rc-370, 674, "obj_stage_article", 6);
	cart_big.mode = 1;
	cart_small = instance_create(rc+300, 685, "obj_stage_article", 6);
	cart_small.mode = 2;
	
	stg_init = true;
}

if (input_test && !fake_laststock||is_laststock() && !fake_laststock){
	fake_laststock = true;
	instance_create(640, 297, "obj_stage_article", 10);
	instance_create(640, 445, "obj_stage_article", 11);
	instance_create(640, 0, "obj_stage_article", 12);
	set_bg_data(3, BG_LAYER_Y, 6200);//remove it from freakne existance
	//music_play_file("final");
	sound_play(sound_get("transition"))
}

set_bg_data(6, BG_LAYER_X, get_bg_data(6, BG_LAYER_X)+(sin( get_gameplay_time()*0.02 )/-10));