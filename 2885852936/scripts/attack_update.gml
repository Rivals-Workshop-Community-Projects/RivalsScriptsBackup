//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
 
                                        
pig_state_timer = 0;   
pig_hit = 0;
//attack_update.gml
if attack == AT_DSPECIAL{
  if window == 1 && window_timer == 3 && hitpause == false { // 'hitpause == false' prevents it from running multiple times if frozen in hitpause // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    pig = instance_create(x + 80* spr_dir, y - 15, "obj_article2") // Optionally save a reference to the instance in a variable.
	sound_play(sound_get( "pigoink" ));
  }
}

if attack == AT_DSPECIAL && window = 1 && window_timer <= 1{
	 if instance_exists(pig){
    attack = AT_DSPECIAL_2;
	pig.called = true;
		if (pig.pig_state = 1){
		sound_play(sound_get( "pigsqu" ));
		}
	}

}

    //taunt to make pig dance
if attack == AT_TAUNT && window == 1 && window_timer == 20 && taunt_down { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
  with (pig) {
	if (pig_state = 1){
	pig_state_timer = 0;
	sound_play(sound_get( "pigsqu" ));
       pig_state = 7;
		}
    }
}


//loop taunt
if attack == AT_TAUNT && window == 2 && window_timer == 30 && taunt_down { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	window = 2;
	window_timer = 0;
}

if attack == AT_TAUNT && window == 2 && window_timer > 15 {
if  window_timer == 15 && taunt_down { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	window_timer = 7;
}}


pig_hit = 0; 


//ftilt cooldown
if attack == AT_FTILT {
  move_cooldown[AT_FTILT] = 20;
}
//beem cooldown
if attack == AT_NSPECIAL {
  move_cooldown[AT_NSPECIAL] = 40;
}
//faint cooldown
if attack == AT_DSPECIAL_2 {
  move_cooldown[AT_DSPECIAL] = 40;
  if window == 2 && window_timer < 12{
    invincible = true;
  }
}




if (attack == AT_FSPECIAL){
	//clamp speed
	var c_speed = 4;
	hsp = clamp(hsp, -c_speed/3, c_speed/3);
	vsp = clamp(vsp, -c_speed, c_speed);
		
	if (window == 1 && window_timer >= 4 && window_timer <= 6) {
		var rand_x = x + 1 - random_func(window_timer, 30, true);
		var rand_y = y - random_func(window_timer, char_height, true);
		//create_hitbox( AT_FSPECIAL, 2, rand_x, rand_y ); //close hit
	}
////////////////////////////////////////////////
if (attack == AT_FSPECIAL && window = 2 && window_timer >= 1){
	if (shield_pressed || jump_pressed) {
		can_shield = true;
		can_jump = true;
		//if (shield_pressed || jump_pressed) {
			instance_destroy(cursor);
			sound_play(sound_get( "cursorded" ));
		//	window++;
		}
		
	if (attack == AT_FSPECIAL && window == 3 && window_timer >= 8) {
		with (cursor) {
			hsp = 0;
		}
	}

}
	if (window == 1 && window_timer == 5){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		cursor = create_hitbox( AT_FSPECIAL, 2, x + 40 * spr_dir, y - 80 );
		sound_play(sound_get( "cursor" ));
	}

	if (window <= 3 ){
		var cursor_spd = 1;
		with (cursor) {
			
			//y = other.y - (other.char_height / 1) - 40;
			
			if (other.left_down) {
				hsp -= 0.1;
			}
			if (other.right_down) {
				hsp += 0.1 ;
			}
			if (other.joy_pad_idle) {
				hsp = 0;
			}
		}
	}

	if (window == 4 && window_timer == 1){// WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		instance_destroy(cursor);
		sound_play(sound_get( "cursorded" ));
	}
///////// first part ^ 
///////// Attack part \/

	if (attack == AT_FSPECIAL && window == 3 && window_timer == 12){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		if instance_exists(cursor){

		var cursorx = get_instance_x(cursor); 	
			sound_play(sound_get( "thund" ));
			if (spr_dir = 1){
			thunder = create_hitbox( AT_FSPECIAL, 3, (cursor.x + 120), cursor.y + 150);
			}
			if (spr_dir = -1){
			thunder = create_hitbox( AT_FSPECIAL, 3, (cursor.x - 120), cursor.y + 150);
			}
			with (thunder){
				if was_parried = true{
				instance_destroy(cursor);
				create_hitbox( AT_FSPECIAL, 3, player_id.x, player_id.y + 150);
			}
			}
		}
	}

}

if (attack == AT_FSPECIAL && !instance_exists(cursor) && window == 2 && window_timer >= 1){
	state = PS_IDLE;
}


if attack == AT_USPECIAL || attack == AT_DSPECIAL_2{
  can_fast_fall = false;
  if window == 4{
    can_wall_jump = true;
  }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion