//Strong Percent determiner
strongPercent = (2 - ai_target.knockback_adj) * 90;
//------------------ Wait time
if (get_training_cpu_action() == CPU_STAND && !ai_recovering){
	joy_pad_idle = true;
}
else
{
	if(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
  		attacking = true;
		if wait_time == 0{
			
			wait_time = -1;
		}
	}else{
		attacking = false;
	}

	//AI difficulty affects wait time, higher difficulties will see a more aggressive Carol   
	if(wait_time == -1 and !attacking){
		wait_time = 72 - (temp_level * 8);
	}
	if wait_time > 0{
		wait_time--;
	}

	if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN){
		targetbusy = true;
	rangedtimer = 100;
	}

	if (free && !ai_recovering && motorbike == false)
	{
		if (x < stagex + 20 || x > (room_width - stagex) -20)
		{
			jump_down = false;
			jump_pressed = false;
		}
	}

	//Carol's recovery is more unique that other characters, this code helps her recover
	if (ai_recovering && motorbike == false)
	{
		if (x<get_stage_data( SD_X_POS)) {
			distX=get_stage_data( SD_X_POS)-x;
		} else {
			distX = x-(get_stage_data( SD_X_POS)+get_stage_data( SD_WIDTH));
		}
		up_down=false;
		right_down=false;
		left_down=false;
		special_down = (state == PS_ATTACK_AIR && attack == AT_FSPECIAL);
	
		if (x<get_stage_data( SD_X_POS)) {
			right_down=true;
			left_down=false;
		} else{
			left_down=true;
			right_down=false;
		}
		if (djumps == max_djumps && special_down == false && distX > 20)
		{
			special_down = true;
		}
		if (can_wall_jump && has_walljump && place_meeting(x + 80 * spr_dir, y, asset_get("par_block")))
		{
			jump_down = true;
		}
		else if (can_wall_jump && has_walljump && !place_meeting(x + 80 * spr_dir, y, asset_get("par_block")) 
		&& place_meeting(x + 80 * spr_dir, y + 80, asset_get("par_block")))
		{
			if (x<get_stage_data( SD_X_POS)) {
				right_down=true;
				left_down=false;
			} else{
				left_down=true;
				right_down=false;
			}
			attack_pressed = true;
		}
		else if (walljump_number == 5 && place_meeting(x + 80 * spr_dir, y, asset_get("par_block")))
		{
			jumo_down = false;
			up_down = true;
			if (has_airdodge)
			{
				shield_down = true;
			}
			else
			{
				special_down = true;
			}
		}
	}
	
	targetbusy = false;
	
	//Make Carol get on the bike if fuel hits 40.
	if (fuel == 40 && !ai_recovering && motorbike == false && !free)
	{
		var get_on_bike = random_func(10, 4, 1);
		if (get_on_bike < 2)
		{
			joy_pad_idle = false;
			down_down = true;
			special_pressed = true;
		}
	}
	
	//Attempt to either wall jump or ride up the walls when near a wall (I don't know if this works or not!)
	if (can_wall_jump && (place_meeting(x + 20, y-50,asset_get("par_block"))) || place_meeting(x - 20, 
	y-50,asset_get("par_block")) && !ai_recovering && y > get_stage_data( SD_Y_POS))
	{
		if (motorbike == true)
		{
			joy_pad_idle = false;
			jump_down = true;		
		}
		else
		{
			joy_pad_idle = false;
			jump_pressed = true;
		}
	}
	
	//Only attack with Strongs if the opponent can be KO'd
	if (get_player_damage(ai_target.player) >= strongPercent && !ai_recovering)
	{
		if (temp_level < 7)
		{
			joy_pad_idle = false;
			attack_down = false;
			if (!ai_recovering)
			{
				special_down = false;
			}
			strong_pressed = true;
		}
		else
		{
			//Call the hitbox selection function, it stores the value in chosenAttack
	       	hitboxloc("strongs");
	       	
	       	switch (chosenAttack)
	       	{
	   			//UStrong
	    		case AT_USTRONG:
	    		case AT_USTRONG_2:
		    		if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		{
			        	clear_button_buffer( PC_ATTACK_PRESSED );
				        joy_pad_idle = true;
	        			up_down = false;
	        			down_down = false;
						left_down = false;
						right_down = false;
						special_pressed = false;
						attack_pressed = false;
						up_strong_pressed = true;
		    		}
	        	break;
		        //FStrong
				case AT_FSTRONG:
				case AT_FSTRONG_2:
		    		if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		{
		    			clear_button_buffer( PC_ATTACK_PRESSED );
			            joy_pad_idle = true;
					    up_down = false;
	        			down_down = false;
					    left_down = false;
					    right_down = false;
					    special_pressed = false;
					    attack_pressed = false;
						if x > ai_target.x{
			        		left_strong_pressed = true;
			    		} else {
			        		right_strong_pressed = true;
			    		}
		    		}
		   	    break;
	       		//DStrong
	       		case AT_DSTRONG:
	       		case AT_DSTRONG_2:
		    		if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		{
		    			clear_button_buffer( PC_ATTACK_PRESSED );
				   	    joy_pad_idle = true;
					    up_down = false;
	    		    	down_down = false;
						left_down = false;
						right_down = false;
						special_pressed = false;
						attack_pressed = false;
						down_strong_pressed = true;
		    		}
			    break;
			    case AT_USPECIAL:
			    case AT_USPECIAL_2:
		    		if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		{
		    			clear_button_buffer( PC_ATTACK_PRESSED );
				   	    joy_pad_idle = false;
					    up_down = true;
	    		    	down_down = false;
						left_down = false;
						right_down = false;
						special_pressed = true;
						attack_pressed = false;
		    		}
			    break;
			    default:
			    break;
	       	}
		}
	}
	
	
	switch (attack)
	{
		//combo logic to ensure jabs go through
		case AT_JAB:
		case AT_FTILT:
		case AT_UTILT:
		case AT_DTILT:
		case 45:
		case 46:
		case 47:
		case 48:
		if (window = 1 && window_timer == 1)
		{
			random_direction = random_func(9, 4, 1);
		}
		if (random_direction > 0)
		{
			if ((window == 3 || window == 5) && window_timer == 1 && has_hit_player)
			{
				switch (random_direction)
				{
					case 1:
						joy_pad_idle = false;
						if (spr_dir == 1)
						{
							right_down = true;
						}
						else
						{
							left_down = true;
						}
						attack_pressed = true;
					break;
					case 2:
						joy_pad_idle = false;
						up_down = true;
						attack_pressed = true;
					break;
					case 3:
						joy_pad_idle = false;
						up_down = true;
						attack_pressed = true;
					break;
					default:
					break;
				}
			}
		}
		else if (random_direction == 0)
		{
			if ((window == 3 || window == 5) && window_timer == 6 && has_hit_player)
			{
				joy_pad_idle = false;
				attack_pressed = true;
			}
		}
		break;
		case AT_DAIR:
			if (temp_level >= 7 && !do_not_attack && !ai_recovering && !offstage && has_hit)
			{
				up_down = true;
				special_pressed = true;
			}
		break;
		case AT_EXTRA_2:
			if (temp_level >= 7 && !do_not_attack && !ai_recovering && !offstage && has_hit)
			{
				if (x<ai_target.x) {
					right_down=true;
					left_down=false;
				} else{
					left_down=true;
					right_down=false;
				}
				special_pressed = true;
			}
		break;
		case AT_NSPECIAL:
		case AT_NSPECIAL_2:
			if (!has_hit_player)
			{
				if (x<get_stage_data( SD_X_POS)) {
					right_down=true;
					left_down=false;
				} else{
					left_down=true;
					right_down=false;
				}
				down_down = true;
				shield_pressed = true;
			}
			else if (has_hit && (window == 2 && window_timer >= 79))
			{
				jump_down = true;
				attack_down = true;
			}
		case AT_DATTACK:
			if (temp_level >= 7 && !do_not_attack && !ai_recovering && offstage && has_hit)
			{
				if (has_hit)
				{
					jump_pressed = true;
				}
				else if (window >= 3)
				{
					shield_down = true;
				}
			}		
		break;
		default:
		break;
	}
	
	//Code for using Nitro Boost on the bike
	if (get_player_damage(ai_target.player) >= strongPercent && move_cooldown[AT_FSPECIAL] = 0 && !ai_recovering 
	&& ((x >= stagex +16 && x <= (room_width - stagex) - 600 && spr_dir = 1)|| (x <= (room_width - stagex) - 16 
	&& x >= stagex +600 && spr_dir = -1)) && motorbike == true)
	{
		if (ai_target.y == y && (ai_target.x >= stagex && ai_target.x <= (room_width - stagex))) 
		{
			if (spr_dir == 1) {
				right_down=true;
				left_down=false;
			} else {
				right_down=false;
				left_down=true;
			}
	    	special_pressed=true;
		}
	}
	
	//Taunt
	if (can_attack and attack != (AT_TAUNT) and targetbusy and !ai_recovering)
	{
		if (motorbike = true)
		{
		    taunt_pressed = true;
		}
		else if (fuel < 40)
		{
			taunt_down = true;
		}
	}
		
	if !targetbusy or state_cat = SC_HITSTUN {
		if (motorbike = false)
		{
			taunt_down = false;
		}
		move_cooldown[AT_TAUNT] = 80 ;
	}
	
	
	//Make Carol chas opponent
	if (get_training_cpu_action() == CPU_EVADE){
		chasing = true;
		
	}
	
	
	
	//Advanced Level Ai Stuff, mostly taken from The Knight.
	if (temp_level >=7 && x >= stagex +16 && x <= (room_width - stagex) - 16 && !ai_recovering){
		
		//Check the width of the hurtbox
	    if (ai_target.player != old_ai_target or target_init == true or hurtboxWidth = 0){
	    	checkHurtboxWidth();
	    	target_init = false;
	    }
	    
	    //Variables updates and resets
	    old_ai_target = ai_target.player;
	    xdist = abs(ai_target.x - x);
	    ydist = abs(y - ai_target.y);
	 
	    //--------------------
	
	    if (state_cat != SC_HITSTUN and state != PS_SPAWN){
	        rangedtimer -= 1;
	    }
	    
	    
	    //Face opponent
	    if (((ai_target.x < x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1))){
	        facing = true;
	    }
	    
	    //Chase - Agression
		if (((0 > rangedtimer) and (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and state_cat != SC_HITSTUN and !ai_target_offstage and !offstage  and !can_DACUS and xdist > 100 and !wait_time > 0){
	    	if ai_target.x > x{
	    		right_hard_pressed = true;
	    		if (!ai_recovering)
	    		{
		    		special_down = false;
			     	special_pressed = false;
	    		}
				if state == PS_DASH {
					right_down = true;
				}
	    	} else {
	        	left_hard_pressed = true;
				if state == PS_DASH {
					left_down = true;
				}
	    	}
	    	chasing = 1
		}
	
		//Wavedash towards opponent
		if state == PS_WAVELAND{
		 	if chasing{
		 		if x < ai_target.x{
					left_down = false;
					right_down = true;
				} 	else {
					left_down = true;
					right_down = false;
				}
		 	}
		}
		//Start wavedashing
	    if (state == PS_AIR_DODGE and position_meeting(x, y+6, plat_asset)){
	   		if chasing{
	   			if x < ai_target.x{
					left_down = false;
					right_down = true;
					joy_pad_idle = false;
					joy_dir = 350;
				}else {
					left_down = true;
					right_down = false;
					joy_pad_idle = false;
					joy_dir = 190;
				}
	   		}else{
	   			if x > ai_target.x{
					left_down = false;
					right_down = true;
					joy_pad_idle = false;
					joy_dir = 350;
				}else {
					left_down = true;
					right_down = false;
					joy_pad_idle = false;
					joy_dir = 190;
				}
	   		}
	   		wavelanding = false;
	    }
	    
	    with (asset_get("pHitBox")){
			if player != other.player and type == 2 and (other.state_cat == SC_GROUND_NEUTRAL or other.state_cat == SC_AIR_NEUTRAL){
	    		//print_debug("help");
	    		if position_meeting(x + (10 * hsp), y + (10 * vsp), other){
	    			other.shield_pressed = true;
		   			if !other.free{
		   				other.let_parry = true;
		   			}
	    		}
		
			}
	    }
	    //Allows Parry to carry through
	    if(let_parry and state = PS_PARRY_START){
	    	joy_pad_idle = true;
	    	left_down = false;
	    	right_down = false;
	    	let_parry = false;
	    }
	    //Prevento from attacking if should wait and target is invincible
	    if(wait_time > 0 or ai_target.invince_time > 10){
			do_not_attack = true;
		}
	    
	    //valueReset
	    if ((state !=PS_ATTACK_AIR || state !=PS_ATTACK_GROUND) && !ai_recovering)
	    {
		    resetPredict();
	    }
	    cancel_jab = false;
		facing = false;
		chasing = 0;
		camping = 0;
		debug = 0;
		do_not_attack = 0;
		targetdamage = get_player_damage( ai_target.player );
	    var offstage = (x > room_width - stagex || x < stagex);
	    var ai_target_offstage = (ai_target.x - hurtboxWidth > room_width - stagex || ai_target.x + hurtboxWidth < stagex);
	    
	    //Hitstun breakers
	    if (prev_state == PS_HITSTUN)
	    {
	    	var juggle_break = random_func(1, 1, 1);
	   		if (juggle_break == 0 || y > (stagey - 300) || !has_airdodge)
	    	{
				clear_button_buffer( PC_ATTACK_PRESSED );
	   			joy_pad_idle = false;
				up_down = false;
	    		down_down = false;
				left_down = false;
				right_down = false;
				special_pressed = true;
				attack_pressed = false;
		   	}
		   	else if (juggle_break == 1 && y <= (stagey - 300) && has_airdodge)
		   	{
		   		clear_button_buffer( PC_ATTACK_PRESSED );
		       	joy_pad_idle = true;
			   	left_down = false;
	    	   	right_down = false;
	    	   	up_down = false;
	    	   	down_down = true;
	    	   	special_pressed = false;
	    	   	attack_pressed = true;
		   	}
	    }
	    
	    //Sit near edge when AI target is offstage
	    if (ai_target_offstage)
	    {
			if (x< (room_width - stagex)/2)
			{
				new_x = (room_width - stagex) - 16;
			}
			if (x> (room_width - stagex)/2)
			{
				new_x = stagex + 16;
			}
		}
		//Don't attack when the opponent is attacking
	    if ((ai_target.state = PS_ATTACK_GROUND || ai_target.state = PS_ATTACK_AIR) && !ai_target_offstage && ai_target.x < x + 16 && ai_target.x > x - 16 && y == ai_target.y)
	    {
	    	joy_pad_idle = false;
			attack_down = false;
			if (!ai_recovering)
			{
				special_down = false;
			}
			shield_down = true;
			do_not_attack = true;
	    }
	    else
		{
			do_not_attack = false;
		}
		
		if (!do_not_attack && get_player_damage(ai_target.player) < strongPercent)
		{
			if (!free)
			{
				hitboxloc("tilts"); //Project all attacks and returns which is in range and it is based on a set of conditions or random otherwise
	           
	        	switch (chosenAttack)
	        	{
	        		case AT_DATTACK:
	        		case 3:
	    			//Dattack
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
		    		    	clear_button_buffer( PC_ATTACK_PRESSED );
	    					if ai_target.x > x{
	    						right_hard_pressed = true;
	    					} 
	    					else {
	    						left_hard_pressed = true;
	    					}
	    					joy_pad_idle = true;
	    					left_down = false;
	    					right_down = false;
	    					up_down = false;
	    					down_down = false;
	    					special_pressed = false;
	    					attack_pressed = true;
	    					rangedtimer = 300;
			    		}
	        		break;
		    		//Jab
		    		case AT_JAB:
		    		case 48:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
		    				clear_button_buffer( PC_ATTACK_PRESSED );
		 					joy_pad_idle = true;
	    					left_down = false;
	    					right_down = false;
	    					up_down = false;
	    					down_down = false;
			 				special_pressed = false;
							attack_pressed = true;
		    				rangedtimer = 300;
		    			}
					break;
				   //FTilt
					case AT_FTILT:
					case 47:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
		    				clear_button_buffer( PC_ATTACK_PRESSED );
			 				joy_pad_idle = true;
			     			if x > ai_target.x{
			     				left_down = true;
	    		 				right_down = false;
					 	  	} else {
	        			    	left_down = false;
	        				 	right_down = true;
	    					}
	        				up_down = false;
	        				down_down = false;
	        				special_pressed = false;
	    					attack_pressed = true;
	    					rangedtimer = 300;
		    			}
					break;
					//Utilt
					case AT_UTILT:
					case 46:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
			    			clear_button_buffer( PC_ATTACK_PRESSED );
			 				joy_pad_idle = true;
			     			left_down = false;
				     		right_down = false;
						    up_down = true;
				 		    down_down = false;
						    special_pressed = false;
					    	attack_pressed = true;
							rangedtimer = 300;
		    			}
					break;
					//DTilt
					case AT_DTILT:
					case 45:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
		        			clear_button_buffer( PC_ATTACK_PRESSED );
			     			joy_pad_idle = true;
	    		 			left_down = false;
	        				right_down = false;
	        				up_down = false;
	        				down_down = true;
	    			 		special_pressed = false;
	    					attack_pressed = true;
							rangedtimer = 300;
		    			}
					break;
					//Up Special
				    case AT_USPECIAL:
				    case AT_USPECIAL_2:
			 			if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
			    		{
		    			clear_button_buffer( PC_ATTACK_PRESSED );
				   	    joy_pad_idle = false;
					    up_down = true;
	    		    	down_down = false;
						left_down = false;
						right_down = false;
						special_pressed = true;
						attack_pressed = false;
		    			}
				    break;
				    case AT_NSPECIAL:
	   			    case AT_NSPECIAL_2:
			 			if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
			    		{
		    				clear_button_buffer( PC_ATTACK_PRESSED );
				   			joy_pad_idle = false;
							up_down = false;
	    		    		down_down = false;
							left_down = false;
							right_down = false;
							special_pressed = true;
							attack_pressed = false;
		    			}
					default:
					break;
	        	}
			}
	        //Aerials    
	    	else{
	        	hitboxloc("aerials");
	        	
	        	switch (chosenAttack)
	        	{
	        		case AT_DAIR:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL && has_airdodge)
		    		    {
		    				clear_button_buffer( PC_ATTACK_PRESSED );
		    		    	joy_pad_idle = true;
			 		    	left_down = false;
	    			      	right_down = false;
	    			    	up_down = false;
	    			    	down_down = true;
	    			       	special_pressed = false;
	    			       	attack_pressed = true;
		    			}
		    		break;
	        		case 40:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
		    				clear_button_buffer( PC_ATTACK_PRESSED );
		    		    	joy_pad_idle = true;
			 		    	left_down = false;
	    			      	right_down = false;
	    			    	up_down = false;
	    			    	down_down = true;
	    			       	special_pressed = false;
	    			       	attack_pressed = true;
		    			}
	    		    break;
	    		    case AT_NAIR:
					case 44:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
	           				clear_button_buffer( PC_ATTACK_PRESSED );
	    	       			joy_pad_idle = true;
	    	       			left_down = false;
	    	       			right_down = false;
	    	    			up_down = false;
	    			    	down_down = false;
			    	       	special_pressed = false;
	    			       	attack_pressed = true;
		    			}
		    		break;
		    		case AT_UAIR:
					case 42:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
	    	    			clear_button_buffer( PC_ATTACK_PRESSED );
	    	        		joy_pad_idle = true;
	    	        		left_down = false;
	    	        		right_down = false;
	    	        		up_down = true;
	    	        		down_down = false;
	    	        		special_pressed = false;
	    	        		attack_pressed = true;
		           		}
					break;
					case AT_FAIR:
					case 43:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
	    		        	clear_button_buffer( PC_ATTACK_PRESSED );
	    			       	joy_pad_idle = true;
	    			       	if ai_target.x < x{
	    			           	left_down = true;
	    			           	right_down = false;
	    			       	} else {
	    			           	left_down = false;
	    			           	right_down = true;
	    			       	}
	    			       	up_down = false;
					       	down_down = false;
					       	special_pressed = false;
		    		       	attack_pressed = true;
		    			}
		    		break;
		    		case AT_BAIR:
		    		case 39:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
			               	clear_button_buffer( PC_ATTACK_PRESSED );
	    		       		joy_pad_idle = true;
	    		    		if ai_target.x < x{
	    		        		left_down = true;
	    		       			right_down = false;
	    		       		} else {
	    		           		left_down = false;
	    		        		right_down = true;
	    		       		}
	    		   			up_down = false;
	    		   			down_down = false;
	    		       		special_pressed = false;
	    		       		attack_pressed = true;
		    			}
		    		break;
		    		case AT_USPECIAL:
		    		case AT_USPECIAL_2:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL)
		    		    {
	    	    			clear_button_buffer( PC_ATTACK_PRESSED );
	    	        		joy_pad_idle = true;
	    	        		left_down = false;
	    	        		right_down = false;
	    	        		up_down = false;
	    	        		down_down = false;
		   	        		attack_pressed = false;
	    	        		if (special_down = true)
	    	        		{
	    	        			jump_pressed = true;
		    	        		special_pressed = false;
	    	        		}
	    	        		else
	    	        		{
	    	        			jump_pressed = false;
		    	        		special_pressed = true;    	        			
	    	        		}
		    			}
		    		break;
		    		case AT_EXTRA_2:
		    		    if (state != PS_ATTACK_AIR && attack != AT_FSPECIAL && djumps == 0)
		    		    {
	    	    			clear_button_buffer( PC_ATTACK_PRESSED );
	    	        		joy_pad_idle = true;
	    	        		left_down = false;
	    	        		right_down = false;
	    	        		up_down = false;
	    	        		down_down = false;
		   	        		attack_pressed = false;
		   	        		if (!ai_recovering)
		   	        		{
					    	   special_pressed = false; 
		   	        		}
	    	        		jump_pressed = true;
		    			}
		    		break;
					default:
					break;
		       	}
	    	}
		}
	
	}
}

#define predictlocTarget

fprediction = argument[0];

if(!ai_target.free and ai_target.hsp == 0){
	xtrag = prediction_array_target[@0][@ 0];
	ytrag = prediction_array_target[@0][@ 1];
	return;
}

if fprediction >= stopped_at_target and stopped_at_target != -1{
	xtrag = prediction_array_target[@stopped_at_target - 1][@ 0];
	ytrag = prediction_array_target[@stopped_at_target - 1][@ 1];
	return;
}

var plat = 0;
var stage = 0;

var new_x_c = 0;
var new_y_c = 0;
var new_vsp = 0;
var new_hsp = 0;

if fprediction > current_prediction_target{
	
	var collide = false;
	new_x_c = prediction_array_target[@current_prediction_target][@ 0];
	new_y_c = prediction_array_target[@current_prediction_target][@ 1];
	new_vsp = prediction_array_target[@current_prediction_target][@ 2];
	new_hsp = prediction_array_target[@current_prediction_target][@ 3];
	current_prediction_target++;

	var project_y = new_vsp + grav;
	
	if project_y > ai_target.max_fall{
		project_y = ai_target.max_fall;
	}
	if ai_target.fast_falling{
		if project_y > ai_target.fast_fall{
			project_y = ai_target.fast_fall;
		}
	}
	
	stage = position_meeting(new_x_c, new_y_c + project_y, solid_asset);
	plat = position_meeting(new_x_c, new_y_c + project_y, plat_asset);
	if stage or (plat and project_y > 0){
		new_vsp = 0;
		collide = true;
	}else{
		new_vsp = project_y;
		new_y_c += new_vsp;
	}
	
	//X manipulation, apply friction, if it would change polarity it makes it equal to 0. 
	if new_vsp == 0 and collide{
		if new_hsp > 0{
			var project_x = new_hsp - ai_target.ground_friction;
			if project_x < 0{
				project_x = 0;
				//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
				xtrag = prediction_array_target[@current_prediction_target - 1][@ 0];
				ytrag = prediction_array_target[@current_prediction_target - 1][@ 1];
				stopped_at_target = current_prediction_target;
				return;
			}
		}else{
			var project_x = new_hsp + ai_target.ground_friction;
			if project_x > 0{
				project_x = 0;
				//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
				xtrag = prediction_array_target[@current_prediction_target - 1][@ 0];
				ytrag = prediction_array_target[@current_prediction_target - 1][@ 1];
				stopped_at_target = current_prediction_target;
				return;
		}
		}
	}else{
		//In the air, if it would change polarity it makes it equal to 0. 
		if new_hsp > 0{
			var project_x = new_hsp - ai_target.air_frict;
			if project_x < 0{
				project_x = 0;
			}
		}else if new_hsp < 0{
			var project_x = new_hsp + ai_target.air_frict;
			if project_x > 0{
				project_x = 0;
			}
		}
		
	}
	
	//Test to see if X manipualtion makes it collide with walls
	stage = position_meeting(new_x_c + project_x, new_y_c - 2, solid_asset);
	plat = position_meeting(new_x_c + project_x, new_y_c - 2, plat_asset);
	if stage or plat{
		new_hsp = 0;
		
	}else{
		new_hsp = project_x;
		new_x_c = new_x_c + new_hsp;
	}
	
	//Store values in the array
	prediction_array_target[@current_prediction_target][@ 0] = new_x_c;
	prediction_array_target[@current_prediction_target][@ 1] = new_y_c;
	prediction_array_target[@current_prediction_target][@ 2] = new_vsp;
	prediction_array_target[@current_prediction_target][@ 3] = new_hsp;

	xtrag = prediction_array_target[@fprediction][@ 0];
	ytrag = prediction_array_target[@fprediction][@ 1];
	
}else{
	xtrag = prediction_array_target[@fprediction][@ 0];
	ytrag = prediction_array_target[@fprediction][@ 1];
}

#define predictlocSimple

fprediction = argument[0];
xtrag = ai_target.x + (ai_target.hsp * fprediction);
ytrag = ai_target.y + (ai_target.vsp * fprediction);

new_x = x + (hsp * fprediction);
new_y = y + (vsp * fprediction);

if !(x > room_width - stagex || x < stagex)
{
	if !(ai_target.x > room_width - stagex || ai_target.x < stagex){
		if ytrag >= stagey{
			ytrag = stagey;
		}
		if !ai_target.free{
			ytrag = ai_target.y;
		}
	}
}


if !(x > room_width - stagex || x < stagex){
	if new_y >= stagey{
		new_y = stagey;
	}
	if !free{
		new_y = y;
	}
}

#define checkHurtboxWidth

hurtboxWidth = ai_target.bbox_right - ai_target.x;

#define hitboxloc

if (motorbike == true)
{
	switch(argument[0]){
		case "tilts":
			var attacke = [48, 47, 46, 45, 3, AT_USPECIAL_2, AT_NSPECIAL_2];
			break;
			
		case "aerials":
			var attacke = [44, 43, 42, 40, 39, AT_USPECIAL_2];
			break;
			
		case "strongs":
			var attacke = [AT_DSTRONG_2, AT_USTRONG_2, AT_FSTRONG_2];
			break;
	}
}
else
{
	switch(argument[0]){
		case "tilts":
			var attacke = [AT_JAB, AT_DTILT, AT_FTILT, AT_UTILT, AT_DATTACK, AT_USPECIAL, AT_NSPECIAL];
			break;
			
		case "aerials":
			var attacke = [AT_NAIR, AT_DAIR, AT_FAIR, AT_UAIR, AT_BAIR, AT_USPECIAL, AT_EXTRA_2];
			break;
			
		case "strongs":
			var attacke = [AT_DSTRONG, AT_USTRONG, AT_FSTRONG, AT_USPECIAL];
			break;
	}
}

var len = array_length_1d(attacke);

var listAtk = [];
var j = 0;
var distadd_x = 0;
var distadd_y = 0;

//Distance from the predicted location
xdist = abs(xtrag - x);
ydist = abs(y - ytrag);

//Project the attack
var i = random_func(5, len, 1);
//Special condition of range of the attack (if the character moves for example)
if(attacke[i] == AT_DATTACK){
	distadd_x = 150;
	distadd_y = 0;
}
	
//Get information of the first hitbox of the attack in the array

//Special cases
switch(attacke[i]){
	default:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH);
		break;
	case 39:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + 3;
		break;
	case 40:
		var ai_bike_dist = point_distance(x, y, ai_target.x, ai_target.y);
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = 80 div 2;
		atkheight = 80 div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + (lengthdir_y(ai_bike_dist, 270)/ 9);
		break;
	case 43:
		var ai_bike_dist = point_distance(x, y, ai_target.x, ai_target.y);
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = 80 div 2;
		atkheight = 80 div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + (lengthdir_x(ai_bike_dist, 0)/ 16);
		break;
	case AT_DATTACK:
	case 3:
	case AT_NAIR:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + 1;
		break;
	case AT_DAIR:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = 6;
		break;
	case AT_USTRONG:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + 2;
		break;	
	case AT_FSTRONG_2:
	case AT_USTRONG_2:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + 5;
		break;
}

predictlocSimple(frame);
predictlocTarget(frame);
		
	//Long condition to set the boundaries of the attack (this always calcules the boundaries in rectangles for performance, if the hitbox is an ellipse it might not hit)
	//Test if the predicted location falls inside the boundaries/range
if (xtrag < new_x + xpos + atkwidth or xtrag - hurtboxWidth < new_x + xpos + atkwidth) and (xtrag > new_x + xpos - atkwidth or xtrag + hurtboxWidth > new_x + xpos - atkwidth){
	if (ypos + atkheight + new_y < ytrag or ypos - atkheight + new_y < ytrag) and (ypos + atkheight + new_y > ytrag - ai_target.char_height or ypos - atkheight + new_y > ytrag - ai_target.char_height){
		
		//Add the attack in range to a new array
		listAtk[j] = attacke[i];
		j++;
	}
}

var reroll = false;
len = array_length_1d(listAtk);
iterations = 0;

//Chooses from the new array based on a set of conditions randomly, test are done to reroll for a new attack if a condition is not met
if len != 0{
	while(!reroll and iterations < 5){
		
		iterations++;
		
		chosenAttack = listAtk[random_func(2, j, true)];
		
		//If there is only one attack do not reroll
		
		if(chosenAttack == AT_DATTACK){
			if attack == AT_DATTACK{
				if random_func(6, 100, true) < 95{
					chosenAttack = noone;
					reroll = false;
					break;
				}
			}
		}
		
		
		if(len == 1){
			reroll = false;
			break;
		}
		
		//Any other attack not testing do not reroll
		if !(chosenAttack == AT_JAB or chosenAttack == AT_FTILT){
			reroll = false;
			break;
		}
		
	}
	
}else{
	chosenAttack = noone;
}



#define resetPredict

current_prediction = 0;
current_prediction_target = 0;
stopped_at = -1;
stopped_at_target = -1;
// xtrag = ai_target.x;
// ytrag = ai_target.y;
// new_x = x;
// new_y = y;
// new_target_vsp = ai_target.vsp;
// new_vsp = vsp;
//print_debug(string(prediction_array))
prediction_array[@0][@ 0] = x;
prediction_array[@0][@ 1] = y;
prediction_array[@0][@ 2] = vsp;
prediction_array[@0][@ 3] = hsp;

prediction_array_target[@0][@ 0] = ai_target.x;
prediction_array_target[@0][@ 1] = ai_target.y;
prediction_array_target[@0][@ 2] = ai_target.vsp;
prediction_array_target[@0][@ 3] = ai_target.hsp;