switch(my_hitboxID.attack){
    
    case AT_JAB:
		switch(my_hitboxID.hbox_num){
			case 1:
			case 2:sound_play(asset_get("sfx_icehit_weak1"));
				break;
			case 3:
			case 5:
			case 6: sound_play(asset_get("sfx_icehit_weak2"));
				break;
			case 4: sound_play(asset_get("sfx_icehit_medium2"));
				break;
		}
		break;
    
    case AT_DATTACK:
        if(my_hitboxID.hbox_num == 1){ 
            sound_play(asset_get("sfx_icehit_medium1"), false, noone, 1.2, 1);
        }else{
            sound_play(asset_get("sfx_icehit_weak2"));
        }
        break;
    
    case AT_FTILT:
        sound_play(asset_get("sfx_icehit_weak1"));
        break;
    
    case AT_UTILT:
        sound_play(asset_get("sfx_icehit_weak1"));
        break;
    
    case AT_NAIR:
        sound_play(asset_get("sfx_icehit_weak1"));
        break;
        
    case AT_FAIR:
        sound_play(asset_get("sfx_ori_energyhit_weak"));
        break;
    
    case AT_UAIR:
        if(my_hitboxID.hbox_num == 1){ 
            sound_play(asset_get("sfx_icehit_medium2"));
        }else{
            sound_play(asset_get("sfx_icehit_weak2"));
        }
        break;
        
    case AT_BAIR:
        if(my_hitboxID.hbox_num == 1){
        	sound_play(asset_get("sfx_blow_heavy2"));
        	sound_play(asset_get("sfx_ori_energyhit_med"));
        }else{
        	sound_play(asset_get("sfx_icehit_medium2"));
        }
        break;
    
	case AT_DAIR:
		if(my_hitboxID.hbox_num != 3){ 
            sound_play(asset_get("sfx_icehit_medium2"));
        }else{
            sound_play(asset_get("sfx_icehit_weak2"));
        }
		break;
    
    case AT_FSTRONG:
		if(my_hitboxID.hbox_num > 1 && my_hitboxID.hbox_num < 6){
			var seed1 = random_func( 0, 50, false ) - 25;
			var seed2 = random_func( 2, 50, false ) - 25;
			spawn_hit_fx( hit_player_obj.x + seed1, hit_player_obj.y + seed2 - 25, 301);
			sound_play(asset_get("sfx_ori_energyhit_med"), false, noone, 0.6 + ((seed2/25)*0.2), 1.0 + ((seed2/25)*0.2));
		}else if(my_hitboxID.hbox_num == 6){
			sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.8, 1);
		}
		break;
    
    case AT_USTRONG:
        if(my_hitboxID.hbox_num == 1){
        	sound_play(asset_get("sfx_icehit_weak2"));
        }else if(my_hitboxID.hbox_num == 5){
        	sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.3, 1.0);
        }
        break;
    
    case AT_DSTRONG:
		if(my_hitboxID.hbox_num == 1){
			sound_play(asset_get("sfx_ori_energyhit_med"), false, noone, 0.7, 1);
		}else{
			sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.4, 1);
		}
    	break;
    
    case AT_NSPECIAL:
		//rt if you hate kragg rock?
		if(my_hitboxID.type == 2) exit;
		
		if(my_hitboxID.hbox_num == 1){
        	sound_play(asset_get("sfx_absa_singlezap1"), false, noone, 0.8, 1);
        }else if(my_hitboxID.hbox_num == 2){
        	sound_play(asset_get("sfx_absa_singlezap1"), false, noone, 0.8, 1);
        }else if(my_hitboxID.hbox_num == 3){
        	sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.7, 1.1);
        	sound_play(asset_get("sfx_icehit_medium2"));
        }
		break;
    
    case AT_FSPECIAL:
    	if(my_hitboxID.hbox_num == 1){
        	sound_play(asset_get("sfx_ori_energyhit_med"));
        	sound_play(asset_get("sfx_icehit_medium2"));
        }else if(my_hitboxID.hbox_num == 2){
        	sound_play(asset_get("sfx_clairen_tip_med"));
        	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.8, 1);
        }else if(my_hitboxID.hbox_num == 3){
        	var kanji = spawn_hit_fx(x + (42 * spr_dir), y - 43, vfx_kanji);
        	kanji.spr_dir = 1;
        	sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.5, 1);
        	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.7, 1);
        }
        break;
    
    case AT_USPECIAL:
        if(my_hitboxID.hbox_num == 1){
        	sound_play(asset_get("sfx_blow_heavy2"));
        	sound_play(asset_get("sfx_ori_energyhit_heavy"));
        }else{
        	sound_play(asset_get("sfx_ori_energyhit_med"));
        }
        break;
    
    case AT_NSPECIAL_2:
    	if(my_hitboxID.hbox_num == 1){
			sound_play(asset_get("sfx_icehit_medium1"));
			my_hitboxID.onhit_timer = 5;
			my_hitboxID.in_hitpause = true;
        }else if(my_hitboxID.hbox_num == 2){
        	sound_play(asset_get("sfx_ori_clairen_tip_heavy"));
        	sound_play(asset_get("sfx_absa_uair"));
        }
    	break;
    
    case AT_FSPECIAL_2:
        if(my_hitboxID.hbox_num == 2){ 
            sound_play(asset_get("sfx_icehit_weak2"));
            if(hit_player_obj.state == PS_HITSTUN){
                hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x, 1);
			    hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y + 15, 1);
            }
        }else{
            sound_play(asset_get("sfx_icehit_medium2"));
            sound_play(asset_get("sfx_clairen_tip_weak"));
            //sound_play(asset_get("sfx_absa_jab1"));
        }
        break;

    case AT_USPECIAL_2:
        if(my_hitboxID.hbox_num == 1){
        	my_hitboxID.vsp = 20;
        	hit_player_obj.y -= 2;
        }else{ 
        	sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.7, 1);
        	pandoria.uspec_vfx.pause = 8;
        	pandoria.uspec_vfx = noone;
        }
        break;
    
}

if(in_affinity){
	if(my_hitboxID.kb_scale > 0){
	    pandoria.affinity += 8;
	    if(pandoria.affinity_level == 2 || my_hitboxID.attack == AT_JAB){
	        can_dspec = true;
	    }
	}else{
	    pandoria.affinity += 2;
	}
	pandoria.affinity = clamp(pandoria.affinity, 0, pandoria.affinity_max);
}