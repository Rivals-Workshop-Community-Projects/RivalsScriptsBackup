
if (my_hitboxID.attack==AT_FSPECIAL){
	var store_a = 0;
	var store_b = 0;

	store_a = hit_player_obj.x
	store_b = x
	
	destroy_hitboxes();
	
	x = store_a;
	hit_player_obj.x = store_b;
	
	window = 5;
	window_timer = 0;
	spawn_hit_fx( store_b, y-32, 305 )
}
if (my_hitboxID.attack==AT_DSPECIAL||my_hitboxID.attack==AT_DSPECIAL_AIR){
	//a
	
	destroy_hitboxes();
	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
	set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 6);
	set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
	
	window = 6;
	window_timer = 0;
	spr_dir = spr_dir*-1
	hit_player_obj.spr_dir = spr_dir
	old_vsp = -8
	dsp_target = hit_player_obj
	
	sound_stop(sound_get("dspecial"))
	sound_play(sound_get("dspecial_activate"))
	
}
/*
if (my_hitboxID.attack==AT_UAIR){
	if (my_hitboxID.hbox_num>1&&my_hitboxID.hbox_num<5){
		if (hit_player_obj.y < my_hitboxID.y){
			hit_player_obj.orig_knock = 1
		}
		print_debug("x "+string((sign(hit_player_obj.x-my_hitboxID.x)*(hsp+(1*sign(hsp)))))+" | y "+string((sign(hit_player_obj.y-my_hitboxID.y)*(vsp+(1*sign(hsp))))))
		hit_player_obj.x = hit_player_obj.x+(sign(hit_player_obj.x-my_hitboxID.x)*(hsp+(2*sign(hsp))))
		hit_player_obj.y = hit_player_obj.y+(sign(hit_player_obj.y-my_hitboxID.y)*(vsp+(2*sign(hsp))))
	}
}
*/