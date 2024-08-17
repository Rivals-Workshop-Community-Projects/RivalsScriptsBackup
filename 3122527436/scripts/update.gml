game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match

if divine_charge < divine_charge_max && !(state == PS_SPAWN || state==PS_RESPAWN || state==PS_HITSTUN || state==PS_HITSTUN_LAND){
	++divine_charge
}
if divine_charge > divine_charge_max{
	divine_charge = divine_charge_max
}
if divine_charge = divine_charge_max{
	charged = 1;
}else{
	charged = 0;
	charge_sound_timer = 0;
}
if divine_charge == (divine_charge_max -1){
	charge_sound_trigger = 1
}

if charged == 1{
	++charge_sound_timer
}
if charge_sound_timer == 1{
	sound_play(asset_get("sfx_oly_nspecial_shoot"),false,noone,.4, 1.1);
}
if charge_sound_timer >= 2{
	charge_sound_timer = 2;
}
shown_divine_charge = lerp(shown_divine_charge, divine_charge, 0.7);

//Movement SFX Stuff
switch(state){
    case PS_CROUCH:
        //Crouch SFX
        if(state_timer == 0){
            sound_play(sound_get("sfx_crouch"));
        }
    break;
    /*case PS_WALK:
        //Walk SFX
        if(state_timer % 38 == 0){
            sound_play(sound_get("sfx_step"));
        }
    break;*/
    case PS_DASH:
        //Dash SFX
        if(state_timer % 18 == 0){
        	step_sound = random_func( 0, 2, true);
			switch (step_sound){
		    	case 1:
		    	sound_play(sound_get("minecraft_hit_grass"),false,noone,.4);
		    	case 0:
		    	sound_play(sound_get("minecraft_place_grass"),false,noone,.4);
			}
        }
    break;
    /*case PS_DASH_STOP:
		//Dash Stop SFX
		if (state_timer == 1){
			sound_play(sfx_dashstop);
		}
		break;*/
	case PS_PARRY:
		//parry sfx
		if (state_timer == 0){
			sound_play(sound_get("sfx_parry"));
			//sound_stop(asset_get("sfx_parry_use"));
		}
		break;
}

/*Nspecial/Fspecial Grab Stuff
// Grab timer ended
if (grab_timer < 0){
	nspec_grabbed = false;
	spr_dir *= 1;
	djumps = 0;
	grab_timer = 0;
	
	can_wall_jump = true;
	initial_dash_speed  = 7;
	dash_speed          = 6.5;
	dash_turn_time      = 10;	
	dash_turn_accel     =10.5;
	depth = -4;
	consumed_proj = false;
	if(instance_exists(grabbedtarget))
		grabbedtarget.visible = true;
	grabbedtarget = noone;
	max_djumps = 3;
}

if(state == PS_HITSTUN && state_timer == 0 && nspec_grabbed == true){
	grab_timer = 1000;
	grabbedtarget.visible = true;
	nspec_grabbed = false
} else {
	if (nspec_grabbed == true && !instance_exists(grabbedtarget)){
		if(free){
			grab_timer = grab_timer + 1;
		} else {
			grab_timer = grab_timer + .5;
		}
	}
}

//Grabbing State
if (nspec_grabbed == true && grab_timer >= 0){
	can_wall_jump = false;
	grab_par = grab_timer%2;
	grab_tres = grab_timer%3;
	
	if (instance_exists(grabbedtarget)) {
	 //		if (grab_timer > 15.5){
				grabbedtarget.x = x;
				grabbedtarget.y = y;
				
		//	}
		grabbedtarget.visible = false;
		grabbedtarget.hitstop = 1;
	
		grabbedtarget.depth = -6;
	}
	
	if (free){
		if (grab_timer > 15){
			grab_timer -= 1;	
		}
		else {
			grab_timer -=.5;
		}
	}
	else {
		grab_timer -=.5;
	}
	/*
	if (grab_timer <= 15.5){
		if (grab_par == 1){
			grabbedtarget.x = x-35*spr_dir;
		}
		if (grab_par == 0){
			grabbedtarget.x = x-45*spr_dir;
			
		}
		if (grab_tres == 0){
			grabbedtarget.y = y-35;
		}
		if (grab_tres == 1){
			grabbedtarget.y = y-30;
		}
		if (grab_tres == 2){
			grabbedtarget.y = y-25;
		}
	}
	*/
//}

var intro_time = get_gameplay_time()-12;
if intro_time == 1 sound_play(sound_get("warpstar_travel"))
if intro_time == 28 sound_play(sound_get("warpstar_break"))
if intro_time == 40 sound_play(sound_get("sfx_crouch"))
if intro_time == 68 sound_play(sound_get("sfx_landinglag"),false,noone,1.2)


if char_height != default_height char_height = lerp(char_height, default_height, 0.2)