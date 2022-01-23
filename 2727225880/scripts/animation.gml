//BLINK CODE (i stole/edited from zerra. ty shplurmff!)


	if (state == PS_IDLE) {
	
 
        blinktimer--;
        if(blinktimer<=0){
            if(blinktimer>-3){ //from 0 to -2, does blink frame. How to make on same frame?
                sprite_index=sprite_get("idleblink");
           
            } else {
                blinktimer=(random_func( 23, 80, true )+80);
            }
        } else {
            sprite_index=sprite_get("idle");
        }
        image_index=round(state_timer*idle_anim_speed);
        
}
/*
if (attack == AT_FTHROW) { //HAHAHAHAHHAAHHAHAHAHAHHAHAHA

//I HAVE SO MUCH POWER
//AAAAAAAAAAAAAAAAAAAAAA

//Turns playe around on the last frame (cuz i felt like it BISH)
//	if (window == 7 && window_timer = 9) { spr_dir *= -1; }
	
	if( instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.

		//keep the grabbed player in hitstop until the grab is complete.
		
		
		
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
				
				window_timer_temp = 27; //I decided to do 3 frames for each window. If you want it to be 2 per, make this 18
			}
			
			//THIS IS IT BABEEEEEEEEEEEEEEEEEE
			//This is the variable used by the cos and sin functions
			//If you want to make it on 2s and not 3s, do this: 2*floor((window_timer_temp+2)/2)*180/8
			//If you want it to be SMOOOTH, make it this: (window_timer_temp+1)*180/12
			//I did the floor function so the rotation is bound to my rotation
		var stuff_for_spin = 3*floor((window_timer_temp+3)/3)*180/12// 3*floor((window_timer_temp+3)/3)*180/12  //2*floor((window_timer_temp+2)/2)*180/8
		
		//SOO
		//pull_to_x and y are for the position of the opponent relative to the player
		//the first part is just making a circle with cos and sin based on the current rotation garnered from stuff_for_spin
		//the second part of the X adds some of the char height based on how tall the character is (as determined in init)
		//I divided by 1.6 and not 2 cuz it looked better??? i just futzed with this one lol
		//Its cuz when rotating its by the bottom center of the sprite and not middle, so this moves the character based on the middle shiz
		//The second part of Y does the same thing as the X, but also takes into account how above/below the char is
		//Like it finds the difference betwen the height and the other thing
		//IM NOT SURE BUT IT WORKS
		//	var pull_to_x = (30*dcos(stuff_for_spin) + (grabbed_player_obj.char_height)/1.6*dsin(stuff_for_spin ))*spr_dir
		//	var pull_to_y = -30*dsin((stuff_for_spin)) - ((grabbed_player_obj.char_height)/1.6 - (grabbed_player_obj.char_height)/1.6*dcos(stuff_for_spin));
			//Makes it so in window 3 the opponent is pulled closer
			//BECAUSE
			//I FELT LIKE IT
			//and it looks better in the animation
		//	if (window == 3 || (window == 2 && window_timer == 27)) {
		//		pull_to_y += 12;
		//	}
			//This just sets their things
			grabbed_player_obj.spr_angle = -(stuff_for_spin) * grabbed_player_obj.spr_dir;
			grabbed_player_obj.draw_indicator = false; //this hides their hud cuz it looks gross in rotation
	//		grabbed_player_obj.spr_dir = -5
	//		grabbed_player_obj.air_dodge_speed = -20
	//		grabbed_player_obj.hud_offset_dest = 50
			
		//	grabbed_player_obj.x = x  + pull_to_x - grabbed_player_obj.bubble_x*grabbed_player_obj.spr_dir - 8*spr_dir//ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 2);
		//	grabbed_player_obj.y = y - 8 + pull_to_y + grabbed_player_obj.bubble_y//ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 2);
//if (window == 3 && window_timer)			

		
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		
		//thanks Mawral!
	}
	//UMM
	//so the player sprite when rotated is SUUUUPER far off from the hurtbox
	//so this just repositions the player on the frame they get hit so it looks smoother!!
	if (window == 3 && (window_timer == 5 || window_timer = 6)) {
	//	grabbed_player_obj.x = x - 10*spr_dir //just so its not so binary
	//	grabbed_player_obj.y = y - (grabbed_player_obj.char_height)/1.6*0.5
		grabbed_player_obj.spr_angle = 0;
	//	grabbed_player_obj
	}
} 
}