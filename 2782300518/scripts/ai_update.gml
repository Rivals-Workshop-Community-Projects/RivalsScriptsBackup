with (ai_target) if ("char_height" not in self) exit; //prevents annoying error message

//DACUS
DACUSpercent = (2 - ai_target.knockback_adj) * 100;

if (get_training_cpu_action() != CPU_FIGHT && !ai_recovering) exit;
else if (state != PS_SPAWN)
{
	//Main AI code goes here.
   	//This code Checks the width of the hurtbox and calls the method
   	if (temp_level >= 7 && (ai_target.player != old_ai_target || target_init == true || hurtboxWidth = 0))
   	{
   	   	checkHurtboxWidth();
   	   	target_init = false;
   	}
   	//Variables updates and resets
    old_ai_target = ai_target.player;
    xdist = abs(ai_target.x - x);
    ydist = abs(y - ai_target.y);

    //valueReset
    if (temp_level >=7 && (state !=PS_ATTACK_AIR || state !=PS_ATTACK_GROUND) && !ai_recovering)
    {
	    resetPredict();
    }
    cancel_jab = false;
    cancel_ftilt = false;
    cancel_utilt = false;
    cancel_dtilt = false;
	facing = false;
	targetbusy = false;
	chasing = 0;
	camping = 0;
	debug = 0;
	do_not_attack = 0;
	targetdamage = get_player_damage( ai_target.player );
    var offstage = (x > room_width - stagex || x < stagex);
    var ai_target_offstage = (ai_target.x - hurtboxWidth > room_width - stagex || ai_target.x + hurtboxWidth < stagex);

	switch (state)
	{
		case PS_ATTACK_GROUND:
		case PS_ATTACK_AIR:
			attacking = true;
			if reaction_time == 0
			{
				reaction_time = -1;
			}
		break;
		//Wavedash towards opponent
		case PS_WAVELAND:
			attacking = false;
			if (temp_level >=7)
			{
				if chasing
				{
					if (x < ai_target.x)
					{
						left_down = false;
						right_down = true;
					} 	
					else 
					{
						left_down = true;
						right_down = false;
					}
			 	}
			}
		break;
		case PS_AIR_DODGE:
			attacking = false;
			//Start wavedashing
			if (temp_level >=7 && position_meeting(x, y+6, plat_asset))
			{
				if (chasing)
				{
					if (x < ai_target.x)
					{
						left_down = false;
						right_down = true;
						joy_pad_idle = false;
						joy_dir = 350;
					}
					else 
					{
						left_down = true;
						right_down = false;
						joy_pad_idle = false;
						joy_dir = 190;
					}
				}
				else
				{
					if (x > ai_target.x)
					{
						left_down = false;
						right_down = true;
						joy_pad_idle = false;
						joy_dir = 350;
					}
					else 
					{
						left_down = true;
						right_down = false;
						joy_pad_idle = false;
						joy_dir = 190;
					}
				}
				wavelanding = false;
			}
		break;
		case PS_PRATFALL:
			facestage();
		break;
		default:
			attacking = false;
			if (temp_level >=7 && position_meeting(x, y+2, plat_asset) && ai_target.y > y)
			{
				down_hard_pressed = true;	
			}
		break;
	}

	//------------------ Wait time
	//AI difficulty affects wait time, higher difficulties will see a more aggressive Carol   
	if(reaction_time == -1 && !attacking)
	{
		reaction_time = 42 - (temp_level * 3);
		ai_attack_time = 42 - (temp_level * 3);
	}
	if reaction_time > 0
	{
		reaction_time--;
	}

	switch (ai_target.state)
	{
		case PS_DEAD:
		case PS_RESPAWN:
			targetbusy = true;
			rangedtimer = 100;
		break;
		default:
		break;
	}

	//Carol's recovery is more unique that other characters, this code helps her recover
	if (ai_recovering)
	{
		do_not_attack = true;
		if (x<get_stage_data( SD_X_POS)) 
		{
			distX=get_stage_data( SD_X_POS)-x;
		} 
		else 
		{
			distX = x-(get_stage_data( SD_X_POS)+get_stage_data( SD_WIDTH));
		}
		up_down=false;
		facestage();
		special_down = (state == PS_ATTACK_AIR && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR));
		if (djumps == 1 && special_down == false && distX > 20)
		{
			special_down = true;
		}
		if (can_wall_jump && has_walljump && place_meeting(x + 80 * spr_dir, y - 40, asset_get("par_block")))
		{
			up_down = true;
			jump_down = true;
		}
		else if (can_wall_jump && has_walljump && place_meeting(x - 80 * spr_dir, y - 40, asset_get("par_block")))
		{
			facestage();
			up_down = true;
			jump_down = true;
		}
		else if (walljump_number == 5 && place_meeting(x + 80 * spr_dir, y, asset_get("par_block")))
		{
			jump_down = false;
			up_down = true;
		}
		switch (state)
		{
			case PS_WALL_JUMP:
				up_down = true;
				facestage();
				if( motorbike)
				{
					jump_down = true;
				}
			break;
			case PS_PRATFALL:
				if (has_walljump)
				{
					facestage();
					jump_pressed = true;
				}
			break;
			case PS_ATTACK_AIR:
				switch (attack)
				{
					case AT_FSPECIAL:
					case AT_FSPECIAL_AIR:
					{
						joy_dir = point_direction(x, y, get_stage_data( SD_X_POS), get_stage_data( SD_Y_POS));
					}
				}
			break;
		}
	}

	strongPercent = (2 - ai_target.knockback_adj) * 90;
	//Make Carol get on the bike if fuel hits 40 and the opponent is damaged a lot.
	if (fuel == 40 && !ai_recovering && motorbike == false && !free && !do_not_attack && targetdamage >= strongPercent)
	{
		var get_on_bike = random_func(10, 30, 1);
		if (get_on_bike < 2)
		{
			joy_pad_idle = false;
			down_down = true;
			special_pressed = true;
		}
	}

	if (!ai_recovering && motorbike == true && !free && !do_not_attack && targetdamage < strongPercent)
	{
		var get_off_bike = random_func_2(10, 30, 1);
		if (get_off_bike < 2)
		{
			joy_pad_idle = false;
			down_down = true;
			special_pressed = true;
		}
	}

	switch (attack)
	{
		//combo logic to ensure jabs go through
		case AT_JAB:
		case AT_FTILT:
		case AT_UTILT:
		case AT_DTILT:
			can_DACUS = false;
			if (!do_not_attack && temp_level < 7 && attacking)
			{
				if (window = 1 && window_timer == 1)
				{
					random_direction = random_func_2(9, 4, 1);
				}
				if (random_direction > 0)
				{
					//Strong Percent determiner
					strongPercent = (2 - ai_target.knockback_adj) * 90;
					if (targetdamage >= strongPercent && !ai_recovering && !offstage)
					{
						if (ydist <= 60)
						{
							clear_button_buffer( PC_ATTACK_PRESSED );
							clear_button_buffer( PC_JUMP_PRESSED );
					        joy_pad_idle = true;
					        left_down = false;
					        right_down = false;
	   				        up_down = true;
	   				        down_down = false;
	   				        special_pressed = false;
	   				        attack_pressed = false;
							up_strong_pressed = true;
						}
						else
						{
							if (xdist < 30 && !ai_target_offstage)
							{
								clear_button_buffer( PC_ATTACK_PRESSED );
								clear_button_buffer( PC_JUMP_PRESSED );
					        	joy_pad_idle = true;
					        	left_down = false;
					        	right_down = false;
	   				        	up_down = false;
	   				        	down_down = true;
	   				        	special_pressed = false;
	   				        	attack_pressed = false;
	   				        	down_strong_pressed = true;
							}
							else
							{
								clear_button_buffer( PC_ATTACK_PRESSED );
								clear_button_buffer( PC_JUMP_PRESSED );
					        	joy_pad_idle = true;

	   				        	up_down = false;
	   				        	down_down = false;
	   				        	special_pressed = false;
	   				        	attack_pressed = false;
				     			if x > ai_target.x
				     			{
									right_strong_pressed = true;
						 	  	} 
						 	  	else 
						 	  	{
									left_strong_pressed = true;
		    					}
							}
						}
					}
					else
					{
						if ((window == 3 || window == 6) && window_timer == 2 && has_hit_player)
						{
							switch (random_direction)
							{
								case 1:
									clear_button_buffer( PC_ATTACK_PRESSED );
									clear_button_buffer( PC_JUMP_PRESSED );
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
									random_direction = random_func_2(9, 4, 1);
								break;
								case 2:
									clear_button_buffer( PC_ATTACK_PRESSED );
									clear_button_buffer( PC_JUMP_PRESSED );
									joy_pad_idle = false;
									up_down = true;
									attack_pressed = true;
									random_direction = random_func_2(9, 4, 1);
								break;
								case 3:
									clear_button_buffer( PC_ATTACK_PRESSED );
									clear_button_buffer( PC_JUMP_PRESSED );
									joy_pad_idle = false;
									down_down = true;
									attack_pressed = true;
									random_direction = random_func_2(9, 4, 1);
								break;
								default:
									clear_button_buffer( PC_ATTACK_PRESSED );
									clear_button_buffer( PC_JUMP_PRESSED );
									joy_pad_idle = true;
									right_down = false;
									left_down = false;
									up_down = false;
									down_down = false;
									attack_pressed = true;
									random_direction = random_func_2(9, 4, 1);									
								break;
							}
						}
					}
				}
				else if (random_direction == 0)
				{
					if ((window == 3 || window == 6) && window_timer == 3 && has_hit_player)
					{
						joy_pad_idle = false;
						attack_pressed = true;
					}
				}
			}
			else if (!do_not_attack && temp_level >= 7)
			{
				if((attack == AT_JAB && window_timer == 2 && window = 3)
				||(attack == AT_JAB && window_timer == 2 && window = 6))
				{
					cancel_jab = true;
					can_attack = true;
				}
				else if((attack == AT_FTILT && window_timer == 2 && window = 3)
				||(attack == AT_FTILT && window_timer == 2 && window = 6))
				{
					cancel_ftilt = true;
					can_attack = true;
				}
				else if((attack == AT_UTILT && window_timer == 2 && window = 3)
				||(attack == AT_UTILT && window_timer == 2 && window = 6))
				{
					cancel_utilt = true;
					can_attack = true;
				}
				else if((attack == AT_DTILT && window_timer == 2 && window = 3)
				||(attack == AT_DTILT && window_timer == 2 && window = 6))
				{
					cancel_dtilt = true;
					can_attack = true;
				}
				else if ((window == 3 || window == 6) && window_timer == 3 && has_hit_player)
				{
					joy_pad_idle = false;
					attack_pressed = true;
				}
			}
			if (window > 6 && temp_level >=7 && has_hit && DACUSpercent < targetdamage && targetdamage < DACUSpercent * 1.30 
		    && !ai_recovering)
		    {
		    	switch (attack)
		    	{
		    		case AT_UTILT:
		    			can_DACUS = true;
		    		break;
		    		default:
		    			can_DACUS = false;
		    		break;
		    	}
		    }
		    else
		    {
		    	can_DACUS = false;
		    }
		break;
		case AT_NSPECIAL:
		case AT_NSPECIAL_2:
			can_DACUS = false;
			switch (state)
			{
				case PS_ATTACK_GROUND:
				case PS_ATTACK_AIR:
					if (has_hit_player && !ai_recovering && !offstage)
					{
						special_down = true;
					}
					else if (has_hit && (window == 2 && window_timer >= 79))
					{
						jump_down = true;
						attack_down = true;
					}
				break;
				default:
				break;
			}
		case AT_FSPECIAL_2:
			can_DACUS = false;
			if (offstage)
			{
				jump_pressed = true;
			}		
		break;
		case AT_DATTACK:
		case 3:
			if (temp_level >= 7 && !do_not_attack && !ai_recovering && !offstage && has_hit)
			{
				if (DACUSpercent < targetdamage && targetdamage < DACUSpercent * 1.30)
				{
					can_DACUS = true;
				}
				else
				{
					can_DACUS = false;
				}
				if (has_hit)
				{
					jump_pressed = true;
				}
				else if (window >= 3)
				{
					shield_down = true;
					if (temp_level >= 7 && !free)
					{
						let_parry = true;
					}
				}
			}
			if (attack_pressed)
			{
				cancel_dattack = true;
				can_attack = true;
			}
		break;
		case AT_DAIR:
			if (offstage && window_timer >=20)
			{
				attack_down = false;
				special_down = false;
				facestage();
				up_down = true;
				shield_pressed = true;
			}
			can_DACUS = false;
		break;
		case AT_TAUNT:
			can_DACUS = false;			
			if (attacking)
			{
				print_debug(state_timer)
				if (state_timer < 80)
				{
					taunt_down = true;
				}
				else
				{
					taunt_down = false;
					taunt_pressed = false;
					win_taunt = true;
				}
			}
		break;
		case AT_TAUNT_2:
		case AT_EXTRA_3:
			can_DACUS = false;
			if (attacking) win_taunt = true;
		break;
		default:
			can_DACUS = false;
		break;
	}

	if (temp_level >=7 && x >= stagex +16 && x <= (room_width - stagex) - 16 && !ai_recovering)
	{
		if(can_DACUS && !ai_recovering)
		{
    		faceopponent();
    		DACUS_timer++;
    		if (can_attack && !free)
    		{
   				switch (attack)
   				{
   					case AT_DTILT:
   					case AT_DTHROW:
						clear_button_buffer( PC_ATTACK_PRESSED );
						clear_button_buffer( PC_JUMP_PRESSED );
						if ai_target.x > x
						{
							right_hard_pressed = true;
						} 
						else 
						{
							left_hard_pressed = true;
						}
						joy_pad_idle = true;
						left_down = false;
						right_down = false;
						up_down = false;
						down_down = false;
						special_pressed = false;
						attack_pressed = true;
					break;
					default:
					break;
				}
			}
			switch (attack)
			{
				case AT_DATTACK:
				case 3:
					if ((window == 2 && window_timer < 2))
					{
						predictloc(12);
						predictlocTarget(12);
						hitboxloc("DACUS");
						win_taunt = false;
					}
					if (chosenAttack == AT_USTRONG) 
					{
						clear_button_buffer( PC_ATTACK_PRESSED );
						clear_button_buffer( PC_STRONG_PRESSED );
						clear_button_buffer( PC_UP_STRONG_PRESSED );
						joy_pad_idle = true;
						up_down = true;
						special_pressed = false;
						attack_pressed = false;
						up_strong_pressed = true;
					}
				break;
				case AT_USTRONG:
				case AT_USTRONG_2:
					DACUS_timer = 0;
					can_DACUS = false;	
				break;
				default:
				break;
			}
		}
	}

	switch (state)
	{
		case PS_DASH:
		case PS_DASH_START:
		case PS_DASH_STOP:
		case PS_DOUBLE_JUMP:
			if (!targetbusy && !do_not_attack)
			{
				chooseAttack();
			}
		break;
		default:
		if (can_attack && !targetbusy && !do_not_attack)
		{
			chooseAttack();
		}
		break;
	}

	//Code for using Nitro Boost on the bike
	if (!offstage && (x < 450 && ai_target.x > x && facing || x > 950 && ai_target.x < x) 
	&& move_cooldown [AT_FSPECIAL_2] == 0 && attack !=AT_FSPECIAL_2 && motorbike == true && !free)
	{
		if (temp_level >=7)
		{
			var frame = get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH);
			predictlocTarget(frame);
			ydist = abs(ytrag - y);
			if (((xtrag + 500 <= x) && xtrag + 500 >= x && ydist < 50))
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_JUMP_PRESSED);
				joy_pad_idle = true;
				up_down = false;
				faceopponent();
				down_down = false;
			    special_pressed = true;
			    attack_pressed = false;
			}
		}
		else if (ai_target.y == y && (ai_target.x >= stagex && ai_target.x <= (room_width - stagex))) 
		{
			if (spr_dir == 1)
			{
				right_down=true;
				left_down=false;
			}
			else
			{
				right_down=false;
				left_down=true;
			}
	    	special_pressed=true;
		}
	}
	
	//Taunt
	/*if (can_attack and attack != (AT_TAUNT) and targetbusy and !ai_recovering)
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
		
	if !targetbusy or state_cat = SC_HITSTUN 
	{
		if (motorbike = false)
		{
			taunt_down = false;
		}
		move_cooldown[AT_TAUNT] = 80 ;
	}*/

    //Reset ranged timer, this timer determines aggression.
    
    if (state_cat != SC_HITSTUN && state != PS_SPAWN)
    {
        rangedtimer -= 1;
    }
	   
	//This code makes your character face the opponent, pretty simple
    if ((ai_target.x < x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1))
    {
        facing = true;
    }
	if(state_cat == SC_GROUND_NEUTRAL && !facing)
    {
    	faceopponent();
    }
	    
    //Chase - Agression
	if (((0 > rangedtimer) && (!ai_recovering && inactive > 20)) && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) 
	&& state_cat != SC_HITSTUN && !ai_target_offstage && !offstage && !can_DACUS && xdist > 100 && !ai_attack_time > 0)
	{
    	if (ai_target.x > x)
    	{
    		right_hard_pressed = true;
    		if (!ai_recovering)
    		{
	    		special_down = false;
		     	special_pressed = false;
    		}
    		switch (state)
    		{
    			case PS_DASH:
					right_down = true;
    			break;
    			default:
    			break;
    		}
    	} 
    	else 
    	{
    		if (!ai_recovering)
    		{
	    		special_down = false;
		     	special_pressed = false;
    		}
        	left_hard_pressed = true;
    		switch (state)
    		{
    			case PS_DASH:
					left_down = true;
    			break;
    			default:
    			break;
    		}
    	}
    	if (free && djumps == 0)
    	{
    		jump_pressed = true;
    	}
    	chasing = 1
	}
	
	//Chase - Combos
	if(ai_target.state_cat == SC_HITSTUN && state != PS_PRATFALL && state_cat != SC_HITSTUN 
	&& !((attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL_2 || attack == AT_FSPECIAL_2)
	&& state == PS_ATTACK_AIR) && !ai_target_offstage && !offstage && !can_DACUS && !ai_recovering && !ai_attack_time > 0)
	{
		if ai_target.x > x
		{
    	    right_hard_pressed = true;
    		switch (state)
    		{
    			case PS_DASH:
					right_down = true;
    			break;
    			default:
    			break;
    		}
    	} 
    	else 
    	{
    		left_hard_pressed = true;
	   		switch (state)
    		{
    			case PS_DASH:
					left_down = true;
    			break;
    			default:
    			break;
    		}
    	}
    	if (free && djumps == 0)
    	{
    		jump_pressed = true;
    	}
	    chasing = 1;
	}
    
    //Parry Projectiles
    with (asset_get("pHitBox"))
    {
		if player != other.player && type == 2 && (other.state_cat == SC_GROUND_NEUTRAL || other.state_cat == SC_AIR_NEUTRAL)
		{
    		if (position_meeting(x + (10 * hsp), y + (10 * vsp), other) && !other.ai_recovering)
    		{
    			other.shield_pressed = true;
	   			if !other.free
	   			{
	   				other.let_parry = true;
	   			}
    		}
		}
    }
    //Allows Parry to carry through
    if(let_parry)
    {
    	switch (state)
    	{
    		case PS_PARRY_START:
		    	joy_pad_idle = true;
		    	left_down = false;
				right_down = false;
	    		let_parry = false;
    		break;
    		default:
    		break;
    	}
    }
    //Prevento from attacking if should wait and target is invincible
    if(ai_attack_time > 0 || ai_target.invince_time > 10)
    {
		do_not_attack = true;
		ready_to_attack = false;
	}

    //----------------------------------------------------
	//Combos logic
	//----------------------------------------------------


	// //Shorthop combos
	if ai_target.y < y-60 && can_jump && ai_target.state_cat == SC_HITSTUN && state_cat == SC_GROUND_NEUTRAL
	{
    	 jump_pressed = true;
   	}
   
	if(free && has_hit && state == PS_ATTACK_AIR && !offstage)
	{
		if ((y > stagey - char_height && y < stagey) || collision_point(x, y+char_height, plat_asset, false, true))
		{
			down_hard_pressed = true;
		}
	}

	if (temp_level >=7)
	{
		if (xdist > 200 && ai_target_offstage)
		{
   			jump_down = false;	
   		}
    }
	
	if (can_special && !targetbusy && !ai_attack_time > 0 && temp_level >= 7)
    {
    	hitboxloc("specials");
    	win_taunt = false;
		switch (chosenAttack)
		{
			case AT_NSPECIAL:
			case AT_NSPECIAL_2:
			if ((move_cooldown[AT_NSPECIAL] == 0 && motorbike == false) || (move_cooldown[AT_NSPECIAL_2] = 0 && motorbike == true))
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_JUMP_PRESSED);
				joy_pad_idle = true;
				up_down = false;
				left_down = false;
				right_down = false;
				down_down = false;
			    special_pressed = true;
			    special_down = true;
			    attack_pressed = false;
			}
			break;
			case AT_USPECIAL:
			case AT_USPECIAL_2:
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_JUMP_PRESSED);
				joy_pad_idle = true;
				up_down = true;
				left_down = false;
				right_down = false;
				down_down = false;
			    special_pressed = true;
			    special_down = true;
			    attack_pressed = false;
			break;
			case AT_FSPECIAL:
			case AT_FSPECIAL_AIR:
				if (facing && !offstage && move_cooldown[AT_FSPECIAL] != 0)
				{
					if (ydist <= lengthdir_y(point_distance(x, y, xtrag, ytrag), point_direction(x, y, xtrag, ytrag))
					&& xdist <=  lengthdir_x(point_distance(x, y, xtrag, ytrag), point_direction(x, y, xtrag, ytrag)))
					{
						clear_button_buffer(PC_ATTACK_PRESSED);
						clear_button_buffer(PC_JUMP_PRESSED);
						joy_pad_idle = true;
						faceopponent();
						if (motorbike = true && free)
						{
							up_down = false;
							down_down = false;
							special_pressed = true;
							attack_pressed = false;				
						}
						else if (motorbike == false)
						{
							up_down = false;
							down_down = false;
							special_pressed = true;
							attack_pressed = false;
						}
						switch (state)
						{
							case PS_ATTACK_GROUND:
							case PS_ATTACK_AIR:
							{
								special_pressed = false;
								joy_dir = point_direction(x, y, xtrag, ytrag);
								if (x < 450 && ai_target.x > x && facing|| x > 950 && ai_target.x < x && window = 3)
								{
									if (bike_stored && target_damage >= strongPercent)
									{
										shield_down = true;
									}
									else
									{
										special_down = true;
									}
								}
							}
						}
					}
				}
			break;
		}
	}
	//Make Carol chase opponent
	if (get_training_cpu_action() == CPU_EVADE)
	{
		chasing = true;
		
	}
	if (ai_target = self && !ai_recovering && !free && state != PS_ATTACK_GROUND)
	{
		joy_pad_idle = true;
		unpress_actions();
		if (win_taunt = false)
		{
			down_down = false;
			taunt_down = true;
			if (motorbike) taunt_pressed = true;
		}
	}
	if (ai_target = self && !ai_recovering && win_taunt = true)
	{
		unpress_actions();
	}
}

#define chooseAttack

var offstage = (x > room_width - stagex || x < stagex);
var ai_target_offstage = (ai_target.x - hurtboxWidth > room_width - stagex || ai_target.x + hurtboxWidth < stagex);

if (!free)
{
	//Strong Percent determiner
	strongPercent = (2 - ai_target.knockback_adj) * 90 < targetdamage;
	if (can_strong && ((ai_target.state_cat == SC_HITSTUN && strongPercent) 
	|| ai_target_offstage ||ai_target.state == PS_PRATLAND) && !ai_recovering)
	{
		if (temp_level < 7)
		{
			joy_pad_idle = false;
			attack_down = false;
			if (!ai_recovering)
			{
				special_down = false;
			}
			if (!do_not_attack)
			{
				if (ydist > 30)
				{
					up_strong_pressed = true
				}
				else
				{
					if (x <ai_target.x)
					{
						if (facing)
						{
							right_strong_pressed = true;
						}
						else
						{
							down_strong_pressed = true;
						}
					}
					else
					{
						if (facing)
						{
							left_strong_pressed = true;
						}
						else
						{
							down_strong_pressed = true;
						}					
					}
				}
			}
		}
		else
		{
			//Call the hitbox selection function, it stores the value in chosenAttack
			hitboxloc("strongs");
			win_taunt = false;
			switch (chosenAttack)
			{
				//UStrong
				case AT_USTRONG:
				case AT_USTRONG_2:
					clear_button_buffer( PC_ATTACK_PRESSED );
					joy_pad_idle = true;
					up_down = false;
					down_down = false;
					left_down = false;
					right_down = false;
					special_pressed = false;
					attack_pressed = false;
					up_strong_pressed = true;
				break;
				//FStrong
				case AT_FSTRONG:
				case AT_FSTRONG_2:
					clear_button_buffer( PC_ATTACK_PRESSED );
					joy_pad_idle = true;
					up_down = false;
					down_down = false;
					left_down = false;
					right_down = false;
					special_pressed = false;
					attack_pressed = false;
					if x > ai_target.x
					{
						left_strong_pressed = true;
					} 
					else 
					{
						right_strong_pressed = true;
					}
				break;
				//DStrong
				case AT_DSTRONG:
				case AT_DSTRONG_2:
					clear_button_buffer( PC_ATTACK_PRESSED );
					joy_pad_idle = true;
					up_down = false;
					down_down = false;
					left_down = false;
					right_down = false;
					special_pressed = false;
					attack_pressed = false;
					down_strong_pressed = true;
				break;
				case AT_USPECIAL:
				case AT_USPECIAL_2:
					if (can_special)
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
	if (temp_level >=7)
	{
		hitboxloc("tilts"); //Project all attacks and returns which is in range and it is based on a set of conditions or random otherwise
		win_taunt = false;
		switch (chosenAttack)
		{
			//Dattack
			case AT_DATTACK:
			case 3:
				clear_button_buffer( PC_ATTACK_PRESSED );
				if ai_target.x > x
				{
					right_hard_pressed = true;
				} 
				else 
				{
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
			break;
			//Jab
			case AT_JAB:
			case AT_NTHROW:
				clear_button_buffer( PC_ATTACK_PRESSED );
				joy_pad_idle = true;
				left_down = false;
				right_down = false;
				up_down = false;
				down_down = false;
				special_pressed = false;
				attack_pressed = true;
				rangedtimer = 300;
			break;
			//FTilt
			case AT_FTILT:
			case AT_FTHROW:
				clear_button_buffer( PC_ATTACK_PRESSED );
				joy_pad_idle = true;
				if x > ai_target.x
				{
					left_down = true;
					right_down = false;
				}
				else
				{
					left_down = false;
					right_down = true;
				}
				up_down = false;
				down_down = false;
				special_pressed = false;
				attack_pressed = true;
				rangedtimer = 300;
			break;
			//Utilt
			case AT_UTILT:
			case AT_UTHROW:
				clear_button_buffer( PC_ATTACK_PRESSED );
				joy_pad_idle = true;
				left_down = false;
				right_down = false;
				up_down = true;
				down_down = false;
				special_pressed = false;
				attack_pressed = true;
				rangedtimer = 300;
			break;
			//DTilt
			case AT_DTILT:
			case AT_DTHROW:
				clear_button_buffer( PC_ATTACK_PRESSED );
				joy_pad_idle = true;
				left_down = false;
				right_down = false;
				up_down = false;
				down_down = true;
				special_pressed = false;
				attack_pressed = true;
				rangedtimer = 300;
			break;
			//Up Special
			case AT_USPECIAL:
			case AT_USPECIAL_2:
				if (can_special)
				{
					clear_button_buffer( PC_ATTACK_PRESSED );
					joy_pad_idle = false;
					up_down = true;
					down_down = false;
					left_down = false;
					right_down = false;
					special_pressed = true;
					attack_pressed = false;
					rangedtimer = 300;
				}
			break;
			case AT_NSPECIAL:
			case AT_NSPECIAL_2:
			if (can_special)
				{
					clear_button_buffer( PC_ATTACK_PRESSED );
					joy_pad_idle = false;
					up_down = false;
					down_down = false;
					left_down = false;
					right_down = false;
					special_pressed = true;
					attack_pressed = false;
					rangedtimer = 300;
	   			}
			default:
			break;
       	}
	}
}
//Aerials    
else if (temp_level >=7)
{
	hitboxloc("aerials");
	win_taunt = false;
   	switch (chosenAttack)
   	{
   		case AT_DAIR:
       	case 40:
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = false;
			down_down = true;
			special_pressed = false;
			attack_pressed = true;
		break;
	    case AT_NAIR:
		case 44:
			clear_button_buffer( PC_ATTACK_PRESSED );
   			joy_pad_idle = true;
   			left_down = false;
   			right_down = false;
    		up_down = false;
	    	down_down = false;
  	       	special_pressed = false;
	       	attack_pressed = true;
   		break;
   		case AT_UAIR:
		case 42:
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = true;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
		break;
		case AT_FAIR:
		case 43:
        	clear_button_buffer( PC_ATTACK_PRESSED );
	       	joy_pad_idle = true;
  	       	if (ai_target.x < x)
  	       	{
  	           	left_down = true;
  	           	right_down = false;
  	       	} 
  	       	else 
	       	{
				left_down = false;
				right_down = true;
			}
			up_down = false;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
   		break;
   		case AT_BAIR:
   		case 39:
           	clear_button_buffer( PC_ATTACK_PRESSED );
       		joy_pad_idle = true;
    		if (ai_target.x < x)
    		{
        		left_down = true;
       			right_down = false;
       		}
       		else 
       		{
           		left_down = false;
        		right_down = true;
       		}
   			up_down = false;
   			down_down = false;
      		special_pressed = false;
       		attack_pressed = true;
   		break;
   		case AT_USPECIAL:
   		case AT_USPECIAL_2:
   		    if (can_special)
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
		default:
		break;
   	}
}

#define predictloc

fprediction = argument[0];

if(!free && hsp == 0)
{
	new_x = prediction_array[@0][@ 0];
	new_y = prediction_array[@0][@ 1];
	return;
}

if (fprediction >= stopped_at && stopped_at != -1)
{
	xtrag = prediction_array[@stopped_at - 1][@ 0];
	ytrag = prediction_array[@stopped_at - 1][@ 1];
	return;
}
//print_debug("hi")
var plat = 0;
var stage = 0;

var new_x_c = 0;
var new_y_c = 0;
var new_vsp = 0;
var new_hsp = 0;

if (fprediction > current_prediction)
{
	var t = current_prediction;
	var f = fprediction - current_prediction;
	repeat(f)
	{
		if (fps_real < 40) break;
		var collide = false;
		//Get values from current loop
		new_x_c = prediction_array[@current_prediction][@ 0];
		new_y_c = prediction_array[@current_prediction][@ 1];
		new_vsp = prediction_array[@current_prediction][@ 2];
		new_hsp = prediction_array[@current_prediction][@ 3];
		current_prediction++;
		//print_debug(string(fprediction) + " " + string(current_prediction) + " " + string(stopped_at));
		var project_y = new_vsp + grav;
		
		if project_y > max_fall
		{
			project_y = max_fall;
		}
		if fast_falling
		{
			if project_y > fast_fall
			{
				project_y = fast_fall;
			}
		}
		
		stage = position_meeting(new_x_c, new_y_c + project_y, solid_asset);
		plat = position_meeting(new_x_c, new_y_c + project_y, plat_asset);
		if (stage || (plat && project_y > 0))
		{
			new_vsp = 0;
			collide = true;
		}
		else
		{
			new_vsp = project_y;
			new_y_c += new_vsp;
		}
		
		//X manipulation, apply friction, if it would change polarity it makes it equal to 0. 
		if (new_vsp == 0 && collide)
		{
			if (new_hsp > 0)
			{
				var project_x = new_hsp - ground_friction;
				//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
				if (project_x < 0)
				{
					project_x = 0;
					new_x = prediction_array[@current_prediction - 1][@ 0];
					new_y = prediction_array[@current_prediction - 1][@ 1];
					stopped_at = current_prediction;
					return;
				}
			}
			else
			{
				var project_x = new_hsp + ground_friction;
				if (project_x > 0)
				{
					//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
					project_x = 0;
					new_x = prediction_array[@current_prediction - 1][@ 0];
					new_y = prediction_array[@current_prediction - 1][@ 1];
					stopped_at = current_prediction;
					return;
				}
			}
		}
		else
		{
			//In the air, if it would change polarity it makes it equal to 0. 
			if (new_hsp > 0)
			{
				var project_x = new_hsp - air_frict;
				if (project_x < 0)
				{
					project_x = 0;
				}
			}
			else if (new_hsp < 0)
			{
				var project_x = new_hsp + air_frict;
				if project_x > 0
				{
					project_x = 0;
				}
			}
		}
		
		//Test to see if X manipualtion makes it collide with walls
		stage = position_meeting(new_x_c + project_x, new_y_c - 2, solid_asset);
		plat = position_meeting(new_x_c + project_x, new_y_c - 2, plat_asset);
		if (stage || plat)
		{
			new_hsp = 0;
			
		}
		else
		{
			new_hsp = project_x;
			new_x_c = new_x_c + new_hsp;
		}
		
		//Store values in the array
		prediction_array[@current_prediction][@ 0] = new_x_c;
		prediction_array[@current_prediction][@ 1] = new_y_c;
		prediction_array[@current_prediction][@ 2] = new_vsp;
		prediction_array[@current_prediction][@ 3] = new_hsp;
	
		
		new_x = prediction_array[@fprediction][@ 0];
		new_y = prediction_array[@fprediction][@ 1];
		t++;
	}
}
else
{
	new_x = prediction_array[@fprediction][@ 0];
	new_y = prediction_array[@fprediction][@ 1];
	//print_debug("frame:" + string(fprediction) + " new_x:" + string(new_x) + " new_y:" + string(new_y) + " new_vsp:" + string(prediction_array[fprediction][@ 2]) + " new_hsp:" + string(prediction_array[fprediction][@ 3]));
}

#define predictlocTarget

//Code originally written by PJ, many of these comments are his

fprediction = argument[0];

if(!ai_target.free && ai_target.hsp == 0)
{
	xtrag = prediction_array_target[@0][@ 0];
	ytrag = prediction_array_target[@0][@ 1];
	return;
}

if (fprediction >= stopped_at_target && stopped_at_target != -1)
{
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

if (fprediction > current_prediction_target)
{
	var c = current_prediction_target;
	var o = fprediction - current_prediction_target;
	//for (var i = current_prediction_target; i < fprediction; i++)
	repeat(o)
	{
		if (fps_real < 40) break; //Stops the game lagging so much due to prediction logic
		var collide = false;
		new_x_c = prediction_array_target[@current_prediction_target][@ 0];
		new_y_c = prediction_array_target[@current_prediction_target][@ 1];
		new_vsp = prediction_array_target[@current_prediction_target][@ 2];
		new_hsp = prediction_array_target[@current_prediction_target][@ 3];
		current_prediction_target++;
	
		var project_y = new_vsp + grav;
		
		if (project_y > ai_target.max_fall)
		{
			project_y = ai_target.max_fall;
		}
		if ai_target.fast_falling
		{
			if (project_y > ai_target.fast_fall)
			{
				project_y = ai_target.fast_fall;
			}
		}
		
		stage = position_meeting(new_x_c, new_y_c + project_y, solid_asset);
		plat = position_meeting(new_x_c, new_y_c + project_y, plat_asset);
		if stage || (plat && project_y > 0)
		{
			new_vsp = 0;
			collide = true;
		}
		else
		{
			new_vsp = project_y;
			new_y_c += new_vsp;
		}
		
		//X manipulation, apply friction, if it would change polarity it makes it equal to 0. 
		if (new_vsp == 0 && collide)
		{
			if (new_hsp > 0)
			{
				var project_x = new_hsp - ai_target.ground_friction;
				if (project_x < 0)
				{
					project_x = 0;
					//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
					xtrag = prediction_array_target[@current_prediction_target - 1][@ 0];
					ytrag = prediction_array_target[@current_prediction_target - 1][@ 1];
					stopped_at_target = current_prediction_target;
					return;
				}
			}
			else
			{
				var project_x = new_hsp + ai_target.ground_friction;
				if (project_x > 0)
				{
					project_x = 0;
					//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
					xtrag = prediction_array_target[@current_prediction_target - 1][@ 0];
					ytrag = prediction_array_target[@current_prediction_target - 1][@ 1];
					stopped_at_target = current_prediction_target;
					return;
				}
			}
		}
		else
		{
			//In the air, if it would change polarity it makes it equal to 0. 
			if (new_hsp > 0)
			{
				var project_x = new_hsp - ai_target.air_frict;
				if (project_x < 0)
				{
					project_x = 0;
				}
			}
			else if new_hsp < 0
			{
				var project_x = new_hsp + ai_target.air_frict;
				if (project_x > 0)
				{
					project_x = 0;
				}
			}
			
		}
		
		//Test to see if X manipualtion makes it collide with walls
		stage = position_meeting(new_x_c + project_x, new_y_c - 2, solid_asset);
		plat = position_meeting(new_x_c + project_x, new_y_c - 2, plat_asset);
		if (stage || plat)
		{
			new_hsp = 0;
			
		}
		else
		{
			new_hsp = project_x;
			new_x_c = new_x_c + new_hsp;
		}
		//Store values in the array
		prediction_array_target[@current_prediction_target][@ 0] = new_x_c;
		prediction_array_target[@current_prediction_target][@ 1] = new_y_c;
		prediction_array_target[@current_prediction_target][@ 2] = new_vsp;
		prediction_array_target[@current_prediction_target][@ 3] = new_hsp;
		c++;
	}
	xtrag = prediction_array_target[@fprediction][@ 0];
	ytrag = prediction_array_target[@fprediction][@ 1];
	
}
else
{
	xtrag = prediction_array_target[@fprediction][@ 0];
	ytrag = prediction_array_target[@fprediction][@ 1];
}

#define checkHurtboxWidth

hurtboxWidth = ai_target.bbox_right - ai_target.x;

#define hitboxloc

if (motorbike == true)
{
	switch(argument[0])
	{
		case "tilts":
			var attacke = [AT_NTHROW, AT_FTHROW, AT_UTHROW, AT_DTHROW, 3, AT_USPECIAL_2, AT_NSPECIAL_2];
		break;
		case "aerials":
			var attacke = [44, 43, 42, AT_EXTRA_1, 39, AT_USPECIAL_2];
		break;
		case "strongs":
			var attacke = [AT_DSTRONG_2, AT_USTRONG_2, AT_FSTRONG_2];
		break;
		case "specials":
			var attacke = [AT_NSPECIAL_2, AT_USPECIAL_2, AT_FSPECIAL_AIR, AT_DSPECIAL_AIR];
		break;
		case "DACUS":
		var attacke = [AT_USTRONG_2];
		break;
	}
}
else
{
	switch(argument[0])
	{
		case "tilts":
			var attacke = [AT_JAB, AT_DTILT, AT_FTILT, AT_UTILT, AT_DATTACK, AT_USPECIAL, AT_NSPECIAL];
		break;
		case "aerials":
			var attacke = [AT_NAIR, AT_DAIR, AT_FAIR, AT_UAIR, AT_BAIR, AT_USPECIAL];
		break;
		case "strongs":
			var attacke = [AT_DSTRONG, AT_USTRONG, AT_FSTRONG];
		break;
		case "specials":
			var attacke = [AT_NSPECIAL, AT_USPECIAL, AT_FSPECIAL];
		break;
		case "DACUS":
		var attacke = [AT_USTRONG];
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
switch attacke[i]
{
	case AT_DATTACK:
	case 3:
		distadd_x = 150;
		distadd_y = 0;
	break;
	case AT_FTILT:
	case AT_FTHROW:
		distadd_x = 20;
		distadd_y = 0;
	break;
	case AT_USPECIAL_2:
		distadd_x = 0;
		distadd_y = 150;
	break;
	case AT_DAIR:
		distadd_x = 0;
		distadd_y = stagey - y;
	break;
	default:
	break;
}

if (motorbike == true)
{
	switch (attacke[i])
	{
		case AT_NTHROW:
		case AT_FTHROW:
		case AT_UTHROW:
		case AT_DTHROW:
		case AT_USTRONG_2:	
		case AT_FSTRONG_2:
		case AT_DSTRONG_2:
			if (bike_sp == dash_speed)
			{
				distadd_x = distadd_x + 150;
			}
			else if (bike_sp == walk_speed)
			{
				distadd_x = distadd_x + 75;
			}
			else
			{
				distadd_x = distadd_x;
			}
		break;
		default:
		break;
	}
}

//Get information of the first hitbox of the attack in the array

//Special cases
switch(attacke[i])
{
	default:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH);
	break;
	case AT_DSPECIAL_AIR:
		var ai_bike_dist = point_distance(x, y, ai_target.x, ai_target.y);
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y + (lengthdir_y(ai_bike_dist, 270)/ 9);
		atkwidth = 80 div 2;
		atkheight = 80 div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH);
	break;
	case AT_NAIR:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + 1;
		break;
	case AT_USTRONG:
	case AT_FSTRONG:
	case AT_DSTRONG:
	case AT_USTRONG_2:
	case AT_FSTRONG_2:
	case AT_DSTRONG_2:
		xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
		ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
		atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
		atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
		//Calculate when the hitbox will come out
		var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + get_window_value(attacke[i], 2, AG_WINDOW_LENGTH) + get_window_value(attacke[i], 3, AG_WINDOW_LENGTH);
	break;
}

predictloc(frame);
predictlocTarget(frame);
		
//Long condition to set the boundaries of the attack (this always calcules the boundaries in rectangles for performance, if the hitbox is an ellipse it might not hit)
//Test if the predicted location falls inside the boundaries/range
if (xtrag < new_x + xpos + atkwidth || xtrag - hurtboxWidth < new_x + xpos + atkwidth) && (xtrag > new_x + xpos - atkwidth || xtrag + hurtboxWidth > new_x + xpos - atkwidth)
{
	if (ypos + atkheight + new_y < ytrag || ypos - atkheight + new_y < ytrag) && (ypos + atkheight + new_y > ytrag - ai_target.char_height || ypos - atkheight + new_y > ytrag - ai_target.char_height)
	{
		//Add the attack in range to a new array
		listAtk[j] = attacke[i];
		j++;
	}
}

var reroll = false;
len = array_length_1d(listAtk);
iterations = 0;

//Chooses from the new array based on a set of conditions randomly, test are done to reroll for a new attack if a condition is not met
if len != 0
{
	while(!reroll && iterations < 5)
	{
		
		iterations++;
		
		chosenAttack = listAtk[random_func(2, j, true)];
		
		//If there is only one attack do not reroll
		
		switch (chosenAttack)
		{
			case AT_DATTACK:
			case 3:
				switch (attack)
				{
					case AT_DATTACK:
					case 3:
						if random_func(6, 100, true) < 95
						{
							chosenAttack = noone;
							reroll = false;
							break;
						}
					break;
					default:
					break;
				}

			break;
			case AT_JAB:
				if (cancel_jab)
				{
					reroll = true;
				}
			break;
			case AT_FTILT:
				if (cancel_ftilt)
				{
					reroll = true;
				}
			break;
			case AT_UTILT:
				if (cancel_utilt)
				{
					reroll = true;
				}
			break;
			case AT_DTILT:
				if (cancel_dtilt)
				{
					reroll = true;
				}
			break;
			default:
			break;
		}
		
		if(len == 1)
		{
			reroll = false;
			break;
		}
		
		//Any other attack not testing do not reroll
		if !(chosenAttack == AT_JAB || chosenAttack == AT_FTILT || chosenAttack == AT_UTILT || chosenAttack == AT_DTILT)
		{
			reroll = false;
			break;
		}
	}
	
}
else
{
	chosenAttack = noone;
}

#define faceopponent
if (x > ai_target.x)
{
	if (!ai_recovering)
	{
		left_down = true;
	    right_down = false;
	}
}
else
{
	if (!ai_recovering)
	{
		left_down = false;
	    right_down = true;
	}
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

#define facestage
if (x > room_width / 2)
{
    left_down = true;
    right_down = false;
} 
else
{
    left_down = false;
    right_down = true;
}

#define unpress_actions
	attack_down = false
	attack_pressed = false
	special_down = false
	special_pressed = false
	
	strong_down_pressed = false
	strong_down_down = false
	up_strong_pressed = false
	up_strong_down = false
	left_strong_pressed = false
	left_strong_down = false
	right_strong_pressed = false
	right_strong_down = false
	down_strong_pressed = false
	down_strong_down = false

	parry_pressed = false
	parry_down = false
	shield_pressed = false
	shield_down = false
	
	taunt_down = false;
	taunt_pressed = false;