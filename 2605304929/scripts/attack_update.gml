//attack_update.gml

/* Throw Chart
NSPECIAL (Grab) 
Nonboost Grounded -> AT_NSPECIAL_2
Boosted Grounded -> AT_EXTRA_3 (Want to be AT_EXTRA_2)

Nspecial_Air (AT_EXTRA_2) (Want this to be Nspecial Air)
Nonboost Air ->  AT_NTHROW -  
Boosted Air -> AT_EXTRA_3

FSPECIAL (Grab)
Non Boosted -> FTHROW 
Boosted -> FSPECIAL_2

Dspecial
Non Boosed -> Dthrow
Boosted -> Dspecial_2

Dspecial Air
Non Boosed -> Dthrow
Boosted -> Dspecial_2

Uspecial
Non Boosed -> Uthrow
Boosed -> Uspecial_2

-> Move Nspecial Air version from AT_EXTRA_2 to NSPECIAL_AIR (DONe)
-> Replace AT_Extra_2 with Ground Boosted Code
-> AT Extra will not be used right now
-> Add Landing Hitbox to Dspecial.
*/


//Maw's Command Grab Code ------------------------------------------------------------------------------------------------------------
//Reset code for all Grabs
if ((attack == AT_DSPECIAL) || (attack == AT_DSPECIAL_AIR) || (attack == AT_FSPECIAL) || (attack == AT_USPECIAL)) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	//grabbed_player_obj.spr_angle = 0;
    }
}

//#region Normal Command Grab Section

//Uspecial + Uthrow --------------------------------------------------------------------------------------------------------------------
if(attack == AT_USPECIAL || attack == AT_UTHROW){
	can_wall_jump = true; // Wall Jump out of the attack
	if(attack == AT_UTHROW && window > 1){can_shield = true;} // Can shield or dodge after landing with the opponent to avoid other people from attacking in free for alls.
}

if (attack == AT_UTHROW && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_USPECIAL] = 23;
	can_fast_fall = false;
	hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_shield = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1 || window == 2 ) { // Old section to use both windows
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//Fspecial + Fthrow ------------------------------------------------------------------------------------------------------------------

if(attack == AT_FSPECIAL || attack == AT_FTHROW || attack == AT_FSPECIAL_2){
	can_wall_jump = true; // Wall Jump out of the attack
	if((attack == AT_FTHROW ) && window > 2){can_shield = true;} // Can shield or dodge after landing with the opponent to avoid other people from attacking in free for alls.
	move_cooldown[AT_FSPECIAL] = 60;
}
if (attack == AT_FTHROW && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_FSPECIAL] = 60;
	hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) -1 ) { grabbed_player_obj = noone; } // Minus 1 window to release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) {
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			if(spr_dir = -1){grabbed_player_obj_spr_angle=45;} // Draws in other_pre_draw.gml
    		if(spr_dir = 1){grabbed_player_obj_spr_angle=315;}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		 if(window >= 2){
    		 if(window == 2 && window_timer == 1){
    		        grabbed_player_obj.spr_dir = spr_dir * -1; //Opponent should be facing toward Daora
    		    }		    
    		  
    		    //This section will handlewhat way they are facing relative to Daora. Should be facing her.
    		    /*
    		    if(spr_dir = -1){grabbed_player_obj.spr_angle = 90;}
    		    else grabbed_player_obj.spr_angle = 270;
    		    */
    		    if(spr_dir = -1){grabbed_player_obj_spr_angle=90;} // Draws in other_pre_draw.gml
    		    if(spr_dir = 1){grabbed_player_obj_spr_angle=270;}
    		    //print(grabbed_player_obj.spr_angle);
    		    //This section will determine where they lay on the floor. 
    			var pull_to_x = 15 * spr_dir;
    			var pull_to_y = 0;
    			grabbed_player_obj.x = x + pull_to_x;
			    grabbed_player_obj.y = y + pull_to_y;
		 }
	}
}

//Uspecial unused code for window 1
/*
		if (window == 1 ){ // Window where Daora pulls herself to the opponent
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = grabbed_player_obj.x + (grabbed_player_obj.spr_dir * 20);
			var pull_to_y = grabbed_player_obj.y + 20;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			x = ease_circIn( x, pull_to_x, window_timer, window_length);
			y = ease_circIn( y, pull_to_y, window_timer, window_length);
		}
*/

//Dstrong + Dthrow - Slide kick into hug -----------------------------------------------------------------------------------------
if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_NTHROW || attack == AT_EXTRA_3){ // Dspecial + Nspecial Air

	//Dspecial Jump Reset
	if(djump_given_back_flag == false){
		djumps = 0;
		djump_given_back_flag = true;
	}
	can_fast_fall = false;
	can_wall_jump = true;
}
if (attack == AT_DTHROW) {
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL] = 60;
	move_cooldown[AT_DSPECIAL_AIR] = 60;
	
}

if (attack == AT_DTHROW && instance_exists(grabbed_player_obj)) {
	hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	if(attack == AT_DTHROW && window > 2){can_shield = true;} // Can shield or dodge after landing with the opponent to avoid other people from attacking in free for alls.
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; } //Minus 1 widnow for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
	   // print_debug(string(window));
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		//On the first window, pull the opponent into the grab.
		if (window == 1 || window == 2 || window == 3 || window == 4) { 
		    var pull_to_x = 0 * spr_dir;
			var pull_to_y = 0;
						
			//This sets the location. Same format as Maw's easing function but there is no movement here.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		
		if (window == 5) {  
		    var pull_to_x = 0 * spr_dir;
			var pull_to_y = 0;
						
			//This sets the location. Same format as Maw's easing function but there is no movement here.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			can_shield = true;
		}
	}
}


// A+B Command Input Grab Aerial + Footstool
//AT_NSPECIAL_AIR + AT_NTHROW --------------------------------------------------------------------------------------------------------------------
if(attack == AT_NSPECIAL_AIR || attack == AT_NTHROW){
	can_wall_jump = true; // Wall Jump out of the attack
}

if (attack == AT_NTHROW && instance_exists(grabbed_player_obj)) {
	//move_cooldown[AT_USPECIAL] = 23;
	can_fast_fall = false;
	hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)-1) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1 || window == 2 ) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + floor(ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length));
			grabbed_player_obj.y = y + floor(ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length));
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

// A+B Command Grab Grounded + Back Slam
//AT_Nspecial + Nspecial_2 --------------------------------------------------------------------------------------------------------------------

// Sets Daora to be looking behind her at end of move
if (attack == AT_NSPECIAL_2 && window == 5 && window_timer == get_window_value(AT_NSPECIAL_2,5,AG_WINDOW_LENGTH)) { // 180 Degree Rotate Opponent Hits Floor
	spr_dir = spr_dir * -1;
}

if (attack == AT_NSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	//move_cooldown[AT_USPECIAL] = 23;
	can_fast_fall = false;
	hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	

	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)-1) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { // Old section to use both windows
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		
		if (window == 2) { // 90 Degree Rotate Oppoent Throw
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -10 * spr_dir;
			var pull_to_y = -40;
			// Draw Opponent At offset Angle
			if(spr_dir = 1){grabbed_player_obj_spr_angle=90;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
    		if(spr_dir = -1){grabbed_player_obj_spr_angle=270;Resolve_Draw_Offsets(grabbed_player_obj,-1*spr_dir,grabbed_player_obj_spr_angle);}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 3) { // 180 Degree Rotate Opponent Hits Floor
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -50 * spr_dir;
			var pull_to_y = 0;
			
			// Draw Opponent At offset Angle
			if(spr_dir = -1){grabbed_player_obj_spr_angle=180;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
    		if(spr_dir = 1){grabbed_player_obj_spr_angle=180;Resolve_Draw_Offsets(grabbed_player_obj,-1*spr_dir,grabbed_player_obj_spr_angle);}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}
}
//#endregion

//#region Execute Command Grab Section

//Uspecial_2 / Uspecial Execute --------------------------------------------------------------------------------------------------------------------

if (attack == AT_USPECIAL_2 && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_USPECIAL] = 30;
	can_wall_jump = true; // Wall Jump out of the attack
	can_fast_fall = false;
	// Anti Gib code from the top
	var top_boundry = room_height;
	if(y < 150 && window == 1){
		window = 2
		window_timer = 1;
	}

	hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) - 1) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		//print(grabbed_player_obj.can_wall_jump);
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		 
		if (window == 1) { // Old section to use both windows
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = spr_dir * 15;
			var pull_to_y = -1 * floor(grabbed_player_obj.char_height / 2);
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			//print(grabbed_player_obj.x);
			//print(grabbed_player_obj.y);
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 2) { // Old section to use both windows
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -1 * spr_dir * 15;
			var pull_to_y = -1 * 30;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		
		// Rotate Code
	    if(spr_dir = 1){grabbed_player_obj_spr_angle=90;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
	    if(spr_dir = -1){grabbed_player_obj_spr_angle=270;Resolve_Draw_Offsets(grabbed_player_obj,-1 * spr_dir,grabbed_player_obj_spr_angle);}
	    
		}
		
		if(window == 3) { // Old section to use both windows
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -30 * spr_dir;
			var pull_to_y = 1 * .5 * floor(grabbed_player_obj.char_height);
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			//grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			//grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			// Custopm Verison no easing
			grabbed_player_obj.x = x + pull_to_x
			grabbed_player_obj.y = y + pull_to_y
			

		// Rotate Code
	    if(spr_dir = 1){grabbed_player_obj_spr_angle=180;} // Draws in other_pre_draw.gml
	    if(spr_dir = -1){grabbed_player_obj_spr_angle=180;}
	    
	    //grabbed_player_obj_draw_y = -1 * char_height;
	    Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//Fspecial_2 / Fspecial Execute --------------------------------------------------------------------------------------------------------------------

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_FSPECIAL] = 60;
	hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) - 1 ) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) {
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			if(window_timer > 1){
				if(spr_dir = -1){grabbed_player_obj_spr_angle=90;} // Draws in other_pre_draw.gml
	    		if(spr_dir = 1){grabbed_player_obj_spr_angle=270;}
			}
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		 if(window >= 2){
    		 if(window == 2 && window_timer == 1){
    		        grabbed_player_obj.spr_dir = spr_dir * -1; //Opponent should be facing toward Daora
    		    }		    
    		  
    		    //This section will handlewhat way they are facing relative to Daora. Should be facing her.
    		    /*
    		    if(spr_dir = -1){grabbed_player_obj.spr_angle = 90;}
    		    else grabbed_player_obj.spr_angle = 270;
    		    */
				if(spr_dir = -1){grabbed_player_obj_spr_angle=90;} // Draws in other_pre_draw.gml
		    	if(spr_dir = 1){grabbed_player_obj_spr_angle=270;}
    		    //print(grabbed_player_obj.spr_angle);
    		    //This section will determine where they lay on the floor. 
    			var pull_to_x = 15 * spr_dir;
    			var pull_to_y = 0;
    			grabbed_player_obj.x = x + pull_to_x;
			    grabbed_player_obj.y = y + pull_to_y;
		 }
	}
}

// Dspecial_2 / Downspecial Execute
if (attack == AT_DSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_DSPECIAL] = 60;
	hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) - 1) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
	   // print_debug(string(window));
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}

		if (window == 1) { 
			//This section will determine where they lay on the floor. 
			var pull_to_x = 20 * spr_dir;
			var pull_to_y = 0;
			
			//This sets the location. Same format as Maw's easing function but there is no movement here.
			grabbed_player_obj.x = x + pull_to_x;
			grabbed_player_obj.y = y + pull_to_y;
			can_shield = true;
		}
		if (window >= 2) { 
			//This section will determine where they lay on the floor. 
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = -20;
		    if(spr_dir = 1){grabbed_player_obj_spr_angle=90; Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
		    if(spr_dir = -1){grabbed_player_obj_spr_angle=270; Resolve_Draw_Offsets(grabbed_player_obj,-1 * spr_dir,grabbed_player_obj_spr_angle);}
			
			//This sets the location. Same format as Maw's easing function but there is no movement here.
			grabbed_player_obj.x = x + pull_to_x;
			grabbed_player_obj.y = y + pull_to_y;
			can_shield = true;
		}
	}
}

// Ground Nspecial Grab out of AT_NSPECIAL2 // Ankle Lock

if (attack == AT_EXTRA_2 && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_NSPECIAL] = 30;
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		//print(window);
		//print(window_timer);
		var opponent_hurtbox_width;
		
		with(grabbed_player_obj.hurtboxID){
			opponent_hurtbox_width = bbox_right - bbox_left; //hurtboxID variable. then, you can access the hurtbox's bbox_left and bbox_right
		}
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		// From NSPECIAL 2
		//on the first window, pull the opponent into the grab.
		if (window == 1) { // Old section to use both windows
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 2) { // 90 Degree Rotate Oppoent Throw
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -10 * spr_dir;
			var pull_to_y = -40;
			// Draw Opponent At offset Angle
			if(spr_dir = 1){grabbed_player_obj_spr_angle=90;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
    		if(spr_dir = -1){grabbed_player_obj_spr_angle=270;Resolve_Draw_Offsets(grabbed_player_obj,-1*spr_dir,grabbed_player_obj_spr_angle);}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 3 || window == 4 || window == 5) { // 180 Degree Rotate Opponent Hits Floor
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -1 * floor((grabbed_player_obj.char_height * .80)) * spr_dir;
			var pull_to_y = 0;
			
			// Draw Opponent At offset Angle
			if(spr_dir = 1){grabbed_player_obj_spr_angle=180;Resolve_Draw_Offsets(grabbed_player_obj,-1*spr_dir,grabbed_player_obj_spr_angle);}
			if(spr_dir = -1){grabbed_player_obj_spr_angle=180;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			
			if(window == 5 && window_timer == get_window_value(AT_EXTRA_2,5,AG_WINDOW_LENGTH)){
				spr_dir = spr_dir * -1; //
        		grabbed_player_obj.spr_dir = -1 * spr_dir; //Opponent should be facing towards Daora
		    }
		}
		// Start Unique Boosted Code
		// Start Ankle Lock
		if (window == 6) {
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = floor((grabbed_player_obj.char_height * .70)) * spr_dir;
			var pull_to_y = -1 * floor(opponent_hurtbox_width * .50);
			//var pull_to_y = ;
			//grabbed_player_obj.draw_y = grabbed_player_obj.y + 10;
		    if(spr_dir = 1){grabbed_player_obj_spr_angle=270;Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
		    if(spr_dir = -1){grabbed_player_obj_spr_angle=90;Resolve_Draw_Offsets(grabbed_player_obj,-1 * spr_dir,grabbed_player_obj_spr_angle);}
    		
    		// N/A Exception
			if(get_char_info( grabbed_player_obj.player, INFO_STR_NAME) == "N/A"){
				pull_to_y = -10;
			}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		// Lock
		 if(window >= 7){
		    //This section will handlewhat way they are facing relative to Daora. Should be facing her.
		    /*
		    if(spr_dir = -1){grabbed_player_obj.spr_angle = 90;}
		    else grabbed_player_obj.spr_angle = 270;
		    */
		    if(spr_dir = 1){grabbed_player_obj_spr_angle=270; Resolve_Draw_Offsets(grabbed_player_obj,spr_dir,grabbed_player_obj_spr_angle);} // Draws in other_pre_draw.gml
	    	if(spr_dir = -1){grabbed_player_obj_spr_angle=90; Resolve_Draw_Offsets(grabbed_player_obj,-1 * spr_dir,grabbed_player_obj_spr_angle);}
		    //print(grabbed_player_obj.spr_angle);
		    //This section will determine where they lay on the floor. 
			var pull_to_x = (floor((grabbed_player_obj.char_height * .70)) - 8) * spr_dir;
			var pull_to_y = 1 * floor(opponent_hurtbox_width * .50);
			//var pull_to_y = 0;
			
			// N/A Exception
			if(get_char_info( grabbed_player_obj.player, INFO_STR_NAME) == "N/A"){
				pull_to_y = -10;
			}
			
			//grabbed_player_obj.draw_y = grabbed_player_obj.y + 10;
			grabbed_player_obj.x = x + pull_to_x;
		    grabbed_player_obj.y = y + pull_to_y;
		 }
	}
}

// Air Nspecial Grab out of AT_NTHROW 
// Turn Aroudn Code
if (attack == AT_EXTRA_3 && window == 5 && window_timer == 1) {
	spr_dir = spr_dir * -1;
}

if (attack == AT_EXTRA_3 && instance_exists(grabbed_player_obj)) {
	move_cooldown[AT_NSPECIAL] = 30;
	move_cooldown[AT_NSPECIAL_AIR] = 30;
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; } //Minus 1 window for last window release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_tech = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}

		if (window = 1) {
			if(free){
				if(window_timer <= 2){
					var pull_to_x = grabbed_player_relative_x;
					var pull_to_y = grabbed_player_relative_y - floor(grabbed_player_obj.char_height/2);
				}
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				x = x + ease_linear(0, pull_to_x, window_timer, window_length);
				y = y + ease_linear(0, pull_to_y, window_timer, window_length);
			}
			if(!free){
				if(window_timer <= 2){
					var pull_to_x = 20 * spr_dir;
					var pull_to_y = 0;
				}
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
		}
		if (window >= 2) {
		/*	x = grabbed_player_obj.x
			y = grabbed_player_obj.y */
			grabbed_player_obj.x = x;
			grabbed_player_obj.y = y;
		}
	}
}
//#endregion

//#region Final Smash Throw Logic
// Similar to Final Smash
if(attack == AT_FINAL_SMASH_GRAB || attack == AT_FINAL_SMASH_THROW){
	can_wall_jump = true; // Wall Jump out of the attack
	if((attack == AT_FINAL_SMASH_GRAB) && window > 2){can_shield = true;} // Can shield or dodge after landing with the opponent to avoid other people from attacking in free for alls.
}
if (attack == AT_FINAL_SMASH_THROW && instance_exists(grabbed_player_obj)) {
	//move_cooldown[AT_FSPECIAL] = 90;
	hurtboxID.sprite_index = get_attack_value(AT_FINAL_SMASH_GRAB, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) -1 ) { grabbed_player_obj = noone; } // Minus 1 window to release
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		grabbed_player_obj.can_shield = false;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) {
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			if(spr_dir = -1){grabbed_player_obj_spr_angle=45;} // Draws in other_pre_draw.gml
    		if(spr_dir = 1){grabbed_player_obj_spr_angle=315;}
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		 if(window >= 2){
    		 if(window == 2 && window_timer == 1){
    		        grabbed_player_obj.spr_dir = spr_dir * -1; //Opponent should be facing toward Daora
    		    }		    
    		  
    		    //This section will handlewhat way they are facing relative to Daora. Should be facing her.
    		    /*
    		    if(spr_dir = -1){grabbed_player_obj.spr_angle = 90;}
    		    else grabbed_player_obj.spr_angle = 270;
    		    */
    		    if(spr_dir = -1){grabbed_player_obj_spr_angle=90;} // Draws in other_pre_draw.gml
    		    if(spr_dir = 1){grabbed_player_obj_spr_angle=270;}
    		    //print(grabbed_player_obj.spr_angle);
    		    //This section will determine where they lay on the floor. 
    			var pull_to_x = 15 * spr_dir;
    			var pull_to_y = 0;
    			grabbed_player_obj.x = x + pull_to_x;
			    grabbed_player_obj.y = y + pull_to_y;
		 }
	}
}

//#endregion

//#region Gannoncide Prevention Code

if(attack == AT_FSPECIAL || attack == AT_FTHROW || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2 || attack == AT_DSPECIAL_2 || attack == AT_FINAL_SMASH_THROW){
	//Referenced from Amvira's code for anti-ganoncide; release grabbed foe once you're almost out of the viewport
	/*
	print("room_width:" + string(room_width));
	print("room_height:" + string(room_height));
	print("x:" + string(x));
	print("y:" + string(y));
	*/
	var bottom_boundry = room_height - 130;
	//var left_side_boundry = 20;
	//var right_side_boundry = room_width - 20;
	if(//x < left_side_boundry || 
		//x > right_side_boundry ||
		y > bottom_boundry){
			if(attack != AT_FSPECIAL){
				if(article_platform_id == noone){
					// Create platform
					article_platform_id = instance_create(x + (30 * spr_dir),y+60,"obj_article_platform");
					ganoncide_preventor_available_flag = false; // Set the flag to false to prevent running this until landing again.
					
					// Modiify hitboxes of the grab to prevent cheese by sending the opponent upwards.
					if(attack == AT_FTHROW){ // Fthrow is the only non boosted grab
					//set_hitbox_value(attack,get_num_hitboxes(attack),HG_HITSTUN_MULTIPLIER,.5);
					set_hitbox_value(attack,get_num_hitboxes(attack),HG_KNOCKBACK_SCALING,.1);
					set_hitbox_value(attack,get_num_hitboxes(attack),HG_BASE_KNOCKBACK,12);
					set_hitbox_value(attack,get_num_hitboxes(attack),HG_ANGLE,90);
					set_hitbox_value(attack,get_num_hitboxes(attack),HG_HITSTUN_MULTIPLIER,1);
					}
					// Modify all the hitboxes of the grabs.
					else{
					set_hitbox_value(attack,get_num_hitboxes(attack),HG_KNOCKBACK_SCALING,1.2);
					set_hitbox_value(attack,get_num_hitboxes(attack),HG_BASE_KNOCKBACK,10);
					set_hitbox_value(attack,get_num_hitboxes(attack),HG_ANGLE,85);
					}
				}
			}
			else {
				// Drop opponent for any reason if they are somehow grabbed
				if(grabbed_player_obj != noone){
				grabbed_player_obj.state = PS_IDLE_AIR;
				grabbed_player_obj.vsp = -7;
				grabbed_player_obj = noone;}
				can_shield = true;
				can_jump = true;
			if(ganoncide_preventor_available_flag = true){
				fspecial_recovery_enabled_flag = true;
				/* // Uspecial Exception
				if(special_down && up_down){
					iasa_script();
				}
				*/
				}
			}
	}
}

//#endregion

//#region Other misc attack code

//B - Reversals ---------------------------------------------------------------------------------------------------------------------
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){ //attack == AT_DSPECIAL
    trigger_b_reverse();
}

//Ustrong Properties
if(attack == AT_USTRONG && has_hit == true){
	set_window_value(AT_USTRONG,get_attack_value(AT_USTRONG,AG_NUM_WINDOWS),AG_WINDOW_TYPE,1); // On sucessfult hit, don't send her into praftfall
}

// Fspecial cancel hitbox on window 5 (landing code)
if(attack == AT_FSPECIAL && window > 4){
	destroy_hitboxes();
}

// Uspecial / Uthrow iasa script on last window
if((attack == AT_UTHROW || attack == AT_NTHROW) && window > 2 && window_timer > 10){
	iasa_script();
}

// Dspecial Air or Fspecial platform Code 
if((attack == AT_DSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_FINAL_SMASH_GRAB) && window >= 2){
	//Go through platform code
	if (down_down == true) {fall_through = true;}
	else fall_through = false; // From the manual Whether you can land on platforms or not. false will cause you to fall through all platforms.
}

// Nair stop gravity on first kick unless the player is holding down
if(attack == AT_NAIR && window == 3 && has_hit == true && down_down == false){
vsp = 0;
}

// Nspecial landing lag
if((attack == AT_NSPECIAL_AIR) && !free){
	set_state(PS_LANDING_LAG);
}

//Dspecial Custom Land Logic
if(attack == AT_DSPECIAL_AIR && !free && window != 7){
	window = 7;
	window_timer = 0;
	set_attack_value(AT_DSPECIAL_AIR,AG_NUM_WINDOWS,7);
	destroy_hitboxes();
}

//Dspecial If weak hitbox hits, transition to next window code
if((attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR) && window == 4 && has_hit_player == true){
	switch(attack){
		case AT_DSPECIAL:
			window = 5;
			window_timer = 0;
			break;
		case AT_DSPECIAL_AIR:
			window = 5;
			//print(window)
			window_timer = 0;
			break;
		default:
			break;
	}
}

/*
// A+B Command Input angle direction if used in air.
if(attack == AT_EXTRA_3 && free){
	set_hitbox_value(AT_EXTRA_3,5,HG_ANGLE,270);
}
*/
//#endregion

//#region Nspecial Input Cancel Code
if((move_cooldown[AT_NSPECIAL_AIR] == 0 || move_cooldown[AT_NSPECIAL] == 0) && 
(((attack == AT_JAB && window < 8) || (attack == AT_NAIR && window < 4)) 
&& has_hit == true && was_parried == false)){ //Jab Exception minus parry
	if(special_down){
		attack_end();
		if(free){ // Air Version
			set_attack(AT_NSPECIAL_AIR);
			hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo
			move_cooldown[AT_NSPECIAL_AIR] = 25;
			window = 1;
			window_timer = 1;
		}
		
		if(!free){ // Ground Version
			set_attack(AT_NSPECIAL);
			hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo
			move_cooldown[AT_NSPECIAL] = 25;
			window = 1;
			window_timer = 1;
		}
	}
}

//#endregion

//#region VFX / SFX Layering
switch(attack){
	// Water Dust VFX Single
	case AT_FTILT:
	case AT_FSTRONG:
	case AT_FSPECIAL:
	case AT_DATTACK:
		if(window == 1 && window_timer == 1 && hitpause != true){
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);}
		break;
	case AT_FSPECIAL:
	case AT_DSPECIAL:
		if(window == 2 && window_timer == 1 && hitpause != true){
		hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
		}
		break;
	case AT_USTRONG:
		if(window == 3 && window_timer == 1 && hitpause != true){
		hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
		}
		break;
	case AT_JAB:
		if(window == 7 && window_timer == 1 && hitpause != true){
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
		}
		break;
	
	// Water Dust VFX Double
	case AT_USPECIAL:
	case AT_DSTRONG:
		if(window == 2 && window_timer == 1 && hitpause != true){
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
			hitfx_water_dust_obj_2 = spawn_hit_fx(x,y,hitfx_water_dust);
			var spr_dir_player = spr_dir;
			with(hitfx_water_dust_obj_2){
				spr_dir = spr_dir_player * -1;
			}
		}
		break;
		
	// Lighting Effects
	case AT_FSPECIAL_2:
	case AT_USPECIAL_2:
	case AT_DSPECIAL_2:
	case AT_EXTRA_3:
		if(window == 2 && window_timer == 1 && hitpause != true){sound_play(sound_get( "thunder_2" ),false,noone,1.25,1); }
		break;
		
	// Quick Shock on grabs
	case AT_FTHROW:
	case AT_DTHROW:
	case AT_UTHROW:
		if(window == 1 && window_timer == 1 && hitpause != true){sound_play(sound_get( "quick-shock" ),false,noone,1,1); }
		break;
		
	// Long Shock on Final Smash
	case 48: // AT_FINAL_SMASH_THROW
		if(window == 1 && window_timer == 1 && hitpause != true){sound_play(sound_get( "shock" ),false,noone,1,1); }
		break;
	
	// DSPECIAL Landing Lang
	case AT_DSPECIAL_AIR:
		if(window == 7 && window_timer == 1 && hitpause != true){sound_play(asset_get( "sfx_absa_kickhit" ),false,noone,1,.75);}
		if(window == 7 && window_timer == 1 && hitpause != true){sound_play(asset_get( "sfx_troupple_splash_big" ),false,noone,1,3);}
		break;
		
	// Bair Sound Layering
	case AT_BAIR:
		if(window == 1 && window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)-1) && hitpause != true){sound_play(asset_get( "sfx_clairen_swing_strong" ),false,noone,.75,1.5);}
		break;
		
	// Fair Sound Layering
	case AT_FAIR:
		if(window == 1 && window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)-1) && hitpause != true){sound_play(asset_get( "sfx_bird_sidespecial" ),false,noone,.75,1.5);}
		break;
		
	//Uair Sound Layering
	case AT_UAIR:
		if(window == 1 && window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)-1) && hitpause != true){sound_play(asset_get( "sfx_forsburn_cape_swipe" ),false,noone,.75,2);}
		break;
		
	//Dair Sound Layering	
	case AT_DAIR:
		if(window == 1 && window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)-1) && hitpause != true){sound_play(asset_get( "sfx_bird_downspecial" ),false,noone,.6,1.5);}
		break;
		
	default:
		break;
}

// Camera Shake
switch(attack){
	case AT_FSTRONG:
		if(window == 4 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){
			shake_camera(3,5);
		}
	break;
	case AT_USPECIAL_2:
		if(window == 4 && window_timer == 0){
			shake_camera(4,6);
		}
	break;
	case AT_FSPECIAL: // Landing Window
		if(window == 3 && window_timer == 0){
			shake_camera(4,6);
		}
	break;
	case AT_FSPECIAL_2: // Landing Window
	case AT_FTHROW: // Landing Window
		if(window == 3 && window_timer == 0){
			shake_camera(4,6);
		}
	break;
	case AT_DSPECIAL_AIR: // Landing Window
		if(window == 7 && window_timer == 0){
			shake_camera(3,5);
		}
	break;
}

//#endregion
#define Resolve_Draw_Offsets(object_ID,spr_dir,grabbed_player_obj_spr_angle)
{
	var middle_y = (object_ID.hurtboxID.bbox_bottom - object_ID.hurtboxID.bbox_top)/2; //MIDDLE OF HEIGHT
	grabbed_player_obj_draw_x = floor((middle_y)*dsin(grabbed_player_obj_spr_angle)) * spr_dir //+ hsp if necessary
    grabbed_player_obj_draw_y =  - floor(((middle_y) - (middle_y)*dcos(grabbed_player_obj_spr_angle)))//+ vsp if necessary
    //print(grabbed_player_obj_draw_x);
    //print(grabbed_player_obj_draw_y);
}