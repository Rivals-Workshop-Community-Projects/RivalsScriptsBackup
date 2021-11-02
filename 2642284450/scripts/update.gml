
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