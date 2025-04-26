//ui


image_alpha = image_alpha+(sin( (get_gameplay_time()+66)*0.015 )/-500)

//print(string(image_alpha))

if (obj_stage_main.sequencer != -4){
	instance_destroy();
	exit;
}