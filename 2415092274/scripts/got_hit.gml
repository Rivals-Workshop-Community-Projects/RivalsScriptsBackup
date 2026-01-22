//natsumi got_hit which is actually used for ao

usp_did = false;


if (voicemode==true){
	var tmp_rand = random_func( 5, 6, true )+1;//1,2,3,4,5,6
	var tmp_rand_m = random_func( 2, 10, false )/10;
	if (tmp_rand_m > vo_hurt_mutechance){
		if (sprite_index == sprite_get("bighurt")){
			if (tmp_rand<=3){
				sound_play( sound_get("vo_hurt1"),false,noone,vo_volume_set,1 );
			}else{
				sound_play( sound_get("vo_hurt5"),false,noone,vo_volume_set,1 );
			}
		}else{
			if (tmp_rand<=2){
				sound_play( sound_get("vo_hurt2"),false,noone,vo_volume_set,1 );
			}else if (tmp_rand<=4){
				sound_play( sound_get("vo_hurt3"),false,noone,vo_volume_set,1 );
			}else{
				sound_play( sound_get("vo_hurt4"),false,noone,vo_volume_set,1 );
			}
		}//spriteindex
	}
}