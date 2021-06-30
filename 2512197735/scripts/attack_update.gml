//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


// Cargo Throw
if (attack == AT_NSPECIAL_2 && window == 2){
	
	
	// Holding the opponent and aiming
	if (special_down == true || attack_down == true ||taunt_down == true || right_strong_down == true
    || left_strong_down == true || up_strong_down == true || down_strong_down == true){
		set_window(2);
    	move_cooldown[AT_NSPECIAL] = 75;

		//Aiming up or down, to make more precise (but slower), you can remove the '_down' parts
		if (up_down && grab_dir < 5){
			grab_dir += .25;
		}
		if (down_down && grab_dir > 0){
			grab_dir -= .25;
		}
		
	}
	// Launching the opponent
	else {
		
		if (grab_dir >= 0 && grab_dir < 1){
			set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 6, HG_LIFETIME, 0);
		}
		if (grab_dir >= 1 && grab_dir < 2){
			set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 3);
			set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 6, HG_LIFETIME, 0);
		}
		if (grab_dir >= 2 && grab_dir < 3){
			set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 3);
			set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 6, HG_LIFETIME, 0);
		}
		if (grab_dir >= 3 && grab_dir < 4){
			set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 3);
			set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 0);
		}
		if (grab_dir >= 4 && grab_dir < 5){
			set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 3);
		}
		if (grab_dir == 5){
			set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 0);
			set_hitbox_value(AT_NSPECIAL_2, 6, HG_LIFETIME, 3);
		}
		
		window = 3;
		window_timer = 0;
		
	}
}

if (attack == AT_FSPECIAL) {
	
	if (window == 1){
		fspecial_jump = false;
	}
	
	if (jump_pressed){
		if (!free){
			vsp = -10;
			djumps = 0;
			fspecial_jump = true;
		}
		if (free && djumps == 0 && fspecial_jump == false){	
			vsp = -10;	
			djumps = 1;
		}	//Remove this to make it not possible to jump with it in the air
	}
		
  if (window == 2) {
	if(window_timer % 4 == 0){
		spawn_hit_fx(x, y, bash_afterimage);
	}
	
    if (state_timer > 70) {
      window = 3;
      window_timer = 0;
      destroy_hitboxes();
    }
    
	if (window_timer == 14){
		window_timer = 1;
	}
	
	if (!special_down && state_timer > 30) { //THis changes the ammount of frames the initial FSpecial plays
	    window = 3;
	    window_timer = 0;
	    destroy_hitboxes();
	}
  }
  can_fast_fall = false;
}

if (attack == AT_FSPECIAL_AIR){
if(!has_hit){ move_cooldown[AT_FSPECIAL_AIR] = 60} 
	can_wall_jump = true;
    
    can_fast_fall = false;
	if (has_hit_player){
		can_jump = true;
		
}

}

if (attack == AT_FSPECIAL_AIR){
if(!has_hit){ move_cooldown[AT_FSPECIAL_AIR] = 60} 
	can_wall_jump = true;
	
   
    can_fast_fall = false;
	if (has_hit_player){
		can_jump = true;
		djumps = 0
}
if(window != 3){
		if(window_timer % 4 == 0){
		spawn_hit_fx(x, y, bashair_afterimage);
	}
}	
} 
if(window != 2){
    
                //ledge snap
                if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
                    for (var i = 1; i < 40; i++){
                        if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) {
                            y -= i;
                            break;
                        }
                    }      
                }
        }

if (attack == AT_USPECIAL){
    can_fast_fall = false; 
	can_wall_jump=true;	
} 

if (attack == AT_DSPECIAL){
    if (window == 1){
    	war_sound_played = false;
    	if (free){
    		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
    		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
    	}
    	else {
    		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 8);
    		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -11);
    	} 
    	move_cooldown[AT_DSPECIAL] = 75;
	can_wall_jump = true;
    }
    if (window == 4){
    	spawn_hit_fx(x, y, dspecial_afterimage);
    	if(window_time_is(1) && free && !war_sound_played){
    		sound_play(asset_get("sfx_swipe_heavy1"))
    		war_sound_played = true;
    	}
    }
    can_fast_fall = false;
 can_move = true;
 if(window == 5 && window_time_is(1)){
    	shake_camera(8,9);
    	spawn_hit_fx( x, y, 301 );
    }
}

if (attack == AT_DSPECIAL){
    fall_through = true;
	can_wall_jump=true;	
	can_move=true;
	can_shield=true;
}

if(attack == AT_DSTRONG){
    if(window == 2){
        if(window_time_is(1)){
        shake_camera(8,9);
        spawn_hit_fx( x - 15 * spr_dir, y, 193  );
        sound_play(asset_get("sfx_swipe_medium1"));
        }
    }
}

if(attack == AT_TAUNT){
	if(window == 2 && window_time_is(1)){
		sound_play(asset_get("sfx_swipe_medium1"));	
	}
}

if(attack == AT_USTRONG){
	if(window == 1 && window_time_is(1)){
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	if(window == 3 && !free && window_time_is(1)){
		sound_play(sound_get("land"));
	}
	if(strong_charge >= 15 && window == 2 && window_time_is(1)){
		vsp -= 2;
	}
}
if(attack == AT_FSTRONG){
    if(window == 2 && window_time_is(1)){
        sound_play(asset_get("sfx_blow_heavy1"));
    }
}

if(window_time_is(1) && window == 1){
war_sfx_should_play = random_func(0,3,true);
}

if(war_sfx_should_play == 2){
	if(voice == true){
		if(attack != AT_USTRONG && attack != AT_DSTRONG && attack != AT_DSPECIAL){
			if(window == 1 && window_time_is(1)){
		    	mix_voice_sfx =  random_func(0,7,true)
    			sound_play(mix_clip[mix_voice_sfx]);
    		}	
		}else{
			if(window == 2 && window_time_is(1)){
		    	mix_voice_sfx =  random_func(0,7,true)
    			sound_play(mix_clip[mix_voice_sfx]);
    		}	
		}
	}

}

if(attack == AT_TAUNT_2){
	    		if(window == 2 && !taunt_down){
    			set_window(3);
    		}  
    				    if(window == 2 && window_time_is(1)){
		    	mix_voice_sfx =  random_func(0,5,true)
    			 sound_play(mix_clip[mix_voice_sfx]);
    		}
}

if(attack == 49){
	if(window == 1){
		waluigi_exists = false;
		fs_timer = 0;
		waluigi_explode = false;
		waluigi_x = x + 40 * spr_dir;
		waluigi_y = y - 40;
	}
	suppress_stage_music(0.5, 0.5);
	hsp = 0;
	vsp = 0;
	can_move = false;
	if(window == 2){
		if (!instance_exists(wah_hb) && !waluigi_exists) {
    		wah_hb = instance_create( floor(x + 40 *spr_dir), floor(y - 40), "obj_article1" );
    		waluigi_exists = true;
    		sound_play(sound_get("WaluigiScream"));
    	}
	}
	if(window == 2){
	    if (state_timer % 26 == 0 && fs_timer <= 32) fs_timer++;
        	if (fs_timer == 32)
            	{
					set_window(3);	
					waluigi_explode = true;
            	}	
           if(attack_pressed){
           		set_window(3);
           		waluigi_explode = true;
           }
		}
		if(instance_exists(obj_article1)){
		waluigi_x = obj_article1.x;
		waluigi_y = obj_article1.y;		
		}
	if (right_down && spr_dir == 1) {
		waluigi_x+=8;
	}
	if (left_down && spr_dir == -1) {
		waluigi_x-=8;
	}
	if (up_down) {
		waluigi_y-=8;
	}
	if (down_down) {
		waluigi_y+=8;
	}
		waluigi_x = clamp(waluigi_x,0,room_width);
		waluigi_y = clamp(waluigi_y,0,room_height);
	}

#define grab_article_if_valid_war
    //contributed by Floral qua Floral <3 And Felix :D
    if(string_length(string(player_id.url)) > 0 && orig_player != 5){
            var playerurl = real(player_id.url);
               var dist = point_distance(other.x+45*other.spr_dir, other.y-45, x, y); //distance
            if(dist <= 65 && ("wariocangrab" in self && wariocangrab || other.url != playerurl && (playerurl < 20))){
                other.war_grab_target = self;
                other.war_grabbed_article = true;
                if("current_player" in self){
                    current_player = other.player;
                }
            }
    }
// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause

#define set_window(_new_window) // Version 0
    // Sets the window to the given state and resets the window timer.
    window = _new_window
    window_timer = 0
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!