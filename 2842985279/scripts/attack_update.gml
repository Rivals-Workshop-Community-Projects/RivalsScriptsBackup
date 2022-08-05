
//special diagonal input leniency
if (unown_diagonal_leniency)
{
	unown_diagonal_leniency--;
	do_diagonal_leniency();
}

//reset flag: set to TRUE explicitly in the attack
lev_bypass = false;
can_fast_fall = true;

// per-attack logic
switch(attack)
{
	//===========================
    case 1: //A
	{
        can_move = true
        can_fast_fall = !(window >= 2);

        if (window == 1 && window_timer == 1)
		{
            if (unown_a_used)
            {
                set_window_value(attack, 2, AG_WINDOW_VSPEED, 0);
                set_window_value(attack, 2, AG_WINDOW_VSPEED_TYPE, 0);
            }
            else 
            {
                reset_window_value(attack, 2, AG_WINDOW_VSPEED);
                reset_window_value(attack, 2, AG_WINDOW_VSPEED_TYPE);
            }
		}
		else if (window == 2 && window_timer == 1 && !hitpause) 
        {
            if (vsp > 0) vsp = 0;
            unown_a_used = true;
        }
	} break;
	//===========================
	case 9: //I
	{
		can_move = true
		can_fast_fall = !(window == 2 || window == 3);
		
		if (window == 1 && window_timer == 1)
		{
			unown_i_angle = 90;
		}
		else if (window <= 2)
		{
			
			if (window == 1 && (!special_down && !attack_down && !strong_down) 
			&& 	window_timer > get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME))
			{
			    window = 2;
			    window_timer = 0;
			}
			else if (window == 2 
		    && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		    {
		     	//reposition hitboxes
		     	unown_i_angle = (360 + unown_i_angle) % 180;
		     	
		     	var unit_distance = get_hitbox_value(attack, 0, HG_HITBOX_X);
		     	var unit_x = lengthdir_x(unit_distance, unown_i_angle);
		     	var unit_y = lengthdir_y(unit_distance, unown_i_angle);
		     	
		     	for (var i = 1; i <= get_num_hitboxes(attack); i++)
		     	{
				    var mult_dist = (i % 2 == 0 ? 1 : -1) * floor((i+1)/2);
				    set_hitbox_value(attack, i, HG_HITBOX_X, mult_dist * unit_x);
				    set_hitbox_value(attack, i, HG_HITBOX_Y, -unown_eye_center_offset + mult_dist * unit_y);
		     	}
		    }
			else if (!joy_pad_idle)
			{
				var lerp_strength = (window = 1 ? 0.35 : 0.07);
				unown_i_angle = round(lerp(unown_i_angle, joy_dir, lerp_strength));
			}
		}
		else if (window == 4 && window_timer > 5)
		{
			unown_i_angle = round(lerp(unown_i_angle, 90, 0.15));
		}
	} break;
	//===========================
	case AT_DSPECIAL_2: //J (not 10, all because of DAN)
	{
		can_move = false
		if (window == 1)
		{
			unown_j_victim = noone;
		}
        else if (window == 4)
		{
			vsp *= 0.1; hsp *= 0.1;
			lev_bypass = true;
			can_fast_fall = false;
			
			if (instance_exists(unown_j_victim))
			{
				//keep in hitpause
				unown_j_victim.hitstop++;
				
				//lerp towards target pos
				var array_index = min(array_length(unown_j_positions) - 1, window_timer);
				unown_j_victim.x = 
				   lerp(unown_j_victim.x, x + unown_j_positions[array_index].x, 0.35);
				unown_j_victim.y =
				   lerp(unown_j_victim.y, y + unown_j_positions[array_index].y 
				                            + (unown_j_victim.char_height/2), 0.35);
			}
			else { unown_j_victim = noone; }
		}
		
	} break;
	//===========================
	case 12: //L	
		can_move = true
	break;
	//===========================
    case 14: //N
    {
        lev_bypass = (window == 2 || window == 4);
        super_armor = (window == 2);
        
        if !(window == 3 || window == 5)
        {
        	can_move = false;
        	can_fast_fall = false;
	        //Dampen momentum
	        hsp *= 0.85;
	        vsp *= 0.85;
        }
        
        if (window == 2)
        {
			user_event(2); //Counter logic is in there
			move_cooldown[UNOWN_ATK.N] = unown_n_cooldown;
        }
    }break;
	//===========================
    case 20: //T
    {
        can_fast_fall = false;
        can_move = true
        if (window == 1 && window_timer <= 1)
        {
            unown_t_times_through = 0;
            set_window_value(attack, 4, AG_WINDOW_TYPE, 0); //no pratfall
        }

        if (window == 3)
        {
            unown_t_used = true;
            if (special_down || attack_down || strong_down || (up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed))
            {
                //VSP boost
                vsp -= (up_down && vsp > -4) ? 0.8 : ((vsp > 0) ? 0.5 : 0.2);

                if (unown_t_times_max > unown_t_times_through)
                && (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))
                {
                    window_timer = 0;
                    unown_t_times_through++;
                    attack_end();
                    reset_window_value(attack, 4, AG_WINDOW_TYPE); //pratfall
                }
            }
        } 
        if window == 4 {
        	clear_button_buffer(PC_UP_STRONG_PRESSED)
			clear_button_buffer(strong_down)
			clear_button_buffer(special_down)
			clear_button_buffer(attack_down)
        }
    }break;
	//===========================
    case 21: //U
    {
		can_fast_fall = !unown_u_bounced;
        if (window == 1 && window_timer <= 1)
        {
            unown_u_bounced = false;
        }
        else if (!unown_u_bounced && has_hit && !hitpause)
        {
        	unown_u_bounced = true;
        	vsp = min(-5, vsp -3);
        }
    }break;
	//======================================================
    case AT_TAUNT: //Hidden Power
    {
    	if (window == 1 && window_timer == 1)
    	{
    		if (unown_best_word_length > 1)
    		{
				move_cooldown[AT_TAUNT] = 60;
    			//vfx
    			inward_hidden_power_timer = inward_hidden_power_timer_max;
            	inward_hidden_power_fast = true;
            	
            	//calculate damage boost
            	var bonus = unown_current_bonus;
            	
            	//setup hitboxes
            	var hb_size = floor(min(200, bonus * 100 + 60));
            	hidden_power_strength_vfx = (hb_size > 180 ? 3 : (hb_size > 100 ? 2 : 1));
                set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, hb_size);
                set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, hb_size);
                set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, max(hb_size - 80, 0));
                set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, max(hb_size - 80, 0));
    			set_num_hitboxes(attack, hb_size > 80 ? 2 : 1);
    			
    			var hb_damage = floor(bonus * 17);
                set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, hb_damage);
                set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, hb_damage + 6); 
                
    			var hb_kb = bonus * 5 + 5;
				set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, hb_kb);
				set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, hb_kb + 3);
				
    			var hb_scaling = bonus * 0.4 + 0.5;
				set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, hb_scaling);
				set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, hb_scaling + 0.25);
				
    			var hb_hitpause = floor(bonus * 16); 
				set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, hb_hitpause);
				set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, hb_hitpause + 4);
    		}
    		else
    		{
    			reset_num_hitboxes(attack);
    		}
    	}
    	else if (window == 1)
    	{
    		hsp *= 0.75;
    		vsp *= (vsp > 0 ? 0.75 : 0.95);
    	}
    }break;
	//======================================================
	default: break;
}

//prevent attacks from being able to land on platforms when the inputs are there to go through
fall_through = (down_down) && (!lev_bypass);


//=====================================================================
#define do_faster_falling()
//make gravity pull harder than max_fall speeds during this move
{
    if (vsp >= max_fall && vsp < fast_fall)
    {
        vsp += gravity_speed;
    }
}
//=====================================================================
#define do_diagonal_leniency()
{
	//keep in sync with set_attack.gml... 
	//to optimize later...
	var dir_pressed = {up:false, down:false, left:false, right:false};
	var new_form = noone;
	
	switch (attack)
	{
		//STANDARDS
		//==============================================
		case 4: //D
		case 8: //H
		case 13: //M
		case 21: //U
		{
		    dir_pressed.up = is_attack_pressed(DIR_UP);
		    dir_pressed.down = is_attack_pressed(DIR_DOWN);
		    dir_pressed.left = is_attack_pressed(DIR_LEFT);
		    dir_pressed.right = is_attack_pressed(DIR_RIGHT);
			

			
		} break;
		//STRONGS
		//==============================================
		case 1: //A
		case 5: //E
		case 23: //W
		case 24: //X
		{
		    if (is_strong_pressed(DIR_ANY))
		    {
		        dir_pressed.up = is_strong_pressed(DIR_UP);
		        dir_pressed.down = is_strong_pressed(DIR_DOWN);
		        dir_pressed.left = is_strong_pressed(DIR_LEFT);
		        dir_pressed.right = is_strong_pressed(DIR_RIGHT);
		    }
		    else if (strong_down)
		    {
		        dir_pressed.up = up_down;
		        dir_pressed.down = down_down;
		        dir_pressed.left = left_down;
		        dir_pressed.right = right_down;
		    }
		    

			
		} break;
		//SPECIALS
		//==============================================
		case 2: //B
		case 6: //F
		case 14: //N
		case 25: //Y
		{
		    dir_pressed.up = is_special_pressed(DIR_UP);
		    dir_pressed.down = is_special_pressed(DIR_DOWN);
		    dir_pressed.left = is_special_pressed(DIR_LEFT);
		    dir_pressed.right = is_special_pressed(DIR_RIGHT);
		    

		} break;
		default: break; //already diagonal. or is neutral. do nothing
	}
	
	if (new_form == UNOWN_ATK.C && unown_c_used)
    || (new_form == UNOWN_ATK.G && unown_g_used)
    || (new_form == UNOWN_ATK.T && unown_t_used)
    { new_form = noone; }
	
	if (new_form != noone && move_cooldown[unown_form_data[new_form].atk] < 1)
	{
		attack = unown_form_data[new_form].atk;
	    hurtbox_spr = unown_form_data[new_form].hurtbox;
	    unown_current_form = new_form;
	    unown_attack_is_fresh = (attack != AT_PHONE);
	    
	    adjust_unown_attack_grid();
	    unown_recalculate_stats = true;
	    
	    //dan why is this necessary
    	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
	}
}

//=========================================================
#define adjust_unown_attack_grid()
{
    var bonus = unown_current_bonus;
    
    //apply buffs based on current word boost
    for (var hb = 1; hb <= get_num_hitboxes(attack); hb++)
    {
        apply_word_bonus(bonus, attack, hb, HG_DAMAGE, HG_UNOWN_DAMAGE_BONUS);
        apply_word_bonus(bonus, attack, hb, HG_BASE_KNOCKBACK, HG_UNOWN_KNOCKBACK_BONUS);
        apply_word_bonus(bonus, attack, hb, HG_KNOCKBACK_SCALING, HG_UNOWN_SCALING_BONUS);
    }
}

#define apply_word_bonus(cur_mult, atk, hnum, base_index, bonus_index)
{
    if (0 < get_hitbox_value(atk, hnum, bonus_index))
    {
        reset_hitbox_value(atk, hnum, base_index);
        
        // total = base + charge * bonus
        var value = get_hitbox_value(atk, hnum, base_index)
           + (cur_mult * get_hitbox_value(atk, hnum, bonus_index) );
        set_hitbox_value(atk, hnum, base_index, value);
    }
}