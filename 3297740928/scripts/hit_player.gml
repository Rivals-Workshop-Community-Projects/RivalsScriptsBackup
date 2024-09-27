switch(my_hitboxID.attack){
    
    case AT_JAB:
		if(my_hitboxID.hbox_num == 4){
			sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.8, 1.05);
		}
		break;
		
	case AT_DATTACK:
		if(my_hitboxID.hbox_num == 1){
			sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.8, 1.05);
		}
		break;
	
	case AT_FTILT:
		sound_play(asset_get("sfx_clairen_tip_med"), false, noone, 0.9, 1.0);
		break;
		
	case AT_UTILT:
		if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.0, 1.0);
		}
		break;
	
	case AT_FAIR:
		sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.9, 1.0);
		break;
	
	case AT_UAIR:
		if(my_hitboxID.hbox_num == 6){
			hit_player_obj.can_bounce = true;
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.6, 1.1);
		}else{
			hit_player_obj.can_bounce = false;
		}
		break;
	
	case AT_BAIR:
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.0, 1.0);
		break;
	
	case AT_DAIR:
		if(my_hitboxID.hbox_num == 1){
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.0, 1.0);
		}
		break;
	
	case AT_FSTRONG:
		if(my_hitboxID.hbox_num == 6){
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.05, 1.0);
		}
		break;
	
	case AT_USTRONG:
		if(my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
			if(!hit_player_obj.free) hit_player_obj.y += 3;
		}else if(my_hitboxID.hbox_num == 5){
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.05, 1.0);
		}
		break;
	
	case AT_DSTRONG:
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.05, 1.0);
		break;
	
	case AT_NSPECIAL_AIR:
    	if(my_hitboxID.hbox_num == 1) my_hitboxID.explode = true;
    	break;
	
    case AT_FSPECIAL:
    	if(my_hitboxID.hbox_num < 3) my_hitboxID.make_pillar = true;
    	break;
    	
    case AT_USPECIAL:
    	if(my_hitboxID.hbox_num == 2) {
    		sound_play(asset_get("sfx_burnapplied"), false, noone, 1.0, 1.0);
    	}
    	break;
    
    case AT_DSPECIAL_2:
    	if(my_hitboxID.hbox_num == 1) {
    		KILL = true;
    		print(KILL);
    	}
    	break;
    	
    case AT_FSPECIAL_AIR:
    	if(my_hitboxID.hbox_num == 1){
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.6, 1.0);
		}
		if(my_hitboxID.hbox_num == 2){
			sound_play(asset_get("sfx_ell_dspecial_explosion_1"), false, noone, 0.6, 1.0);
		}
		break;
}



