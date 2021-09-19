//got_hit
bb_consecutive_cancelled_attacks = 0;

if(state_cat == SC_HITSTUN && state_timer <= 1 && get_player_color(player) == 0){
      	    set_character_color_slot(1, 128, 135, 135, 1);
      	      	        init_shader();
      	    if (state_timer == 1){
  	        set_character_color_slot(1, 135, 99, 63);  
  	        init_shader();
      	    }
}

    got_hit_ticks = 0;

got_hit_num = 1;

	    sound_stop(sound_get("taunt1"));
	    sound_stop(sound_get("taunt2"));
	    sound_stop(sound_get("taunt3"));
	    sound_stop(sound_get("taunt4"));
	    sound_stop(sound_get("taunt5"));
	    
	    
	    	 with (oPlayer){
	    	 	if(visible == false){
 	visible = true;
	    }
	    }