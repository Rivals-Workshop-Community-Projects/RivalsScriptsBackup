
if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1{
	comet.combust_now = true
	comet.hitstop = hit_player_obj.hitstop;
}

//#region Hit SFX Controller
var window_timer_last_frame = (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1);
switch(attack){
	case AT_USTRONG:
		insert_sfx_on_hit("slice-hit",1,.8,1.1,false);
		insert_sfx_on_hit("slice-hit",2,.8,1.1,false);
		insert_sfx_on_hit("slice-hit",3,.8,1.1,false);
		insert_sfx_on_hit("slice-hit",4,.8,1.1,false);
	break;
		case AT_DAIR:
		insert_sfx_on_hit("slice-hit",1,.7,0.9,false);
		insert_sfx_on_hit("slice-hit",2,.7,1.2,false);
	break;
	case AT_FAIR:
		insert_sfx_on_hit("slice-hit",1,.7,1.1,false);
		insert_sfx_on_hit("slice-hit",2,.6,1.3,false);
		insert_sfx_on_hit("slice-hit",3,.6,1.4,false);
	break;
	case AT_FTILT:
		insert_sfx_on_hit("slice-hit",1,.5,1.5,false);
	break;
	case AT_USPECIAL:
		insert_sfx_on_hit("sfx_pom_fstrong_hit",2,.5,1.5,true);
	break;
	case AT_JAB:
		insert_sfx_on_hit("slice-hit",3,.7,1.7,false);
		insert_sfx_on_hit("sfx_pom_fstrong_land",1,.5,1.3,true);
	break;
	case AT_UAIR:
		insert_sfx_on_hit("sfx_pom_fstrong_land",3,.7,1,true);
		insert_sfx_on_hit("sfx_pom_fstrong_land",6,.7,1,true);
	break;
	case AT_DATTACK:
		insert_sfx_on_hit("sfx_pom_note_hit",1,.5,1.1,true);
		insert_sfx_on_hit("sfx_pom_note_hit",2,.5,1.3,true);
	break;
	case AT_NAIR:
		insert_sfx_on_hit("sfx_pom_fstrong_land",4,.7,1.1,true);
	break;
		case AT_FSPECIAL:
		insert_sfx_on_hit("sfx_pom_note_hit",1,.7,1.5,true);
	break;
		case AT_FSTRONG:
		insert_sfx_on_hit("sfx_pom_note_hit",1,.8,1.4,true);
		insert_sfx_on_hit("sfx_pom_note_hit",2,.8,1.2,true);
	break;
	case AT_UTILT:
		insert_sfx_on_hit("slice-hit",4,.5,1.7,false);
	break;
	case AT_DTILT:
		insert_sfx_on_hit("slice-hit",1,.5,1.6,false);
		insert_sfx_on_hit("sfx_pom_fstrong_land",2,.8,1.2,true);
		if my_hitboxID.hbox_num == 1 {
			spawn_hit_fx(x-(x-hit_player_obj.x)*0.8,y - 32, axesmall)
		}
	break;
	case AT_BAIR:
		insert_sfx_on_hit("slice-hit",1,.5,1.5,false);
		insert_sfx_on_hit("sfx_pom_fstrong_land",2,.8,1.3,true);
		insert_sfx_on_hit("sfx_pom_fstrong_land",3,.8,1.3,true);
	break;
	case AT_DSTRONG:
		insert_sfx_on_hit("slice-hit",1,.6,0.9,false);
		insert_sfx_on_hit("slice-hit",2,.6,1.1,false);
	break;
	case AT_DSPECIAL:
        with(pHitBox){
            if(attack == AT_DSPECIAL and player_id == other){
                destroyed = true;
            }
        }
        break;
	default:
	break;
}



#define insert_sfx_on_hit(temp_sound_string,temp_hitbox_num,temp_volume,temp_pitch,use_asset_version)
{
	if(my_hitboxID.hbox_num == temp_hitbox_num){
		switch(use_asset_version){
			case 0: // False
				temp_sfx_obj = sound_play(sound_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			case 1: // True
				temp_sfx_obj = sound_play(asset_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			default: // Error
				temp_sfx_obj = noone; 
			break;
		}
		return temp_sfx_obj;
	}
}
