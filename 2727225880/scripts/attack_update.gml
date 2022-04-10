//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

#region Landing Lag Code






//LANDING LAG CODE
if ((attack==AT_UTILT || attack == AT_FSTRONG || attack == AT_USTRONG) && window>=3 && !free && !was_parried){
	if (attack == AT_UTILT) {
landing_lag_time= 6 }
if (attack == AT_FSTRONG) {
landing_lag_time = 9 }//get_window_value(attack, window, AG_WINDOW_LENGTH) - window_timer }
if (attack == AT_USTRONG) {
landing_lag_time = 6 }//get_window_value(attack, window, AG_WINDOW_LENGTH) - window_timer }

state=PS_LANDING_LAG;
state_timer=0;
	hurtboxID.sprite_index = hurtbox_spr
	attack_end()
}
#endregion


#region fair so it connects


#endregion



#region bair turnaround
if (attack == AT_BAIR && window == get_attack_value( attack, AG_NUM_WINDOWS ) && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) && has_hit) {
	
	spr_dir*= -1
} else if (attack == AT_BAIR && window == get_attack_value( attack, AG_NUM_WINDOWS ) && window_timer == 1.5*get_window_value( attack, window, AG_WINDOW_LENGTH )) {
		spr_dir*= -1
	
}
#endregion


#region ustrong charge speed increase
if (attack == AT_USTRONG) { //adds speed based on the charge
	
	set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, (-9 - strong_charge/6));
	set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, (3 + round(strong_charge/10)));
	set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, (3 + round(strong_charge/10)));
	set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, (3 + round(strong_charge/10)));

if ((window == 2 && window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH )) || window == 3 || window == 4) {
	
	hud_offset = 35 //changes the hud offset. duh?
	if (window == 2) {
		
		y = y - 16; //moves you up in pixels cuz it looks better
	}
	
}
		if (!free) { 
		//in case you land during the move, removes the hitboxes.
	
    with (asset_get("pHitBox")) {
		if (attack == AT_USTRONG) {

    destroyed = true; }
}
	}
	
}
#endregion









#region fspecial

//FORWARD SPECIAL
if (attack == AT_FSPECIAL){
		if (!free && window == 4) { //deletes hitboxes on landing, so theres no overlap
		
    with (asset_get("pHitBox")) {
		if (attack == AT_FSPECIAL) {

    destroyed = true; } } }
	//window 1 is startup
	//window 2 is flying forward
	//window 3 is initial hit
	//window 4 is repeating falling

	//windo 5 is landing
	//window 6 is staying landing???
	//window 7 is getting up from landing
/*	if (window == 1 && window_timer == 1) {
		
		fspecial_hsp_multiplier = 16
	}
	if (window == 1 && (left_hard_pressed || right_hard_pressed)) {
		
				fspecial_hsp_multiplier = 20
} 
if (window == 2) {
	
vsp = -11*dcos(window_timer*90/get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH))
	
hsp = spr_dir*fspecial_hsp_multiplier*dcos(window_timer*90/get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH))
	
	
} */
if (has_hit_player) {
	
	
	set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 140);

} else  set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 110);


if (window == 1) {
	
	can_shield = false;
		fspec_falling_loops = 0;
	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
	set_attack_value(AT_FSPECIAL,  AG_OFF_LEDGE, 1); //so it caN go off of ledges

}
if (window == 2 && window_timer == 1) {

	vsp = -7
	hsp = 9*spr_dir + hsp/4
	
}
if (window == 3 || window == 4) {
	
	hsp *= 0.95
		set_attack_value(AT_FSPECIAL,  AG_OFF_LEDGE, 0); //so it canT go off of ledges

}
if (window == 2 && window_timer > (get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH) - 3)) {
//	can_shield = true;
	
}


	
    if ((window == 4 || window == 3) && (!free)) {
    	
    	window = 5;
    	window_timer = 0;
    }
   // if ((window == 3 || window == 4) && hitpause == true) {
  //  vsp = 0; hsp = 0;}
    
    if (window == 6 && has_hit) { //allows you to act of out returning to idle
    	
    	iasa_script()
    } else if (was_parried) { set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
 } else if (window == 7) {	 iasa_script()				}
    
    
    if (window == 4 && !hitpause) {
    	can_wall_jump = true;
    	
    
    	vsp = 16
  
    	
    }
    if (window == 3  && !hitpause) {
    	
    
    	
    	
    	vsp = 3 

    	
    }
    
    if (window == 4 && window_timer == 6) {
    	
    	fspec_falling_loops += 1;
    }
    if (fspec_falling_loops > 3) {
    	
    	can_shield = true;
    }
    
    if (window == 4) { has_hit = false }
    if (window == 5 && window_timer == 1 && !has_hit) {
    	sound_play( asset_get("sfx_blow_heavy1") )
    
    }
}
#endregion


#region dattack

//attack_update.gml grab code from mawral!!!
if (attack == AT_DATTACK) {
	
	
	

	
	depth = 10;
	
	//reset 'grabbed_player' variables on the first frame when performing a grab.
	//WINDOW ONE BABY
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	transition_to_next_window = false;
    }
    //WINDOW TWO BABY
    	if (window == 2 && window_timer == 3 &&  transition_to_next_window == true) {
		attack_end();
		set_attack(AT_FTHROW);
		transition_to_next_window = false;
	}
	//UH IT TELLS YOU WHERE THEY GO
	if (transition_to_next_window == true) {
		if (instance_exists(grabbed_player_obj)) {
		if (grabbed_player_obj.this_is_a_player) {
						grabbed_player_obj.x = x + ((30+(grabbed_player_obj.hurtboxID.bbox_right - grabbed_player_obj.hurtboxID.bbox_left)/2))*spr_dir
							grabbed_player_obj.y = y

		} else 					{	
			grabbed_player_obj.state = 3
			
			grabbed_player_obj.y = y - 30
			grabbed_player_obj.x = x + 60*spr_dir
			
			
		}


	
		grabbed_player_obj.force_depth = true;
		grabbed_player_obj.depth = depth -1;
		
	} }
//	grabbed_player_obj.force_depth = true;
	//	grabbed_player_obj.depth = depth -1;
}
#endregion

#region dattack throw
if (attack == AT_FTHROW) { //HAHAHAHAHHAAHHAHAHAHAHHAHAHA

//I HAVE SO MUCH POWER
//AAAAAAAAAAAAAAAAAAAAAA


if (window == 6 && window_timer > 6) {
	
	iasa_script();
}

if (window == 1 && window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)) {
	
	if (spr_dir == 1 && right_down || right_pressed) {
		
		spr_dir *= -1;
		grabbed_player_obj.spr_dir *= -1;
	}
	else if (spr_dir == -1 && left_down || left_pressed) {
		
			spr_dir *= -1;
		grabbed_player_obj.spr_dir *= -1;
	}
	
	
}

//WINDOW ONE BABY
if (window == 1 && window_timer < 6){ 
		if (grabbed_player_obj.this_is_a_player) {
			grabbed_player_obj.force_depth = true; }
	grabbed_player_obj.depth = depth -1;
  } else if  (window == 1 && !grabbed_player_obj.this_is_a_player) {	grabbed_player_obj.depth = depth + 1 }


//THIS IS WHERE THE GRAB THINGS GO
	if( instance_exists(grabbed_player_obj)) {
	
	
	
	//releases the discus OR THE PLAYER on the fourth window!
	if (window == 4 && !grabbed_player_obj.this_is_a_player) { 
		grabbed_player_obj.state_timer = 0;
		grabbed_player_obj.state = 5; //this is the state for dattack! wahoo!! 
	
	grabbed_player_obj.spr_dir = spr_dir*-1
	grabbed_player_obj = noone; }
	else if (window == 4) {
		grabbed_player_obj = noone;
		
	}
	
	
	
					//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.

	else 		if (grabbed_player_obj.this_is_a_player) {
if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; } } }

	if( instance_exists(grabbed_player_obj)) {

		//keep the grabbed player in hitstop until the grab is complete.
			if (grabbed_player_obj.this_is_a_player) {
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true; }
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//FIRST WINDOW BABY
		//on the first window, pull the opponent into the grab.
		if (window == 1 && window_timer < 12) { 
			//SETS THE X OF THE PLAYER AND THE DISCUS
				if (grabbed_player_obj.this_is_a_player) {
			var pull_to_x = (30+(grabbed_player_obj.bbox_right - grabbed_player_obj.bbox_left)/2) * spr_dir; }
			else pull_to_x = 60*spr_dir
			
			my_middle_y = (hurtboxID.bbox_bottom - hurtboxID.bbox_top)/2
			//SETS THE Y OF THE PLAYER AND THE DISCUS
			if (grabbed_player_obj.this_is_a_player) {
			var pull_to_y = my_middle_y } else {	grabbed_player_obj.y = y - 30		} //CHANGE ME - NOPE NOT GONNA HAHAHAHHAHA
		
		
		//pulls them closer at higher windows
			if (window_timer > 4) {
								if (grabbed_player_obj.this_is_a_player) {

				 pull_to_x = (25+(grabbed_player_obj.bbox_right - grabbed_player_obj.bbox_left)/2) * spr_dir; }
				 else pull_to_x = 45*spr_dir }

			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			//OFFSets the position with your own speed
			grabbed_player_obj.x = x + pull_to_x + hsp//ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
		//	grabbed_player_obj.y = y + round(ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length));
		}
		
	//uh yea i guess? what?? I HAVE NO IDEA BUT ITS STAYING
	//wait i remember he kept moving for some reason
		if (window == 4) {
			
			x = x
		}
		////AAAAAA
		
		//I HAVE SO MUCH POWERRRRRRR
		
		//fucking sin and cos functions
		//this is the speen window and some buffer before/after
		if (window == 2 || (window == 1 && window_timer == 12) || (window == 3 && window_timer != 6)) { 
			//if its the second window, makes the temp var into window timer. allows for proper spin
					if (window == 2) {
						var window_timer_temp = window_timer
								}
			//if the first window, make temp variable 0. Had to add a bit of first window so char immediately transitions into the next frame
			if (window == 1) {
			window_timer_temp = 0 }
			//if the third window, make it so the timer stays as the last number of the window
			if (window == 3) {
				
				window_timer_temp = 18; //I decided to do 3 frames for each window. If you want it to be 2 per, make this 18
			}
			
		
		var stuff_for_spin = 2*floor((window_timer_temp)/2)*180/8// 3*floor((window_timer_temp+3)/3)*180/12  //2*floor((window_timer_temp+2)/2)*180/8
		
	
						if (grabbed_player_obj.this_is_a_player) {

			var pull_to_x = ((10+(grabbed_player_obj.hurtboxID.bbox_right - grabbed_player_obj.hurtboxID.bbox_left)/2)*dcos(stuff_for_spin))*spr_dir
			var pull_to_y = -(10+(grabbed_player_obj.hurtboxID.bbox_right - grabbed_player_obj.hurtboxID.bbox_left)/2)*dsin((stuff_for_spin)); }
			
			else { pull_to_x = ((10+(37)*dcos(stuff_for_spin))*spr_dir);
			pull_to_y = -(10+(37)*dsin((stuff_for_spin))); 
			
			}
		
			if (window == 3 || (window == 2 && window_timer == 18)) {
				pull_to_y += 14;
				//pull_to_x += 4*spr_dir
			}
		
	
								if (grabbed_player_obj.this_is_a_player) {
//sets the middle y???? for something???? help??
			their_middle_y = (grabbed_player_obj.hurtboxID.bbox_bottom - grabbed_player_obj.hurtboxID.bbox_top)/2; //MIDDLE OF HEIGHT
								} else their_middle_y = 5

			//This just sets their things
			if (grabbed_player_obj.this_is_a_player) {
			grabbed_player_obj.spr_angle = -(stuff_for_spin) * grabbed_player_obj.spr_dir; 
											

			grabbed_player_obj.draw_indicator = false;  //this hides their hud cuz it looks gross in rotation
			draw_indicator = false; //cuz i felt like it???
			
			
			grabbed_player_obj.x = x  + pull_to_x - hsp }
			else { 	grabbed_player_obj.x = x  + pull_to_x - 2.5*hsp  }
			
			//+// (variable_here_for_fun)*dsin(stuff_for_spin)*spr_dir//added //ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 2);
			//rotates the player
			if (grabbed_player_obj.this_is_a_player) {
			grabbed_player_obj.draw_x = their_middle_y*dsin(stuff_for_spin) * spr_dir //+ hsp/2
			grabbed_player_obj.draw_y =  - (their_middle_y - their_middle_y*dcos(stuff_for_spin)) }//+ vsp/2
			
			
			//makes it so the y positioning is okay when landing
			if (window == 3 && window_timer == 2) {
					
					grabbed_player_obj.x = x - 20*spr_dir
				}
			//DONT QUESTION THE 29
			//I SAID DONT
			//This is where the y is set!!!
			if ((window == 2 || window == 3)|| window == 1 ) { 
			grabbed_player_obj.y = y + (their_middle_y - 29)     + pull_to_y + vsp// -  //((bbox_bottom - bbox_top) - (grabbed_player_obj.bbox_bottom - grabbed_player_obj.bbox_top))/2
			
				
			}//ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 2); 
			else { grabbed_player_obj.y = y + (their_middle_y - 29)    + pull_to_y + vsp//- //((bbox_bottom - bbox_top) - (grabbed_player_obj.bbox_bottom - grabbed_player_obj.bbox_top))/2
				
				
				
			}

	}

	
} 




//Turns player around on the last frame (cuz i felt like it BISH)
	if (window == 7 && window_timer = 6) { spr_dir *= -1; }
	


	}


#endregion

#region utilt

if (attack == AT_UTILT) {
	
if ((window == 1 && window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH )) || window == 2 || (window == 3 && window_timer < 8) ) {
	
	hud_offset = 20
	if (window == 1) {
	
	y -= 10 }
} }
#endregion

#region upair


if (attack == AT_UAIR) {
	
	
	
	
	if (window == 1) { //so that landing works when non grabbing
		
		set_attack_value(AT_UAIR, AG_CATEGORY, 1); //air only
	}
	
	
	
	
if ((window == 1 && window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH )) || window == 2 || window == 4) { //just hud offset jazz
	
	hud_offset = 20
}
	

if (window == 1 && window_timer == 1) { //resetting num windows and grabbed player values
		
	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    		set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
	}
	
	
	
	
	
	  if (instance_exists(grabbed_player_obj)) { //IF THERE IS A GRABBED PLAYER
	  	
	  	//if theyre not in hitstun and a player, let em go!
	 	if (grabbed_player_obj.this_is_a_player){	if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

}


if (!grabbed_player_obj.this_is_a_player) {
 grabbed_player_obj.state = 3 }
 
set_attack_value(AT_UAIR, AG_CATEGORY, 2); // allows move to be used in the air AND GROUND

if ((window == 4 || window == 3) && !free) {
	
	window = 5
	window_timer = 0
	if (grabbed_player_obj.this_is_a_player) {
		grabbed_player_obj.y = y -5
		grabbed_player_obj.free = true
		
	} else {grabbed_player_obj.y = y  }
				grabbed_player_obj.x = x //moves the player and changes windows and stuff idk

		
	if (grabbed_player_obj.this_is_a_player) {
		
		
grabbed_player_obj = noone; }
transition_to_next_window = false

}





    	

	if (window < 4 || (window == 4 && window_timer <  get_window_value( attack, window, AG_WINDOW_LENGTH))) { //moves the player and changes windows and stuff idk
		
			if (grabbed_player_obj.this_is_a_player) {
		grabbed_player_obj.y = y - 40 
					grabbed_player_obj.free = true
			} else {grabbed_player_obj.y = y - 80 }
grabbed_player_obj.x = x + 20*spr_dir
	}
	
	
	if (window == 2 && window_timer == 3) {
		
		
	set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6); //allows for more windows
window = 4 //sets window and window timer
window_timer = 0

	
	

	}
		if (window == 4 && window_timer ==  get_window_value( attack, window, AG_WINDOW_LENGTH )) { //moves the player and changes windows and stuff idk
			
					if (grabbed_player_obj.this_is_a_player) {
		grabbed_player_obj.y = y + 30 } else {grabbed_player_obj.y = y }
					grabbed_player_obj.x = x
		
	if (grabbed_player_obj.this_is_a_player) {
		
		
grabbed_player_obj = noone; }
transition_to_next_window = false
}



	}
	
	
		if (window == 5) {
if (instance_exists(grabbed_player_obj)) {


if (!grabbed_player_obj.this_is_a_player) { 
		grabbed_player_obj.state_timer = 0;
		grabbed_player_obj.state = 6; //this is the state for dattack! wahoo!! 
	
	grabbed_player_obj.spr_dir = spr_dir*-1
	grabbed_player_obj = noone;
}
} }
	if (window  == 5 && window_timer > 1) {
		//makes it so upair has lag again lol!! and doesnt just float on the ground!
				set_attack_value(AT_UAIR, AG_CATEGORY, 1); }
				
			
	if (window == 4 && window_timer == 6) { //adds vsp whoO!!!
		
		vsp -= 8
	
	}





}




#endregion	

#region fair hitboxes


if (attack == AT_FAIR && has_hit) {
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 20);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -28);
	set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 70);
	
} else {
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 27);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -25);
	set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 75);
	set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);}
if (attack == AT_FAIR && torren_speedforce > 0)	{
	set_hitbox_value(AT_FAIR, 1, HG_GROUNDEDNESS, 0); //makes the hit always send up, turns the grounded hit into the only one
set_num_hitboxes(AT_FAIR,2); //removes the third hitbox which is meant for grounded opponents
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7)
	
} else if (attack == AT_FAIR) {
	
	set_num_hitboxes(AT_FAIR,3); //adds back third hitbox
		set_hitbox_value(AT_FAIR, 1, HG_GROUNDEDNESS, 1); //reactivates the third hitbox
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .3);
}
	
	
	
#endregion


#region funny launch code
//funny launch code
//NOTE: Does not work with any angle flippers but 5 (manually coded in 5)
//Others send away/towards hitbox/player, so no way to get angle without finding from oplayer


if (torren_speedforce <= 0) {
	
	has_used_speedforce = false
	extra_zoom_hit = false
}







//sets the "zoom time". Made it slightly bigger than the hitpause.
//Countdown starts once hitpause ends
if (hitpause) {
zoom_time = 1

if (attack == AT_DSPECIAL) {
	
	zoom_time = 1*hitstop_full

}

}

//checks if within distance of article. Currently speedzone not coded lol!



//checks for flipper 5 (and all flippers i guess?) if hits PLAYER ONLY
//makes it so it doesnt break when hitting an article
if (has_hit_player) {
 if "my_hitboxID.hit_flipper" in self  {
           shouldreverse = my_hitboxID.hit_flipper }
           
           speedmultiplier = clamp(speedmultiplier, 3.15, 50)
if (attack == AT_FAIR && window <= 3) {
	
	zoom_multiplier = 1
} else zoom_multiplier = 1
}

/*if (hitpause && zoom_timer > 0) {
	if (down_pressed()) { 
		
		
	}
	
}*/
//add VSp and HSP multiplies for special situations. Fair hit1, downsmash maybe...
//DOES THE ZOOM
//Checks if hit, if speedforce is on, and if zooming still applies
if (window == 1) {
	
	set_angle = true
}

if (attack == AT_DSTRONG && window == 4) {
	
		set_angle = true

}








if(!hitpause && has_hit && torren_speedforce > 0 && zoom_time > 0 && (attack == AT_NAIR || attack == AT_BAIR||attack == AT_FAIR || attack == AT_DAIR || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_UTILT || attack == AT_DSPECIAL)){ //
	//
//lowers zoom time by 1 each frame (starts once hitpause ends)
zoom_time -= 1;

	if (torren_speedforce < 10) {
		torren_speedforce = 10 }

//can_fast_fall = true

if ((spr_dir ==  -1 && shouldreverse != 5 )|| (spr_dir = 1 && shouldreverse = 5)) {
	
	if (attack == AT_DSPECIAL && !has_hit_player) {
		if window == 4 {hsp = 8*spr_dir
		old_hsp = 8*spr_dir
		
		if (!free) {
		vsp = -1 
			old_vsp = -1
		} }
			if window == 5 {hsp = 12*spr_dir
		old_hsp = 12*spr_dir
		
		if !free {
		vsp = -1 
			old_vsp = -1 } }
			if window == 6 {hsp = 18*spr_dir
		old_hsp = 18*spr_dir
		
		if (!free) {
		vsp = -1 
			old_vsp = -1} }
			
			window_timer = 0
	} 

	
		
		
		
	if (attack == AT_UTILT || attack == AT_USTRONG || attack == AT_FSTRONG) {
	if (set_angle == true) {
			
			zoomangle = attackangle
			set_angle = false
		}
	
	
	if ((right_pressed || right_down) ) {
		//	if (abs(zoomangle - attackangle) < 18) {
			zoomangle = zoomangle + 15
	//		}
			
		} else	if ((left_pressed || left_down) ) {
	//		if (abs(zoomangle - attackangle) < 18) {
			zoomangle = zoomangle - 15
		//	}
			
	
		} else {	zoomangle = attackangle }
		
		
		
		
	}else {	zoomangle = attackangle }
	
	
	
	
	
	 if (attack != AT_DSPECIAL) {
					if (attack != AT_DSTRONG) {
					
				vsp = clamp(-1.1*zoom_multiplier*(speedmultiplier)*dsin(zoomangle), -20, 20) - speedopponenthitstungravity/2 }
				hsp = clamp(-1.05*zoom_multiplier*(speedmultiplier)*dcos(zoomangle), -10, 10)
				
				if (attack == AT_DSTRONG) {
					
					hsp = clamp(-1.05*zoom_multiplier*(speedmultiplier)*dcos(zoomangle), -12, 12)

				}
					
					if (attack == AT_NAIR) {
						
						vsp = -2 //-0.3*speedmultiplier
					}
					
				old_vsp = vsp 
				old_hsp = hsp } }
	
	
//flips hsp if other sprite direction or if flipper 5
	else if ((spr_dir ==  1 && shouldreverse != 5 )|| (spr_dir = -1 && shouldreverse = 5)) {
		
	if (attack == AT_DSPECIAL && !has_hit_player) {
		if window == 4 {hsp = 8*spr_dir
		old_hsp = 8*spr_dir
		
		if (!free) {
		vsp = -1 
			old_vsp = -1
		} }
			if window == 5 {hsp = 12*spr_dir
		old_hsp = 12*spr_dir
		
		if !free {
		vsp = -1 
			old_vsp = -1 } }
			if window == 6 {hsp = 18*spr_dir
		old_hsp = 18*spr_dir
		
		if (!free) {
		vsp = -1 
			old_vsp = -1} }
			
			window_timer = 0
	} else 

		if (attack == AT_UTILT || attack == AT_USTRONG || attack == AT_FSTRONG) {
	if (set_angle == true) {
			
			zoomangle = attackangle
			set_angle = false
		}
	
	
	if ((right_pressed || right_down) ) {
		//	if (abs(zoomangle - attackangle) < 18) {
			zoomangle = zoomangle - 15
	//		}
			
		} else	if ((left_pressed || left_down) ) {
	//		if (abs(zoomangle - attackangle) < 18) {
			zoomangle = zoomangle + 15
		//	}
			
	
		} else {	zoomangle = attackangle }
		
		
		
		
	}else {	zoomangle = attackangle }
	
	
		 if (attack != AT_DSPECIAL) {

					if (attack != AT_DSTRONG) {
				vsp = clamp(-1.1*(speedmultiplier)*dsin(zoomangle), -20, 20) - speedopponenthitstungravity/2 }
				hsp = clamp(1.05*zoom_multiplier*(speedmultiplier)*dcos(zoomangle), -10, 10)
				
				if (attack == AT_DSTRONG) {
					
					hsp = clamp(1.05*zoom_multiplier*(speedmultiplier)*dcos(zoomangle), -12, 12)

				}
				
					if (attack == AT_NAIR) {
						
						vsp = -2 // -0.3*speedmultiplier
					}
				
				
					old_vsp = vsp 
				old_hsp = hsp
				//	if (free) {
			} }
			 } 

//other sprite direction lol!
	 
	
	

#endregion


#region remove speed
//just removes speed for special attacks




#endregion


#region fstrong
if (attack == AT_FSTRONG) {
	
	
      if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
      	//	y = y - 10
      	
      		x = x + 15*spr_dir
      	 	vsp = -8 - strong_charge/15
      	hsp = 9*spr_dir + strong_charge/15*spr_dir
      	
      	
      	
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, (5 + round(strong_charge/9)));
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, (5 + round(strong_charge/9)));

      	
      } if (window == 3 && window_timer == 1 && !has_hit) {
      	
      	//vsp = -10
      	hsp = 9*spr_dir + strong_charge/15*spr_dir
      }
	
	can_fast_fall = false;
//	can_move = false;



if (window == 1 ||( window == 2 && window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH))) {
	
	set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0); //so it canT go off of ledges

} else 	set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1); //so it can go off of ledges


if (window == 4 && window_timer == 1 && !has_hit) {
	
	hsp = clamp(hsp, -6, 5)
	
}
	
}
#endregion

#region nair
//allows nair to loop if button is held
if (attack == AT_NAIR) {
	

	
	//add attack/sound/sprite data change at first frame and when repeating
	if (window == 1 && window_timer == 1) {
	nair_loops = 0;} //resets amt of loops you can do

	

	
	//5 is max number of nair loops. Also, change attack/sound/sprite data when repeating
	//Also add more lag. Yay!
	//You can maybe add it so that pressing attack loops, 
	//but I just made it loop if its held. Makes it more commital. 
	//And allows for proper buffering (idk if itd be a problem tho, ¯\_(ツ)_/¯)
	//Dont forget NAIR COPTER
	if  ((window == 2 && window_timer == 12) && !attack_down && !attack_pressed) {

		
	
		
	window = 5
	window_timer = 1;
	
	} else if (window ==3 && window_timer == 12 && (attack_down || attack_pressed) && nair_loops < 3) {
			
	

			window = 3
	window_timer = 1;
	nair_loops += 1;
	}
	
if (window == 3 && window_timer == 1) {
	
	sound_stop(asset_get("sfx_spin"))
	sound_play(asset_get("sfx_spin"), 0, 0, (3-nair_loops)/5)
}
if (!free) {
	
		sound_stop(asset_get("sfx_spin"))

}
		
	
	
	
	
	
	
	
	
}
#endregion
	
	



#region dstrong


if (attack == AT_DSTRONG && window = 4 && window_timer = 4) {
	
		sound_stop(asset_get("sfx_spin_longer"))

	
}

if (attack == AT_DSTRONG && window == 4 && has_hit && window_timer > 10) {
	
	can_jump = true;
}

#endregion



#region nspecials
	

//




if (attack == AT_NSPECIAL) {
		if ((window == 1 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))) {
		
			nspec_timer = 0;
		
		speeddisk = instance_create(x + 30*spr_dir ,y - 30,"obj_article2") 
		 you_have_a_fucking_chakram_out = true;

		move_cooldown[AT_NSPECIAL] = 9999999;
	//	torren_platforms_existing = 1
		}

	
	
}







#endregion











if (attack == AT_USPECIAL && has_hit_player && window < 8 && !hitpause) { //hi delta

if (hit_player_obj.state == PS_HITSTUN) {
	var lerpam
	lerpam = [0.1, 0.1]
	
	if "hit_player_obj" in self {
if instance_exists(hit_player_obj) {
	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+10*spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-25, lerpam[1])

} }
} }

#region uspecial
//UP SPECIAL
if (attack == AT_USPECIAL){
	
	
		//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
 //   	grabbed_player_obj = noone; 
    //	grabbed_player_relative_x = 0;
    //	grabbed_player_relative_y = 0;
    	hsp_added = 0
 	vsp_added = 0
    }
 
  
  
  if (window > 6 || (window == 6 && window_timer > 3)) {
  can_wall_jump = true }
  can_move = true
  
      can_fast_fall = false;
 

 
if (!hitpause) {
 //kick windows
 if (window > 1 && window < 8) {
  //facing RIGHT. Pos hsp goes RIGHT
 
 if (!joy_pad_idle){
 	
 	hsp_added = lengthdir_x(3 , joy_dir)
 	vsp_added = lengthdir_y(2.5, joy_dir);
 	
  // * dcos(window_timer*45/4)
 	
 } else {
 	hsp_added *= 0.8
 	vsp_added *= 0.8 
 
 
 }
 
 uspecial_timer = (window - 1)*7 + window_timer
 
 //higher # next to window_timer, speed decays fa
 	hsp = 3*spr_dir * dcos(uspecial_timer*1.5) + hsp_added * dcos(uspecial_timer*1.5)
 	vsp = -3* dcos(uspecial_timer*1.5) + vsp_added * dcos(uspecial_timer*1.5)
 
 
 
  
}
if (window == 8 && window_timer == 1) {
	
	vsp -= 3
}



}
}
#endregion












#region dspecial

if (attack == AT_DSPECIAL) {
	
	
	
if (has_hit and shield_pressed and (window == 7 || window == 8)) {
	if ((spr_dir == 1 && (left_pressed || left_down)) || (spr_dir == -1 && (right_pressed || right_down))) {
		
		window = 12;
		window_timer = 0;
					
	
} else { window = 9 
	window_timer = 0;
} }
	
	if free {
		
		move_cooldown[AT_DSPECIAL] = 9999999;	
		
	}

if (window == 1 && window_timer == 1) {
	
	dspecial_charge = 0
}


if ((window == 1 && window_timer > 4) || window == 2 || window == 3){
	
	soft_armor = 7+dspecial_charge/5; //ARMOR WOHOOO
} else { soft_armor = 0 }

if ((window == 4 || window == 5 || window == 6) && has_hit_player) {
	hsp = clamp(hsp, -5, 5)
	
	if (!free) {
		
		hsp = clamp(hsp, -4, 4)
	}
	
}
//if ((window == 4 || window == 5 || window == 6) && abs(hsp) > 3) {
//	window_timer = 0
	
//}
if (window == 7) {
	hsp = clamp(hsp, -6, 6)
	
}




if (window == 1) { //adds charge in charge window
	
		dspecial_charge += 1
		hsp = clamp(hsp, -2, 2)
}

//attack startup. Changes the following window based on the charge time

if ((window == 2 || window == 3) && window_timer = (get_window_value( attack, window, AG_WINDOW_LENGTH ) - 1 ) ) {
	if (dspecial_charge < 20) {
		    	sound_play( asset_get("sfx_swipe_weak1") )
	}
	if (dspecial_charge >= 20 && dspecial_charge < 40) {
			    	sound_play( asset_get("sfx_swipe_medium1") )
	}
	if (dspecial_charge >= 40) {
			    	sound_play( asset_get("sfx_swipe_heavy1") )
	}
	
}

//code for changing windows
if (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) || (window == 1 && !special_down && window_timer > 10) || (window == 1 && (shield_pressed || shield_down) && window_timer > 10)) {
	if (window != 8 && window != 11 && window != 14) {
	window_timer = 0 }
		if (window == 3) {
		
		spr_dir *= -1
	}
	if (window == 2) {
		hsp = 5*spr_dir
//	x = x + 20*spr_dir
	
}
	if (window == 3) {
			hsp = 5*spr_dir
////	x = x + 30*spr_dir
	
}

 if (window == 7 || window == 9 || window == 10 || window == 12 || window == 13) { //for endlag and dash forward/back
		window += 1
		
	
		
		
	} 
	else if (window == 1) {
		if ((spr_dir == 1 && (left_pressed || left_down)) || (spr_dir == -1 && (right_pressed || right_down))) {
					if (shield_pressed) {
							window = 12 
						
					} else {
						window = 3 }}
		else { if (shield_pressed) {window = 9
	
		} else {window = 2}
	} } 
	else if (window == 2 || window == 3) { //for charge window, chooses which attack
	if (dspecial_charge > 35) {
			window = 6
	}
	else if (dspecial_charge >= 20 && dspecial_charge <= 35) {
			window = 5
	}
	else if (dspecial_charge < 20) {
			window = 4
	} 
	}else if (window == 4 || window == 5 || window == 6) { //goes from attack to the endlag
		window = 7
	} 
	

	

}

if (window == 1 || window == 9 || window == 12 || window == 4 || window == 5 || window == 6 || window == 7) {
	
	
	if (!has_hit && free) {
		
		
	hsp = clamp(hsp, -3, 3) 
	vsp = clamp(vsp, -10, 2) }
	
	if (has_hit) {
	 
	vsp = clamp(vsp, -10, 2) }
	can_move = false
}

if (window == 10) {
	
	hsp = 12*spr_dir
	vsp = clamp(vsp, -10, 1.5)
}
if (window == 13) {
	
	hsp = -12*spr_dir
	vsp = clamp(vsp, -10, 1.5)
}

if (window == 8 && !was_parried && has_hit) {
	
	iasa_script()
} 

if (window == 11 || window == 14) {
	
		hsp = clamp(hsp, -6, 6) 

	
}

if (window == 2) {
	hsp = 3*spr_dir
	
}

if (window == 3) {
	
	
	hsp = -3*spr_dir
}

}


#endregion




#region taunt 

if (attack == AT_TAUNT) {
	
	
	if (window == 2 && !taunt_down && state_timer > 25) {
		
		window = 3;
		window_timer = 0;
	} else if (window == 2 && taunt_down && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH )) {
		
		window_timer = 0;
		
} 
	
	
	
}


#endregion


#region checking attack amt
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 1 && window_timer == 1) {
has_hit_already = false

}
#endregion



