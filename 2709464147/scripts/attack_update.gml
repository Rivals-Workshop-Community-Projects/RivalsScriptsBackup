//B - Reversals
if (attack == AT_NSPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    can_fast_fall = false;
}

if (attack == AT_FTHROW) {
    if (window == 1 && window_timer <= 3) {
        buffer_throw();
    }
    
    if (window == 1 && window_timer == 4) {
        play_voice([sound_get("monte_v14.rwav"), sound_get("monte_v5.rwav"), sound_get("monte_v6.rwav"), sound_get("monte_v14.rwav")], 50);
    }
    hurtboxID.sprite_index = !free ? get_attack_value(attack, AG_HURTBOX_SPRITE) :  get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
    can_fast_fall = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
		grabbed_player_obj = noone; 
	}

	else {
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		var pull_to_x = 0
		var pull_to_y = 0;
		var window_length = 2;
		var grab_ease = false;
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 1;
		    window_length = 6;
		    if (window_timer >= 0 && window_timer <= window_length / 2) {
    			pull_to_x = -54 * spr_dir;
    			pull_to_y = -50;
		    }
			else 
			{
    			pull_to_x = -50 * spr_dir;
    			pull_to_y = -54;
		    }
		}
		
		if (window == 2) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 0;
		    window_length = 3;
		    grab_ease = true;
	    	pull_to_x = 60 * spr_dir;
			pull_to_y = -32;
		}
		if (window > 2) {
			attack_invince = 0;
		}
		if (window < 2 || (window == 2 && window_timer <= 1)) { 
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		if (grab_ease) {
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x * (spr_dir * image_xscale), window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y* image_yscale, window_timer, window_length);
    		}
    		else {
    			grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
    			grabbed_player_obj.y = y + pull_to_y * image_yscale;
    		}
		}
	}
    
}

if (attack == AT_DTHROW) {
    if (window == 1 && window_timer <= 3) {
        buffer_throw();
    }
    if (window == 1 && window_timer == 4) {
        play_voice([sound_get("monte_v14.rwav"), sound_get("monte_v5.rwav"), sound_get("monte_v6.rwav"), sound_get("monte_v14.rwav")], 50);
    }
    hurtboxID.sprite_index = !free ? get_attack_value(attack, AG_HURTBOX_SPRITE) :  get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
    can_fast_fall = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
		grabbed_player_obj = noone; 
	}

	else {
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		var pull_to_x = 0
		var pull_to_y = 0;
		var window_length = 2;
		var grab_ease = false;
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 1;
		    window_length = 6;
		    if (window_timer >= 0 && window_timer <= window_length / 2) {
    			pull_to_x = -16 * spr_dir;
    			pull_to_y = -112;
		    }
			else 
			{
    			pull_to_x = -16 * spr_dir;
    			pull_to_y = -110;
		    }
		    
		    if (window_timer == window_length) {
		        create_hitbox(attack, free ? 2 : 1, round(x), round(y));
		    }
		}
		
		if (window == 2) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 0;
		    window_length = 3;
		    grab_ease = true;
	    	pull_to_x = 16 * spr_dir;
			pull_to_y = 16;
		}
		if (window > 2) {
			attack_invince = 0;
		}
		if (window < 2 || (window == 2 && window_timer <= 1)) { 
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		if (grab_ease) {
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x * (spr_dir * image_xscale), window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y* image_yscale, window_timer, window_length);
    		}
    		else {
    			grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
    			grabbed_player_obj.y = y + pull_to_y * image_yscale;
    		}
		}
	}
    
}

if (attack == AT_NTHROW) {
    if (window == 1 && window_timer <= 3) {
        buffer_throw();
    }
    if (window == 1 && window_timer == 4) {
        play_voice([sound_get("monte_v14.rwav"), sound_get("monte_v5.rwav"), sound_get("monte_v6.rwav"), sound_get("monte_v14.rwav")], 50);
    }
    hurtboxID.sprite_index = !free ? get_attack_value(attack, AG_HURTBOX_SPRITE) :  get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
    can_fast_fall = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
		grabbed_player_obj = noone; 
	}

	else {
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		var pull_to_x = 0
		var pull_to_y = 0;
		var window_length = 2;
		var grab_ease = false;
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 1;
		    window_length = 8;
		    if (window_timer >= 0 && window_timer <= window_length / 2) {
    			pull_to_x = 13 * spr_dir;
    			pull_to_y = -30;
		    }
			else 
			{
    			pull_to_x = 11 * spr_dir;
    			pull_to_y = -28;
		    }
		}
		
		if (window == 2) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 0;
		    window_length = 3;
		    grab_ease = true;
	    	pull_to_x = -69 * spr_dir;
			pull_to_y = -75;
		}
		if (window > 2) {
			attack_invince = 0;
		}
		if (window < 2 || (window == 2 && window_timer <= 1)) { 
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		if (grab_ease) {
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x * (spr_dir * image_xscale), window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y* image_yscale, window_timer, window_length);
    		}
    		else {
    			grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
    			grabbed_player_obj.y = y + pull_to_y * image_yscale;
    		}
		}
	}
    
}


if (attack == AT_UTHROW) {
    if (window == 1 && window_timer <= 3) {
        buffer_throw();
    }
    hurtboxID.sprite_index = !free ? get_attack_value(attack, AG_HURTBOX_SPRITE) :  get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
    can_fast_fall = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
		grabbed_player_obj = noone; 
	}

	else {
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		var pull_to_x = 0
		var pull_to_y = 0;
		var window_length = 2;
		var grab_ease = false;
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 1;
		    window_length = 16;
		    if (window_timer >= 0 && window_timer <= window_length * 0.25) {
    			pull_to_x = 42 * spr_dir;
    			pull_to_y = -42;
		    }
			else if (window_timer >= window_length * 0.25 && window_timer <= window_length * 0.5)
			{
    			pull_to_x = -4 * spr_dir;
    			pull_to_y = -132;
		    }
			else if (window_timer >= window_length * 0.5 && window_timer <= window_length * 0.75)
			{
    			pull_to_x = 0 * spr_dir;
    			pull_to_y = -64;
		    }
			else
			{
    			pull_to_x = 0 * spr_dir;
    			pull_to_y = -66;
		    }
		}
		
		if (window == 2) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 1;
		    window_length = 20;
		    grab_ease = true;
	    	pull_to_x = 0 * spr_dir;
			pull_to_y = -100;
		}
		if (window == 3) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 1;
		    window_length = 9;
		    grab_ease = false;
	    	pull_to_x = 0 * spr_dir;
			pull_to_y = -104;
			
			if (vsp > 0 && window_timer > 35) {
			    vsp = 15;
			}
			
			if (!free) {
			    sound_play(asset_get("sfx_kragg_rock_pillar"))
                play_voice([sound_get("monte_v1.rwav"), sound_get("monte_v8.rwav"), sound_get("monte_v13.rwav")], 100);
			    window ++;
			    window_timer = 0;
			}
			else {
        		grabbed_player_obj.hitstop = 2;
        		grabbed_player_obj.hitpause = true;
    			grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
    			grabbed_player_obj.y = y + pull_to_y * image_yscale;
			}
		}
		if (window == 4) { 
			attack_invince = 1;
			grabbed_player_obj.attack_invince = 0;
		    window_length = 4;
		    grab_ease = false;
	    	pull_to_x = 0 * spr_dir;
			pull_to_y = -56;
		}
		if (window > 4) {
			attack_invince = 0;
		}
		if (window <= 2 || (window == 4 && window_timer <= 1)) { 
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		if (grab_ease) {
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x * (spr_dir * image_xscale), window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y* image_yscale, window_timer, window_length);
    		}
    		else {
    			grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
    			grabbed_player_obj.y = y + pull_to_y * image_yscale;
    		}
		}
	}
    
}

if (attack == AT_TAUNT) {
    hud_offset = 96;
    if (window == 1 && !hitpause) {
        textbox_pos = 0;
        textbox_typetext = "";
        textbox_linetext = "";
        textbox_linenum = 0;
        
        max_line_length = 256;
        max_lines = 3;
        character_speed = 2;
        textbox_timer = 0;
        
        if (window_timer == 1) {
            play_voice([sound_get("monte_v1.rwav"), sound_get("monte_v8.rwav"), sound_get("monte_v13.rwav")], 100);
            textbox_text = "I'm a chuckster!"
            
            if (random_func(1, 100, true) <= 10) {
                textbox_text = "I'm a fucking chuckster!"
            }
        }
    }
    if (window == 2) {
        var word = "";
        var empty_char = ' ';
        var word_width = 0;
        if (textbox_pos < string_length(textbox_text) && textbox_linenum < max_lines + 1) {
    	    if (get_gameplay_time() % character_speed == 0 ) {
    	        if (get_gameplay_time() % 4 == 0 ) {
        	        sound_stop(sound_get("smsunshine_talk_text"));
        	        sound_play(sound_get("smsunshine_talk_text"));
    	        }
                if (textbox_typetext != textbox_text && textbox_linenum < max_line_length) {
        			if (textbox_pos >= string_length(textbox_text)) {
        				textbox_pos = string_length(textbox_text);
        			}
                }
    			word = "";
    			if (empty_char == ' ') {
    				for (var i = textbox_pos; i < string_length(textbox_text); i++) {
    					if (string_char_at(textbox_text, i + 1) == ' ') {
    						break;
    					}
    					else {
    						word += string_char_at(textbox_text, i + 1);
    					}
    				}
    			}
    			word_width = string_width(word);
    			if (word_width + string_width(textbox_linetext) > max_line_length) {
    				textbox_typetext += "
    				";
    				textbox_linenum ++;
    				textbox_linetext = "";
    				
    			}
    			empty_char = string_char_at(textbox_text, textbox_pos + 1)
    	
    			// Save the text
    			textbox_typetext += string_char_at(textbox_text,textbox_pos+1);
    			textbox_linetext += string_char_at(textbox_text,textbox_pos+1);
    			textbox_pos++;
            }
        }
        else {
            textbox_timer ++;
            if (textbox_timer >= 60) {
                window ++;
                window_timer = 0;
            }
        }
    }
}

#define buffer_throw()
var facing = (right_down - left_down) == -spr_dir;
var facing_stick = (right_stick_down - left_stick_down) == -spr_dir;
var facing_strong = (right_strong_down - left_strong_down) == -spr_dir;
if (down_down || down_stick_down || down_strong_down) {
    if (attack != AT_DTHROW) set_attack(AT_DTHROW);
}
else if (up_down || up_stick_down || up_strong_down) {
    if (attack != AT_UTHROW) set_attack(AT_UTHROW);
}
else if (facing || facing_stick || facing_strong) {
    if (attack != AT_NTHROW) set_attack(AT_NTHROW);
}

#define play_voice(sfx_array, chance)
if (voice_on) {
    if (!is_array(sfx_array)) {
        sfx_array = [sfx_array];   
    }
    
    var random_voice = random_func(9, 100, true);
    if (random_voice <= chance) {
        random_voice =  random_func(10, array_length(sfx_array), true);
        sound_play(sfx_array[random_voice]);
    }
}

