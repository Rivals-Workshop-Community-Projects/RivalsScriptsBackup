
var input_test = false;

if (!stg_init){
	//rc = roomcenter (hopefully)
	//print(string(rc))
	var vc = room_height/2
	//print(string(vc));
	
	rocks = instance_create(rc+100, vc+236, "obj_stage_article", 10);
	ui = instance_create(rc-7, vc+155, "obj_stage_article", 11);
	
	//instance_create(rc, vc-180, "obj_stage_article", 13);
	var rw = round(room_width/2)
	var rh = round(room_height/2)
	instance_create( rw, rh-43, "obj_stage_article", 20 );
	instance_create( rw, rh+50, "obj_stage_article", 21 );
	instance_create( rw, rh-43, "obj_stage_article", 22 );
	
	
	
	
	stg_init = true;
}

timerwait++;
if (timerwait > timerwait_max){
	
	
	timerwait = 0;
	timerwait_max = 30 + random_func( 5, 60, true );
	
	var x_off = -400 + random_func( 4, 800, true );
	
	//print("should spawn something. next timerwait is "+string(timerwait_max))
	instance_create(rc+x_off, 100, "obj_stage_article", 12);
	
}

//wip
set_bg_data(6, BG_LAYER_Y, get_bg_data(6, BG_LAYER_Y)+(sin( get_gameplay_time()*0.01 )/-5));