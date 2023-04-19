//Hitplayer.gml

//#region Hit SFX Controller
var window_timer_last_frame = (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1);
switch(attack){
	case AT_JAB:
	    insert_sfx_on_hit("sfx_birdflap",1,1,.75,true);
	    insert_sfx_on_hit("sfx_birdflap",2,1,.75,true);
		insert_sfx_on_hit("iron_hit_heavy",3,1,.75,false);
	break;
	case AT_FTILT:
	    insert_sfx_on_hit("iron_hit_light",1,1,.75,false);
	break;
	case AT_USTRONG:
	    insert_sfx_on_hit("iron_hit_heavy",2,1,0.75,false);
	    insert_sfx_on_hit("iron_hit_heavy",3,1,0.75,false);
	break;
	case AT_FSTRONG:
	    insert_sfx_on_hit("iron_hit_heavy",1,1,0.75,false);
	    insert_sfx_on_hit("iron_hit_heavy",2,1,0.75,false);
	break;
	case AT_DSTRONG:
	    insert_sfx_on_hit("iron_hit_heavy",1,1,0.75,false);
	    insert_sfx_on_hit("iron_hit_heavy",2,1,0.75,false);
	break;
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
	    insert_sfx_on_hit("iron_hit_light",1,1,.75,false);
	break;
	case AT_USPECIAL:
	    insert_sfx_on_hit("iron_hit_light",1,1,.75,false); // Scoop
	    insert_sfx_on_hit("iron_hit_light",2,1,1,false); // Falling
	    insert_sfx_on_hit("iron_hit_heavy",3,1,.75,false); // Shckwave
	    insert_sfx_on_hit("iron_hit_light",4,1,1.25,false); // Shotgun Hit
	break;
	case AT_FAIR:
	    insert_sfx_on_hit("iron_hit_heavy",1,1,.75,false);
	    insert_sfx_on_hit("iron_hit_heavy",2,1,.75,false);
	break;
	case AT_BAIR:
	    insert_sfx_on_hit("iron_hit_heavy",1,1,.75,false);
	break;
	case AT_DAIR:
	    insert_sfx_on_hit("iron_hit_light",1,1,.75,false);
	break;
	case AT_UAIR:
	    insert_sfx_on_hit("iron_hit_light",1,1,.75,false);
	break;
	case AT_NAIR:
	    insert_sfx_on_hit("iron_hit_light",1,1,.75,false);
	break;
	case AT_DTILT:
    	insert_sfx_on_hit("sfx_birdflap",2,1,.75,true);
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