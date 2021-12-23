if (my_hitboxID.attack==AT_DSTRONG){
	if (my_hitboxID.hbox_num==2){
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, 304 )
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, ironhead_hfx_1 )
		//sound_play(sound_get("iron_3"));
	}
}
if (my_hitboxID.attack==AT_USTRONG){
	sound_play(sound_get("iron_3"));
}
if (my_hitboxID.attack==AT_DSPECIAL){
	if (my_hitboxID.hbox_num==1){shake_camera( 6, 5 );}
	if (my_hitboxID.hbox_num==2){shake_camera( 8, 9 );}
}