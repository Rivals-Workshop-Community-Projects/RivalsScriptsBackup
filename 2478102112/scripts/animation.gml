if get_player_color(player) == 25 {
	switch (state){
	    case PS_IDLE:
	    	sprite_index = sprite_get("idle_bugingi");
	    	image_index = floor(image_number*state_timer/(image_number*6.5)); 
	    case PS_RESPAWN:
	    case PS_SPAWN:
	        image_index = floor(image_number*state_timer/(image_number*6.5));
	    break;
	    
	    case PS_WALK:
	    	sprite_index = sprite_get("walk_bugingi");
	        image_index = floor(image_number*state_timer/(image_number*5));
	    break;
	}
}
else{
	switch (state){
	    case PS_IDLE:
	    //sprite_index = sprite_get("Lady_Añitresu");
	      image_index = floor(image_number*state_timer/(image_number*6.5)); 
	    case PS_RESPAWN:
	    case PS_SPAWN:
	        image_index = floor(image_number*state_timer/(image_number*6.5));
	    break;
	    
	    case PS_WALK:
	        image_index = floor(image_number*state_timer/(image_number*5));
	    break;
	}
}



/*with (oPlayer) { //run through every player
  if (id != other.id) { // if this player is NOT you
    if dance_timer > 0{
    	dance_timer -= 1;
    	sprite_index = sprite_get("walkturn");
        image_index = floor(image_number*state_timer/(image_number*6.5)); 
    	/*if state != PS_WALK_TURN and state != PS_DEAD and state != PS_RESPAWN and free == false{ //and state_timer >= 1
    		sprite_index = sprite_get("walkturn");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
    		//state = PS_IDLE;
    		//state = PS_WALK_TURN;
    		//spr_dir *= -1;
    		clear_button_buffer(PC_LEFT_HARD_PRESSED);
			clear_button_buffer(PC_RIGHT_HARD_PRESSED);
			clear_button_buffer(PC_UP_HARD_PRESSED);
			clear_button_buffer(PC_DOWN_HARD_PRESSED);
			clear_button_buffer(PC_LEFT_STRONG_PRESSED);
			clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
			clear_button_buffer(PC_UP_STRONG_PRESSED);
			clear_button_buffer(PC_DOWN_STRONG_PRESSED);
			clear_button_buffer(PC_LEFT_STICK_PRESSED);
			clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
			clear_button_buffer(PC_DOWN_STICK_PRESSED);
			clear_button_buffer(PC_JUMP_PRESSED);
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_SHIELD_PRESSED);
			clear_button_buffer(PC_SPECIAL_PRESSED);
			clear_button_buffer(PC_STRONG_PRESSED);
			clear_button_buffer(PC_TAUNT_PRESSED);
    	}
    }
  }
}