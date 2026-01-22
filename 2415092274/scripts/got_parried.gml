
if (voicemode==true){
	sound_stop( sound_get("vo_atk1") );
	sound_stop( sound_get("vo_atk2") );
	sound_stop( sound_get("vo_atk3") );
	sound_stop( sound_get("vo_atk4") );
	sound_stop( sound_get("vo_atk5") );
	sound_stop( sound_get("vo_atk6") );
	sound_stop( sound_get("vo_atk7") );
	sound_stop( sound_get("vo_atk8_A") );
	sound_stop( sound_get("vo_atk8_B") );
	
	sound_play( sound_get("vo_atk4"),false,noone,vo_volume_set,1 );
}