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

// called when the character gets KO'd
sound_stop(sound_get("drill_loop"));
sound_stop(sound_get("drill_long"));
sound_play(sound_get("DETH"));
if(dragon_install){
    end_install();
}

#define end_install()
{
    //this passes on ownership of install assets to the tenshi with the most
    //time left in dragon install
    var other_DI = false;
    var other_tenko = noone;
    var other_tenko_di_time = 9999999999999;
	with(oPlayer){
	    if("dragon_install" in self){
	        if(dragon_install and other != self){
	            other_DI = true;
	            if(other_tenko_di_time > install_time){
	                other_tenko_di_time = install_time;
	                other_tenko = self;
	            }
	        }
	    }
	}
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
	sound_stop(sound_get("install" + string(install_theme)));
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