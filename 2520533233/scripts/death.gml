//death.gml
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    bad_load
}

enum ROCK{
    INIT,
    MOVE,
    DROP,
    IDLE_1,
    IDLE_2,
    RETURN,
    KABOOM,
    THROW
}

// called when the character gets KO'd
/*
if(tenshi_uspecial_rock != noone){
	tenshi_uspecial_rock.rock_state = ROCK.KABOOM
}*/
sound_stop(sound_get("drill_loop"));
sound_stop(sound_get("drill_long"));
sound_play(sound_get("DETH"));
tenshi_magic -= 360;
if(tenshi_magic < 0){
	tenshi_magic = 0;
}
if(dragon_install){
    deactivate_install();
    end_install();
    
}

#define end_install()
{
    //this passes on ownership of install assets to the tenshi with the most
    //time left in dragon install
    manual_init_shader_call = true;
    var other_DI = false;
    var other_tenko = noone;
    var other_tenko_di_time = 9999999999999;
    var phoenix_install_time = 0;
    var phoenix = noone;
    install_time = 0;
	with(oPlayer){
	    if("dragon_install" in self){
	        if(dragon_install and other != self){
	            other_DI = true;
	            if(other_tenko_di_time > install_time){
	                other_tenko_di_time = install_time;
	                other_tenko = self;
	            }
	        } 
	    } else if (url == 2357967710){
        	if(turnabout and other.playing_install_theme) {
        		if(bout_timer > phoenix_install_time){
        			phoenix_install_time = bout_timer;
        			phoenix = self;
        		}
        	}
        }
	}
	if(phoenix_install_time > 0 and (other_tenko == noone or phoenix_install_time > other_tenko.tenshi_magic - other_tenko_di_time)){
		other_tenko = noone;
		print("PHEONIX PLAY YOUR DAMN THEME")
		with(phoenix){
			sound_play(sound_get("pursuit"));
			playing_install_theme = true;
		}
	}
	playing_install_theme = false;
	if(other_tenko != noone and other_DI){
	    if(other_tenko_di_time > install_time){
	        other_tenko.play_theme = true;
	    }
	    with(obj_article2){
	        if ("tenshi" in self){
	            if(tenshi == other and fx_type == FX.install_cloud or fx_type == FX.install_bg){
	                tenshi = other_tenko;
	            }
	        }
	    }
    }
    //reset dragon install values
    if(dragon_install){
    	tenshi_magic = 0;
    }
    dragon_install = false;
	sound_stop(sound_get("install" + music_page + music_alt + string(install_theme)));
    initial_dash_speed = base_initial_dash_speed;
    dash_speed = base_dash_speed;
    moonwalk_accel = base_moonwalk_accel;
    max_djumps = base_max_djumps;
    fast_fall = base_fast_fall;
    wave_land_adj = base_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = base_wave_friction;
	air_max_speed = base_air_max_speed;
	max_jump_hsp = base_max_jump_hsp;
	
	end_dragon_install = true;
}

#define deactivate_install()
//fair
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 99);
//dair
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 12);
//uair
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);
//bair
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 99);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 99);
//nair
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 99);
//utilt
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 11, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 12, HG_WINDOW, 99);
//ftilt
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
//dtilt
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 6, HG_WINDOW, 99);
//fspecial grab
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.7);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 7);
