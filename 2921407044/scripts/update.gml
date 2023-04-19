//update.gml
//Code to prevent firing off a shell if you do not have any.  -------------

if(shells > 0){
    move_cooldown[AT_NSPECIAL] = 0;
    move_cooldown[AT_NSPECIAL_2] = 0;
}

if(shells <= 0){
    move_cooldown[AT_NSPECIAL] = 99999; 
    move_cooldown[AT_NSPECIAL_2] = 99999;
    if(special_pressed == true  && joy_pad_idle == true && dryfire_sound_played == false){
        sound_play(sound_get("dry_fire"));
        dryfire_sound_played = true;
    }
}

if(special_pressed == false){
    dryfire_sound_played = false;
}

if(!free || state == PS_WALL_JUMP || state == PS_WALL_TECH){
    move_cooldown[AT_USPECIAL] = 0;
}

// VFX / SFX Controller
switch(state){
    case PS_JUMPSQUAT:
        insert_hfx(x,y - (char_height/2),hfx_steam_jump,3);
        insert_sfx(3,"sfx_ell_steam_hit",.2,.4 + (.1 * random_func(1, 3, false )),true);
        insert_sfx(3,"boost",.1,1.5,false);
        //sound_play(asset_get( "sfx_ell_steam_hit" ),false,noone,.15, .4 + (.1 * random_func(1, 3, false ))); // soundID,looping,panning,volume,pitch / Pitch range from .4 to .7
    break;
    case PS_DOUBLE_JUMP:
        insert_hfx(x,y - (char_height),hfx_steam_djump,1);
        insert_sfx(3,"sfx_ell_steam_hit",.2,.4 + (.1 * random_func(1, 3, false )),true);
        insert_sfx(3,"boost",.1,1.5,false);
    break;
    case PS_WAVELAND:
        insert_hfx(x,y - (char_height/2),hfx_steam_boost_small,3);
    break;
    case PS_WALL_JUMP:
    	insert_hfx(x,y - (char_height),hfx_steam_djump,1);
        insert_sfx(3,"sfx_ell_steam_hit",.2,.4 + (.1 * random_func(1, 3, false )),true);
        insert_sfx(3,"boost",.1,1.5,false);
    break;
    case PS_DASH_START:
    	insert_hfx(x + (20 * spr_dir),y - (char_height/1.5),hfx_steam_boost_small,1);
        insert_sfx(3,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
        insert_sfx(3,"boost",.05,1.5,false);
    break;
    default:
    break;
}

#define insert_hfx(temp_x,temp_y,hfx_index,time_to_play)
{
    if(state_timer == time_to_play){
        var temp_hfx_index = spawn_hit_fx(temp_x,temp_y,hfx_index)
    }
}


#define insert_sfx(temp_state_timer,temp_sound_string,temp_volume,temp_pitch,use_asset_version)
{
	if(state_timer == temp_state_timer && !hitpause){
	    var temp_sfx_obj;
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