// called when the character gets KO'd

with (asset_get("obj_article2")){
    if (player_id == other.id){
		if (state < 2){
			state = 2;
			state_timer = 0;
			state_end = 6;
		}
    }
}

if (voicemode==true){
	var tmp_rand = random_func( 5, 6, true )+1;//1,2,3,4,5,6
	if (tmp_rand<=2){
		sound_play( sound_get("vo_atk4"),false,noone,vo_volume_set,1 );
	}else if (tmp_rand<=4){
		sound_play( sound_get("vo_hurt3"),false,noone,vo_volume_set,1 );
	}else{
		sound_play( sound_get("vo_hurt4"),false,noone,vo_volume_set,1 );
	}
}