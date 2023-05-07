//SFX / HFX Layering Indiviual
switch(my_hitboxID.attack){
	case AT_JAB:
		if(my_hitboxID.hbox_num == 1){
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_weak1"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		if(my_hitboxID.hbox_num == 2){
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_weak1"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		if(my_hitboxID.hbox_num == 3 ){
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_medium1"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		break;
	case AT_FAIR:
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
		break;
	case AT_BAIR:
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,.65,1); // soundID,looping,panning,volume,pitch
		break;	
		
	case AT_FTILT:
		sound_play(sound_get("slash0"),false,noone,.7,1); // soundID,looping,panning,volume,pitch
		sound_play(asset_get("sfx_blow_medium2"),false,noone,.6,1); // soundID,looping,panning,volume,pitch
		break;
	case AT_DTILT:
		sound_play(sound_get("slash0"),false,noone,.65,1); // soundID,looping,panning,volume,pitch
		sound_play(asset_get("sfx_blow_weak2"),false,noone,.6,1); // soundID,looping,panning,volume,pitch
		break;
	case AT_UTILT:
		if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3){
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_weak1"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		if(my_hitboxID.hbox_num == 2){
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_medium2"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		break;
	case AT_DSTRONG:
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
		break;	
	case AT_FSTRONG:
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_heavy2"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
	case AT_USTRONG:
		if(my_hitboxID.hbox_num >= 2 and my_hitboxID.hbox_num < 8){
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_weak1"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		if(my_hitboxID.hbox_num == 8){
			sound_play(sound_get("slash0"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
			sound_play(asset_get("sfx_blow_heavy2"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		break;	
	default:
		break;
}
