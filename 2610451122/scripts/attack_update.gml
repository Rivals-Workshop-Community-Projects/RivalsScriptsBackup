// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//side-b - strangle - referencing 64mario's grab god help me

//attack_update.gml
if (attack == AT_FSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 40 * spr_dir;
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

//taunt loop
if (attack == AT_TAUNT_2)
{
    // if (window == 7)
    // {
    //     counterThing = 0;
    // }
    
    if (window == 2 && window_timer >= 25 && taunt_down)
    {
        window_timer = 0;
        //counterThing++;
    }
    
    // if (counterThing > 10)
    // {
    //     window_timer = 0;
    //     window = 9;
    //     counterThing = 0;
    // }
}

//i hope i did this right i hate programming
//update itw ont fucking work im going to kill myse
//day 2 of trying to get this shit to work im a second away from giving up and just doing something else

//hud offset area begins here
//---------------

if (attack == AT_UTILT){
    if (window == 2){
        hud_offset = 20;
    }
}

if (attack == AT_UAIR){
    if (window == 2){
        hud_offset = 20;
    }
}

if (attack == AT_USTRONG){
    if (window == 4){
        hud_offset = 30;
    }
}

if (attack == AT_USPECIAL){
    if (window == 2){
        hud_offset = 20;
    }
}

if (attack == AT_FAIR){
    if (window == 2){
        hud_offset = 10;
    }
}

//hud offset area ends here -----

//cooldowns

if (attack == AT_FSPECIAL_2){
    move_cooldown[AT_FSPECIAL] = 50;
}