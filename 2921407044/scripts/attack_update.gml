//attack_update
//B - Reversals --------------------------------------
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Shell Deduction Code --------------------------------
//This code will detect if a shotgun attack is used, then deduct a shell when the shot is fired
if(((attack == AT_NSPECIAL) || (attack == AT_NSPECIAL_2))
&& window == 2 && window_timer == 1) {
    if(shells > 0){shells--;}
}


//Shell Replenish Code --------------------------------
if (((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR)
&& window == 1 && window_timer == (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1)) 
|| (attack == AT_TAUNT && window == 4)){
    shells = 2;
    reload_indicator_sound_played = false;
    move_cooldown[AT_FSPECIAL] = 90; // 1.5 sec cooldown
    move_cooldown[AT_TAUNT] = 90; // 1.5 sec cooldown
}

//Nspecial pellet Spread Code mirrored from Nspecial 2 and simplfied
if(attack == AT_NSPECIAL){
	if(window == 2 && window_timer == 1){
		var temp_attack = AT_NSPECIAL;
		var total_number_hitboxes = 1;
		for (var current_hitbox_index = 1; current_hitbox_index < total_number_hitboxes + 1; ++current_hitbox_index) {
		   	var cone_angle = 0;
		   	var pellet_travel_speed = 12;
		   	var cone_of_fire = (0 - cone_angle/2) + random_func(current_hitbox_index,cone_angle,true); // Sets nspecial to be at bottom radius and then to grow upwards
			xspeed_shotgun_nspecial[current_hitbox_index] = lengthdir_x(pellet_travel_speed,cone_of_fire);
			yspeed_shotgun_nspecial[current_hitbox_index] = lengthdir_y(pellet_travel_speed,cone_of_fire);
		   	
		   	//print_debug("x:" + string(xspeed_shotgun_nspecial[current_hitbox_index]) + ", cone:" + string(cone_of_fire));
		   	//set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_X, spr_dir * 50); 
		    //set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_Y, -50 + -50 * sin(degtorad(nspecial_direction)));
		    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_HSPEED, xspeed_shotgun_nspecial[current_hitbox_index]);
		    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_VSPEED, yspeed_shotgun_nspecial[current_hitbox_index]);
		    var hitbox_x = (get_hitbox_value(temp_attack,current_hitbox_index,HG_HITBOX_X)*spr_dir) + x;
		    var hitbox_y = get_hitbox_value(temp_attack,current_hitbox_index,HG_HITBOX_Y) + y;
		    pellet_hitbox_ID[current_hitbox_index] = create_hitbox(temp_attack,current_hitbox_index,hitbox_x,hitbox_y);
		    pellet_hitbox_ID[current_hitbox_index].proj_angle = cone_of_fire * spr_dir;
		    pellet_hitbox_ID[current_hitbox_index].through_platforms = get_hitbox_value(temp_attack,current_hitbox_index,HG_LIFETIME);
		    //pellet_hitbox_ID[current_hitbox_index].through_platforms = 5;
		    //print_debug(string(pellet_hitbox_ID[current_hitbox_index]))
		    //For angle recoil to Klock
	    	if(free){ // Air version
			    set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED,-8);
	    	}
			else{ // Ground Version
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED,-5);
			}
			
			// Muzzle Flash Effect
    		if(window == 2 && window_timer == 1){
        		var x_offset_muzzle = x  + (spr_dir * 30);
        		var y_offset_muzzle = y - 35;
        		spawn_hit_fx( x_offset_muzzle, y_offset_muzzle, 14); // 14 - little break effect
        		//sound_play(asset_get( "mfx_star" ),false,noone,1,.5); // soundID,looping,panning,volume,pitch
    }
	   }
   }
}

//Nspecial attack selection code based on held buton ---------------------------------
if((attack == AT_NSPECIAL) && window == 1 && window_timer == 10 && special_down == true ){
    attack = AT_NSPECIAL_2;
    hurtboxID.sprite_index = hurtbox_spr; // Default hurtbox due to way I draw Nspecial 2 in code
    window = 1;
    window_timer = 0;
    hsp *= .33;
    vsp *= .33;
    can_fast_fall = 0;
    // Make a noise
    sound_play(sound_get( "laser_start" ),false,noone,.33,1);
}

// Stop Laser sound
if(attack == AT_NSPECIAL_2 && (window == 3)){
    sound_stop(sound_get( "laser_start" ));
}

//Nspecial_2 Aiming Code -------------------------------------------------------------
if((attack == AT_NSPECIAL_2)){
	
	//Code to Limit Klock's Speed in air during Nspecial has hover / flap
	if(window == 1 && window_timer > 10){
	   hsp = clamp(hsp,0,.5);
	   vsp = clamp(vsp,0,.5);
	}
	
	//Code to release the attack ----------------------------------------------------------------
	if(window == 1 && window_timer > 7 && //  player must wait 7 frames before release
	(special_down == false || //Player lets go of special button OR
	window_timer == get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH))){ // Start up window times out
	
		//Determine player's inputted joypad angle for the aim
		if (!joy_pad_idle) {nspecial_direction =  joy_dir;} // Usual Case, player aiming with joy pad.
		if(joy_pad_idle && (spr_dir = 1)){nspecial_direction = 0;} // Facing right with no input
		if(joy_pad_idle && (spr_dir = -1)){nspecial_direction = 180;} // Facing left with no input
	   
	    //For angle recoil to Klock
	    if(free){ // Air version
		    set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, spr_dir * -10 * cos(degtorad(nspecial_direction)));
		    set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED,  10 * sin(degtorad(nspecial_direction)));
	    }
		else{ // Ground Version
			set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, spr_dir * -4 * cos(degtorad(nspecial_direction)));
		    set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED,  4 * sin(degtorad(nspecial_direction)));
			
		}
	   //Section to handle Shotgun logic
	   /*
		var temp_attack = AT_NSPECIAL_2;
		var total_number_hitboxes = 5;
		for (var current_hitbox_index = 1; current_hitbox_index < total_number_hitboxes + 1; ++current_hitbox_index) {
		   	var cone_angle = 30;
		   	var pellet_travel_speed = 8;
		   	var cone_of_fire = (nspecial_direction - cone_angle/2) + random_func(current_hitbox_index,cone_angle,true); // Sets nspecial to be at bottom radius and then to grow upwards
			xspeed_shotgun[current_hitbox_index] = spr_dir * lengthdir_x(pellet_travel_speed,cone_of_fire);
			yspeed_shotgun[current_hitbox_index] = lengthdir_y(pellet_travel_speed,cone_of_fire);
		   	
		   	set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_X, spr_dir * 50 * cos(degtorad(nspecial_direction))); 
		    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_Y, -50 + -50 * sin(degtorad(nspecial_direction)));
		    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_HSPEED, xspeed_shotgun[current_hitbox_index]);
		    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_VSPEED, yspeed_shotgun[current_hitbox_index]);
			}
			*/
			
		// Set window to shooting window to start attack
		window = 2;
		window_timer = 0;
		}
   /*
// Code to offset the hitbox spawn based on unit circle and player's angle and also give it speed
    //For 1st hitbox start, does not move dynamically. 
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, spr_dir * 75 * cos(degtorad(nspecial_direction))); 
    set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -50 + -50 * sin(degtorad(nspecial_direction)));
    //For 2nd hitbox start
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, spr_dir * 75 * cos(degtorad(nspecial_direction)));
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -50 + -50 * sin(degtorad(nspecial_direction))); // first -50 is fixed offset
    //For 2nd hitbox travel
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_HSPEED, spr_dir * 12 * cos(degtorad(nspecial_direction))); // constant is speed modifier
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_VSPEED,  -12 * sin(degtorad(nspecial_direction)));
*/


   if(window == 2 && window_timer == 1){
   	var total_number_hitboxes = 1;
   	var temp_attack = AT_NSPECIAL_2;
   	for (var current_hitbox_index = 1; current_hitbox_index < total_number_hitboxes + 1; current_hitbox_index++) {
   		var cone_angle = 0; // Disabled in new update
   	  	var pellet_travel_speed = 12;
   		var cone_of_fire = (nspecial_direction - cone_angle/2) + random_func(current_hitbox_index,cone_angle,true); // Sets nspecial to be at bottom radius and then to grow upwards
   		xspeed_shotgun[current_hitbox_index] = spr_dir * lengthdir_x(pellet_travel_speed,cone_of_fire);
		yspeed_shotgun[current_hitbox_index] = lengthdir_y(pellet_travel_speed,cone_of_fire);
	   	set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_X, spr_dir * 50 * cos(degtorad(nspecial_direction))); 
	    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_Y, -50 + -50 * sin(degtorad(nspecial_direction)));
	    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_HSPEED, xspeed_shotgun[current_hitbox_index]);
	    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_VSPEED, yspeed_shotgun[current_hitbox_index]);
		var hitbox_x = floor(get_hitbox_value(temp_attack,current_hitbox_index,HG_HITBOX_X)*spr_dir + x);
	    var hitbox_y = floor(get_hitbox_value(temp_attack,current_hitbox_index,HG_HITBOX_Y) + y);
	    pellet_hitbox_ID[current_hitbox_index] = create_hitbox(temp_attack,current_hitbox_index,hitbox_x,hitbox_y);
	    pellet_hitbox_ID[current_hitbox_index].through_platforms = get_hitbox_value(temp_attack,current_hitbox_index,HG_LIFETIME);
	    if(spr_dir = 1){pellet_hitbox_ID[current_hitbox_index].proj_angle = cone_of_fire;}
	    if(spr_dir = -1){pellet_hitbox_ID[current_hitbox_index].proj_angle = cone_of_fire + 180;}
	    //print_debug("angle" + string(pellet_hitbox_ID[current_hitbox_index].proj_angle) + "dir" + string(pellet_hitbox_ID[current_hitbox_index].spr_dir ));
		}
   }
}

//Jump Cancel recoil
if((attack == AT_NSPECIAL && window == 3 && window_timer > 4) ||
attack == AT_NSPECIAL_2 && window == 4 && window_timer > 4){
	can_jump = true;
	can_wall_jump = true;
	// Set into Uspecial
	if(special_down && up_down){
		set_attack(AT_USPECIAL);
		hurtboxID.sprite_index = get_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE);
		window = 1;
		window_timer = 0;
	}
	else if(special_down && (left_down || right_down)){
		if(left_down) spr_dir = -1;
		if(right_down) spr_dir = 1;
		// Reset Fspecial Section
		fspecial_charge = 0;
	    reset_window_value(AT_FSPECIAL,4,AG_WINDOW_HSPEED);
    	reset_window_value(AT_FSPECIAL_AIR,4,AG_WINDOW_HSPEED);
    	reset_window_value(AT_FSPECIAL,4,AG_WINDOW_LENGTH);
    	reset_window_value(AT_FSPECIAL_AIR,4,AG_WINDOW_LENGTH);
    	
		set_attack(AT_FSPECIAL_AIR);
		hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE);
		window = 1;
		window_timer = 0;
	}
}
// --------------------------------------------------------------------------------------

// Dspec article Spawn
if(attack == AT_DSPECIAL && window == 1 && window_timer == get_window_value(AT_DSPECIAL,1,AG_WINDOW_LENGTH)){
    suitcase_bomb = instance_create((spr_dir * 20) + x,y-80,"obj_article1");
    move_cooldown[AT_DSPECIAL] = dspecial_cooldown; // cooldown
}

//New Uspecial Code
if(attack == AT_USPECIAL){
	//overall code
		can_fast_fall = false;
	// Can jump controller
	switch(window){
		case 4:
		case 5:
		case 6:
		case 7:
			can_wall_jump = true;
		break;
		
		default:
			can_wall_jump = false;
		break;
	}
	// Uspec cancel
	if(window == 6 && window_timer == 1 && !special_down){
		attack_end(AT_USPECIAL);
		destroy_hitboxes();
		set_state(PS_PRATFALL);
	}
	
	// Destroy falling hitbox upon landing
	if(window == 8 && window_timer == 1){
		destroy_hitboxes();
		shake_camera(4,6);
	}
	
}

// New Fspec Code  ---------------------------
if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
	can_fast_fall = false;
    switch(window){
    	case 2:
    	if(special_down && fspecial_charge < 60){
    		fspecial_charge++;
    		hsp *= .80;
    		vsp *= .80;
    		if(white_flash_timer = 0){white_flash_timer = 15}
    	}
    	else {
    		window = 3;
    		window_timer = 1;
    		set_window_value(attack,4,AG_WINDOW_HSPEED,(fspecial_charge / 10) + get_window_value(attack,4,AG_WINDOW_HSPEED));
    		set_window_value(attack,4,AG_WINDOW_LENGTH,(fspecial_charge / 6) + get_window_value(attack,4,AG_WINDOW_LENGTH));
    		
    	}
    	break;
    	case 5: // No break into window 6!
    	    if(special_pressed){ // Can only cancel on window 5
    			window = 7;
    			window_timer = 1;
    		}
    	case 6:
    		if(attack == AT_FSPECIAL && !free){ // Jump Cancel during window 5
    			can_jump = true;
    		}
    		if(attack == AT_FSPECIAL_AIR && !free){ //Landing cancel
    			attack_end();
    			set_state(PS_LAND);
    		}

    	break;
    	case 7: // Optional attack window start up
    	case 8: // Optional attack  active frame
    		if(window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH)){
    			window++;
    			window_timer = 1;
    		}
    	default:
    	break;
    }
    // Sound Controller
	switch(window){
		// Has soft armor until catching the shotgun like Ike Uspecial
		case 1: 
			if(window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) - 1){
				//fspecial_charge_sfx_id = sound_play(asset_get( "sfx_upbcharge" ),false,noone,.5, .7); // soundID,looping,panning,volume,pitch / Pitch range from .4 to .7)
			}
		case 2: // charging
		break;
		case 3:
				sound_stop(fspecial_charge_sfx_id);
		break;
		default:
		break;
	}
}

//VFX / SFX Controller
var window_timer_last_frame = (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1);
switch(attack){
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
		insert_sfx(3,1,"boost",.5,1.5,false);
		insert_sfx(3,1,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
		insert_hfx(4,1,x + (20 * spr_dir),y- (char_height),hfx_steam_boost_large);
	break;
	case AT_USPECIAL:
		insert_sfx(4,1,"boost",.1,1.5,false);
		insert_sfx(4,1,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
		insert_hfx(4,1,x,y- (char_height),hfx_steam_djump);
	break;
	case AT_DATTACK:
		insert_sfx(2,1,"boost",.1,1.5,false);
		insert_sfx(2,1,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
		insert_hfx(2,1,x + (40 * spr_dir),y- (50),hfx_steam_boost_large);
	break;
	case AT_DTILT:
		insert_sfx(1,1,"boost",.1,1.5,false);
		insert_sfx(1,1,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
		insert_hfx(1,1,x + (30 * spr_dir),y- (50),hfx_steam_boost_small);
	break;
	case AT_FTILT:
		insert_sfx(1,1,"boost",.1,1.5,false);
		insert_sfx(1,1,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
		insert_hfx(1,1,x + (30 * spr_dir),y- (50),hfx_steam_boost_large);
	break;
	case AT_JAB:
		insert_sfx(7,1,"boost",.1,1.5,false);
		insert_sfx(7,1,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
		insert_hfx(7,1,x + (30 * spr_dir),y- (50),hfx_steam_boost_large);
		insert_sfx(7,window_timer_last_frame,"sfx_tow_anchor_land",.5,1.75,true);
		insert_screen_shake(7,window_timer_last_frame,1,2);
	break;
	case AT_FSTRONG:
		insert_sfx(3,1,"boost",.1,1.5,false);
		insert_sfx(3,1,"sfx_ell_steam_hit",.1,.4 + (.1 * random_func(1, 3, false )),true);
		insert_hfx(3,1,x + (30 * spr_dir),y- (50),hfx_steam_boost_large);
		insert_sfx(4,5,"sfx_tow_anchor_land",1,1,true);
		insert_screen_shake(5,1,2,3);
	break;
	case AT_DSTRONG:
		insert_sfx(3,window_timer_last_frame,"sfx_tow_anchor_land",.5,1.5,true);
		insert_screen_shake(3,window_timer_last_frame,1,2);
	break;
	case AT_NSPECIAL_2:
		insert_sfx(1,1,"sfx_ell_steam_release",.20,1.3,true);
		insert_sfx(1,25,"sfx_ell_steam_release",.20,1.25,true);
		insert_sfx(1,50,"sfx_ell_steam_release",.20,1.1,true);
	default:
	break;
}

#define insert_sfx(temp_window,temp_window_timer,temp_sound_string,temp_volume,temp_pitch,use_asset_version)
{
	var temp_sfx_obj;
	if(window == temp_window && window_timer == temp_window_timer && !hitpause){
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
	}
	return temp_sfx_obj;
}

#define insert_hfx(temp_window,temp_window_timer,temp_x,temp_y,hfx_index_string)
{
	var temp_hfx_obj;
	if(window == temp_window && window_timer == temp_window_timer && !hitpause){
		temp_hfx_obj = spawn_hit_fx(temp_x,temp_y,hfx_index_string);
	}
	return temp_hfx_obj;
}

#define insert_screen_shake(temp_window,temp_window_timer,temp_intensity,temp_time)
{
	if(window == temp_window && window_timer == temp_window_timer && !hitpause ){
		shake_camera(temp_intensity,temp_time);	
	}
}