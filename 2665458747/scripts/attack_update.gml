//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

//asd

switch(attack)
{
	case AT_TAUNT:
	{
		if window == 2 && !hitpause
		{
			stance_indicator_timer = 1.5;
			if window_timer == 1{taunt_timer = 120;};
			if window_timer == 5{sound_play(sound_get("dp-taunt"));};
			if window_timer == 20{sound_play(sound_get("dp-taunt"));};
		}
		
		if sprite_index == sprite_get("waveland")
		{
			if down_down
			{
				if window_timer == 1 && !hitpause{sound_play(sound_get("sm-wiggle"));}
				window_timer = clamp(window_timer, 0, 6);
			}
			
			if window_timer >= 7
			{
				set_state(PS_CROUCH);
				state_timer = 30;
			}
		}
	}break;
	
	case AT_DSTRONG:
	{
		if window == 2
		{
			if window_timer == 1 && !hitpause{sound_play(sound_get("sm-wiggle"));}
		}
	}break;
	
	case AT_USTRONG:
	{
		if window == 2
		{
			if window_timer == 1 && !hitpause {sound_play(sound_get("sm-quickmovement"));}
			if window_timer == 4 && !hitpause {sound_play(asset_get("sfx_swipe_medium1"));}
			
		}
		
		if window == 3
		{
			with oPlayer
			{
				if id != other.id && pseudograb && state_cat == SC_HITSTUN
				{
					x = lerp(x, other.x-55*spr_dir, 0.3)
					y = lerp(y, other.y-80, 0.3)
				}
			}
			
			if has_hit_player
			{
				window_advance_switch(3, 5, 5)
			}
		}
		
		if window == 5
		{
			with oPlayer
			{
				if id != other.id && pseudograb
				{
					x = lerp(x, other.x-55*spr_dir, 0.1)
					y = lerp(y, other.y-70, 0.2)
				}
			}
		}
		
		if window == 6
		{
			with oPlayer
			{
				if id != other.id && pseudograb
				{
					x = lerp(x, other.x-55*spr_dir, 0.1)
					y = lerp(y, other.y-40, 0.3)
				}
			}
		}
		
		window_advance(5, 6)
		window_advance(6, 6)
		window_advance(7, 6)
	}break;
	
	case AT_FSTRONG:
	{
		if window == 2 && strong_down && window_timer >= 5
		{
			croagfstrongcharge += 0.2;
			if croagfstrongcharge >= 4
			{
				croagfstrongcharge = 0;
			}
		}
		
		if window == 3
		{
			if window_timer == 7 && !hitpause{sound_play(sound_get("sm-movementstrike"));}
		}
	}break;
	
	case AT_FTILT:
	{
		stancedodge_win(3)
		stancedodge_win(4)
	}break;
	
	case AT_DTILT:
	{
		stancedodge_win(2)
		stancedodge_win(3)
	}break;
	
	case AT_FAIR:
	{
		hsp = clamp(hsp, -10,10);
		
		stancedodge_win(3)
		stancedodge_win(4)
	}break;
	
	case AT_DAIR:
	{
		if !free
		{
			if (window == 3 || window == 4) && attack_down
			{
				window = 6;
				window_timer = 0;
				sound_stop(sound_get("sm-spin"));
				destroy_hitboxes();
			}
			else if !(window == 2 || window == 6 || window == 7 || window == 8)
			{
				if !was_parried {set_state(PS_LANDING_LAG);}
				else {set_state(PS_PRATLAND);}
				sound_stop(sound_get("sm-spin"));
			}
		}
		
		stancedodge_win(3)
		stancedodge_win(4)
		stancedodge_win(5)
		stancedodge_win(7)
		stancedodge_win(8)
		
		window_advance(6,3)
		window_advance(7,5)
	}break;
	
	case AT_UTILT:
	{
		stancedodge_win(3)
		stancedodge_win(4)
	}break;
	
	case AT_UAIR:
	{
		stancedodge_win(3)
		stancedodge_win(4)
	}break;
	
	case AT_DATTACK:
	{
		window_advance(4, 7)
		window_advance(5, 8)
		stancedodge_win(2)
		stancedodge_win(3)
		stancedodge_win(5)
		stancedodge_win(6)
		
		switch (window)
		{
			case 2:
			{
				if attack_pressed && window_timer >= 7
				{
					window = 4;
					window_timer = 0;
				}
			}break;
			
			case 3:
			{
				if attack_pressed
				{
					window = 4;
					window_timer = 0;
				}
			}break;
			
			case 5:
			{
				if !hitpause && window_timer == 0
				{
					sound_play(sound_get("sm-wiggle"));
				}
			}break;
		}
		
		
	}break;
	
	case AT_UAIR:
	{
		if window == 1
		{
			hud_offset +=5;
			hud_offset = clamp(hud_offset, 0,50);
		}
		else if window == 2 || window == 3 || (window == 4 && window_timer <= 10)
		{
			hud_offset = 50;
		}
		
		stancedodge_win(3)
		stancedodge_win(4)
	}break;
	
	case AT_BAIR:
	{
		if window == 1
		{
			if attack_down
			{
				button_down++;
			}
			
			hud_offset +=5;
			hud_offset = clamp(hud_offset, 0,50);
		}
		else if window == 2 || window == 3
		{
			hud_offset = 50;
		}
		
		if (window == 2 && window_timer <= 1 && !hitpause) && bair_stall == true &&
		((spr_dir = -1 && right_down) || (spr_dir = 1 && left_down)) && attack_down
		{
			vsp = clamp(vsp, -5,0.1);
			hsp -= 2*spr_dir;
			
			bair_stall = false;
		}
		
		if (window == 3 && window_timer <= 1 && !hitpause) && !bair_stall
		{
			hsp *= 0.9;
		}
		
		stancedodge_win(2)
		stancedodge_win(3)
		stancedodge_win(4)
	}break;
	
	case AT_NAIR:
	{
		if window == 1 && attack_down
		{
			button_down++;
		}
		
		if (window == 2 && window_timer <= 1 && !hitpause) && nair_stall == true && button_down >= 8
		{
			if vsp >= 0
			{
				vsp = -4;
			}
			else
			{
				vsp -= 2.5;
			}
			nair_stall = false;
		}
		
		stancedodge_win(2)
		stancedodge_win(3)
		stancedodge_win(4)
	}break;
	
	//specials
	
	
	
	case AT_FSPECIAL:
	{
		if window == 1 || window == 2 || window == 3
		{
			var raptorbooste = collision_rectangle(x+30*spr_dir,y-70, x+50*spr_dir, y, oPlayer, true, true)
			
			var raptorboostd = collision_rectangle(x+20*spr_dir,y-30, x+40*spr_dir, y-15, obj_article2, true, true)
			
			if window != 1 && (raptorbooste != noone)
			{
				window = 5;
				window_timer = 0;
			}
			else if (raptorboostd != noone && raptorboostd.player_id == id && special_down)
			{
				if croagstance == 1 {suckerpunchsludge = true;}
				window = 5;
				window_timer = 0;
			}
		}
		
		switch (window)
		{
			case 1:
			{
				if window_timer == 1 && !hitpause
				{
					sound_play(sound_get("dp-suckerpunch"));
				}
			}break;
			
			case 2:
			{
				can_move = false;
				if !hitpause
				{
					if free
					{
						vsp = clamp(vsp, -99, 0)
					}
					if window_timer == 1
					{
						hsp = 5.5*spr_dir;
						vsp = -2;
					}
					else
					{
						hsp += 7*spr_dir;
						hsp = clamp(hsp, -16, 16);
					}
				}
				
				croagfspecused = true;
			}break;
			
			case 3:
			{
				if !hitpause && window_timer <= 4
				{
					hsp *= 0.75;
					hsp = clamp(hsp, -5,5);
				}
				can_wall_jump = true;
			}break;
			
			case 4:
			{
				if !free && !hitpause
				{
					hsp *=0.9;
				}
				hsp = clamp(hsp, -8,8);
				
				//if window_timer >= 15 && free {set_state(PS_PRATFALL)};
				can_wall_jump = true;
			}break;
			
			case 5:
			{
				if !hitpause
				{
					hsp = 0;
				}
				
				if window_timer == 1
				{
					vsp = -3;
				}
			}break;
			
			case 6:
			{
				vsp *= 0.9;
			}break;
			
			case 7:
			{
					
			}break;
			
			case 8:
			{
					
			}break;
			
			case 9:
			{
					
			}break;
			
			case 10:
			{
					
			}break;
		}
		
		stancedodge_win(6)
		stancedodge_win(7)
		stancedodge_win(8)
		stancedodge_win(9)
		stancedodge_win(10)
		
		window_advance(5,2)
		window_advance(6,6)
		window_advance(7,10)
		window_advance(8,4)
	}break;
	
	case AT_FSPECIAL_2:
	{
		if window == 1
		{
			if special_down
			{
				button_down++;
			}
		}
		
		if window == 2 
		{
			if window_timer == 1
			{
				croagbelchcharged = true;
			}
			
			if window_timer >= 5 && button_down >= 8 && special_down
			{
				window = 4;
				window_timer = 0;
			}
		}
		
		if window == 4 
		{
			if window_timer <= 3
			{
				switch (croagberry)
				{
				    case 0: // oran
				    {
				        set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 5);
				        set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 20);
				    }break;
				    
				    case 1: // pecha
				    {
				        set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
				        set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 20);
				    }break;
				    
				    case 2: // rawst
				    {
				        set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 5);
				        set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 5);
				        set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 5);
				        set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 20);
				    }break;
				    
				    case 3: // cheri
				    {
				        set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 20);
				        set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 5);
				    }break;
				}
			}
			
			if window_timer == 10 && !hitpause
			{
				sound_play(sound_get("sm-poof"));
				sound_play(sound_get("sm-spit"));
				sound_play(sound_get("sm-belch"));
			}
		}
		
		if window == 5
		{
			if window_timer <= 1 && !hitpause
			{
				hsp = 0;
				y -= 10;
			}
			
			if window_timer == 2 && !hitpause
			{
				hsp = -7.5*spr_dir;
				vsp = -3;
				croagbelchcharged = false;
			}
			
			can_move = false;
		}
		
		if window == 6 && !free
		{
			can_move = false;
			if !free && !was_parried {set_state(PS_LANDING_LAG);}
			else if !free {set_state(PS_PRATLAND);}
		}
		
		if window == 4 || window == 5 || window == 6
		{
			can_wall_jump = true;
		}
		
		window_advance(4,11)
		window_advance(5,8)
	}break;
	
	case AT_NSPECIAL: //Poison Sting
	{
		switch (window)
		{
			case 1:
			{
				stance_indicator_timer = 1.5;
			}break;
			
			case 2:
			{   
				if special_down && poison_sting_charge <= 59
				{
					poison_sting_charge++;
					if window_timer >=3
					{
						window_timer = 0;
					}
				}
				
				if (poison_sting_charge >=59 || (shield_pressed || shield_down)) && !sting_charged
				{
					window = 5;
					window_timer = 0;
				}
				
				nspecial_switch_to_2();
				
			}break;
			
			case 3:
			{
				if free && window_timer <= 7
				{
					vsp = clamp(vsp, -4,4);
					hsp = clamp(hsp, -3.5, 3.5);
				}
				
				if !hitpause
				{
					
					switch (window_timer)
					{
						case 1:
						{
							if poison_sting_charge >=30
							{
							sting_damage = 2;
							sting_pause = 6;
							sting_pause_scaling = 0.05;
							}
						else if poison_sting_charge <= 30
						{
							sting_damage = 1;
							sting_pause = 4;
							sting_pause_scaling = 0.1;
						}
						
						poisonsting_variables_set()
						if !free
						{
							var spit = spawn_hit_fx( x+sting_offset_x*0.5*spr_dir, y + sting_offset_y, spit_fx )
							spit.draw_angle = sting_angle3;
							spit.depth = -5;
							
							var poison_sting1 = create_hitbox( AT_NSPECIAL, 1, x+sting_offset_x*spr_dir, y + sting_offset_y+4 )
							poison_sting1.damage = sting_damage;
							poison_sting1.length += poison_sting_charge*0.1;
							poison_sting1.hsp += poison_sting_charge*spr_dir*0.15;
							poison_sting1.vsp = 1.2;
							poison_sting1.proj_angle = sting_angle1;
							poison_sting1.hitpause = sting_pause;
							poison_sting1.fx_particles = 1;
							poison_sting1.hitpause_growth = sting_pause_scaling;
						}
						if free
						{
							var spit = spawn_hit_fx( x+sting_offset_x*0.5*spr_dir, y-18 + sting_offset_y, spit_fx )
							spit.draw_angle = sting_angle3;
							spit.depth = -5;
							
							var poison_sting1 = create_hitbox( AT_NSPECIAL, 1, x+sting_offset_x*spr_dir, y + sting_offset_y )
							poison_sting1.damage = sting_damage;
							poison_sting1.length += poison_sting_charge*0.05;
							poison_sting1.hsp = 8.5*spr_dir + poison_sting_charge*0.15*spr_dir;
							poison_sting1.vsp = 6.5 + poison_sting_charge*0.15;
							poison_sting1.proj_angle = sting_angle1;
							poison_sting1.hitpause = sting_pause;
							poison_sting1.fx_particles = 1;
							poison_sting1.hitpause_growth = sting_pause_scaling;
						}
						}break;
								
						case 3:
						{
							poisonsting_variables_set()
							if !free
							{
								var poison_sting2 = create_hitbox( AT_NSPECIAL, 1, x+sting_offset_x*spr_dir, y + sting_offset_y-4 )
								poison_sting2.damage = sting_damage;
								poison_sting2.length += poison_sting_charge*0.1;
								poison_sting2.hsp += poison_sting_charge*spr_dir*0.15;
								poison_sting2.vsp = -1.2;
								poison_sting2.proj_angle = sting_angle2;
								poison_sting2.hitpause = sting_pause;
								poison_sting2.fx_particles = 1;
								poison_sting2.hitpause_growth = sting_pause_scaling;
							}
							
							if free
							{
								var poison_sting2 = create_hitbox( AT_NSPECIAL, 1, x+sting_offset_x*spr_dir, y + sting_offset_y )
								poison_sting2.damage = sting_damage;
								poison_sting2.length += poison_sting_charge*0.05;
								poison_sting2.hsp = 6.5*spr_dir + poison_sting_charge*0.1*spr_dir;
								poison_sting2.vsp = 8.5 + poison_sting_charge*0.15;
								poison_sting2.proj_angle = sting_angle2;
								poison_sting2.hitpause = sting_pause;
								poison_sting2.fx_particles = 1;
								poison_sting2.hitpause_growth = sting_pause_scaling;
							}
						}break;
				
						case 6:
						{
							poisonsting_variables_set()
							if !free
							{
								var poison_sting3 = create_hitbox( AT_NSPECIAL, 1, x+sting_offset_x*spr_dir, y + sting_offset_y )
								poison_sting3.damage = sting_damage;
								poison_sting3.length += poison_sting_charge*0.1;
								poison_sting3.hsp += poison_sting_charge*spr_dir*0.15;
								poison_sting3.proj_angle = sting_angle3;
								poison_sting3.hitpause = sting_pause;
								poison_sting3.fx_particles = 1;
								poison_sting3.hitpause_growth = sting_pause_scaling;
							}
										
							if free
							{
								var poison_sting3 = create_hitbox( AT_NSPECIAL, 1, x+sting_offset_x*spr_dir, y + sting_offset_y )
								poison_sting3.damage = sting_damage;
								poison_sting3.length += poison_sting_charge*0.05;
								poison_sting3.hsp = 7.5*spr_dir + poison_sting_charge*0.15*spr_dir;
								poison_sting3.vsp = 7.5 + poison_sting_charge*0.15;
								poison_sting3.proj_angle = sting_angle3;
								poison_sting3.hitpause = sting_pause;
								poison_sting3.fx_particles = 1;
								poison_sting3.hitpause_growth = sting_pause_scaling;
							}
									
							poison_sting_charge = 0;
							sting_charged = false;
							}break;
						}break;
					}
				}break;
				
				case 5:
				{
					if special_pressed
				{
					window = 3;
					window_timer = 0;
				}
				
				if window_timer >= 10
				{
					endlag_cancel();
				}
				
				if poison_sting_charge >= 59
				{
					sting_charged = true;
				}
			}break;
		}
	}break;
	
	case AT_NSPECIAL_2: //Sludge
	{
		switch (window)
		{
			case 1:
			{
				stance_indicator_timer = 1.5;
			}break;
			
			case 2:
			{   
				if special_down && poison_sting_charge <= 59
				{
					poison_sting_charge++;
					if window_timer >=3
					{
						window_timer = 0;
					}
				}
				
				if (poison_sting_charge >=59 || (shield_pressed || shield_down)) && !sting_charged
				{
					window = 5;
					window_timer = 0;
				}
				
				nspecial_switch_to_1();
			}break;
			
			case 3:
			{
				if free && window_timer <= 7
				{
					vsp = clamp(vsp, -4, 1);
					hsp = clamp(hsp, -3.5, 3.5);
				}
				
				if window_timer == 1 && !hitpause
				{
					spit = spawn_hit_fx( x+20*spr_dir, y-28, spit_fx )
					spit.depth = -5;
					
					if poison_sting_charge >= -1 && poison_sting_charge <= 20
					{
						sludgecharge = 1;
					}
					else if poison_sting_charge >= 20 && poison_sting_charge <= 40
					{
						sludgecharge = 2;
					}
					else if poison_sting_charge >= 40
					{
						sludgecharge = 3;
					}
					
					var sludgeNumber = 0; //variable to use for counting
					var oldestSludge = noone; // makes a blank space
					for (var i = 0; i<instance_number(obj_article2); i++) 
					// does everything below for every instance of obj_article2
					{
						var a = instance_find(obj_article2, i)//finds the sludge
						if a.player_id == id && (a.state >= 0 && a.state <= 5)
						{
							sludgeNumber++;//counts up, when the counting is done, the last sludge counted is the 'oldest sludge'
							if oldestSludge == noone 
							{
								oldestSludge = a;//sets the oldest sludge to object being counted, ends with the oldest sludge, setting the variable
							}
						}
					}
					if sludgeNumber > 1 // checks if there are more than 2 objects
					{
						with (oldestSludge) //destroys the oldest sludge
						{
							state = 6;
						}
					}
					
					var sludge = create_hitbox( AT_NSPECIAL_2, 1, x+40*spr_dir, y-28 )
					sludge.hsp += poison_sting_charge*0.15*spr_dir;
					
					var bomb = instance_create(x+40*spr_dir, y-28,"obj_article2")
					bomb.attachedhitbox = sludge;
					bomb.sludgelevel = sludgecharge;
					bomb.spr_dir = spr_dir;
					bomb.sprite_index = sprite_get("sludgeb");
					bomb.image_xscale = 2;
					bomb.image_yscale = 2;
					
					poison_sting_charge = 0;
					sting_charged = false;
					sludgecharge = 0;
				}
			}break;
			
			case 5:
			{
				if special_pressed
			{
				window = 3;
				window_timer = 0;
			}
			
			if window_timer >= 10
			{
				endlag_cancel();
			}
			
			if poison_sting_charge >= 59
			{
				sting_charged = true;
			}
			}break;
		}
	}break;
	
	case AT_DSPECIAL: //Swagger/Foul Play
	{
		hsp = clamp(hsp, -8,8);
		
		if window == 1
		{
			if window_timer == 1 && free {vsp = clamp(vsp, -8,-2);}
			hud_offset += 5;
			hud_offset = clamp(hud_offset, 0, 45);
			
			if special_down && button_down <= 10
			{
				button_down++;
				window_timer = clamp(window_timer, 0, 2	);
			}
		}
		
		if window == 2 || window == 3
		{
			hud_offset = 45;
			
			if (window == 2 && window_timer >= 2) || (window >=3) && has_hit
			{
				can_jump = true;
			}
			
			if window == 2 && window_timer == 1
			{
				if button_down >= 11
				{
					for (var i = 0; i<instance_number(obj_article2); i++) 
					// does everything below for every instance of obj_article2
					{
						var a = instance_find(obj_article2, i)//finds the sludges
						if a.player_id == id && (a.state >= 0 && a.state <= 5) //identification
						{
							with (obj_article2)
							{
								state = 6;
							}
						}
					}
				}
				
				switch (croagstance)
				{
					case 1:
					{
						if !hitpause {sound_play(sound_get("sm-foulplay"));}
						croagstance = 2;
					}break;
					
					case 2:
					{
						if !hitpause {sound_play(sound_get("dp-swagger"));}
						croagstance = 1;
					}break;
				}
			}
		}
	}break;
	
	case AT_USPECIAL: //Bounce
	{
		
		if (window >= 2 && window != 3 && window <= 4) && !hitpause
		{
			if window == 2 && (window_timer == 1 || window_timer == 5 || window_timer == 10 || window_timer == 15)
			{
				spawn_hit_fx( x, y-32, bounce_fx )
			}
			else if window_timer == 5
			{
				spawn_hit_fx( x, y-32, bounce_fx )
			}
		}
		
		switch (window)
		{
			case 1:
			{
				if window_timer == 1 && free
				{
					vsp = -3;
				}
			}break;
			
			case 2:
			{
				bounce_angle = round(lengthdir_x(hsp, vsp)*-4.5);
				bounce_stretch = abs(vsp*0.08)
				bounce_offset = bounce_stretch*8;
				
				if !hitpause{bounce_transp -= 0.06;}
				bounce_transp = clamp(bounce_transp, 0, 1);
			}break;
			
			case 3:
			{
				bounce_angle *= 0.9;
				bounce_stretch *= 0.5;
				bounce_offset *=0.7;
				clamp(vsp, -4,0)
				can_wall_jump = true;
				bounce_transp = 0.4;
			}break;
			
			case 4:
			{
				if down_down
				{
					fall_through = true;
					vsp += 0.75;
				}
				else
				{
					fall_through = false;
				}
				
				bounce_angle = round(lengthdir_x(hsp, vsp)*4.5);
				bounce_stretch = abs(vsp*0.09)
				bounce_offset = bounce_stretch*-8;
				
				can_wall_jump = true;
				
				if bounce_hit
				{
					spawn_hit_fx( x, y, bounce_land_fx )
					
					window = 8;
					window_timer = 0;
					destroy_hitboxes();
				}
				
				if window_timer <= 1 && !hitpause
				{
					bounce_fall++;
				}
				
				if bounce_fall <= 2
				{
					set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 20);
				}
				else
				{
					set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
					bounce_transp += 0.08;
					bounce_transp = clamp(bounce_transp, 0, 1);
				}
				
				if !was_parried{can_jump = true;}
			}break;
			
			case 5:
			{
				destroy_hitboxes();
				
				if !hitpause && window_timer == 0
				{
					spawn_hit_fx( x, y, bounce_land_fx )
				}
				
				hsp = 0;
			}break;
			
			case 6:
			{
				stancedodge_win(6)
			}break;
			
			case 7:
			{
				endlag_cancel();
			}break;
			
			case 8:
			{
				
				window_advance(8, 2)
				if window_timer == 1 && !hitpause
				{
					//bounce_limit--;
				}
			}break;
			
			case 9:
			{
				window_advance(9, 4)
				stancedodge_win(9)
			}break;
			
			case 10:
			{
				if window_timer <= 1 && !hitpause
				{
					vsp = -5;
				}
				endlag_cancel();
			}break;
		}
	}break;
}

#define nspecial_switch_to_1()
{
	if (attack_pressed || (down_strong_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed))
	{
		attack = AT_NSPECIAL;
		window = 3;
		window_timer = 0;
		croagstance = 1;
		stance_indicator_timer = 1.5;
		
		//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 22);
		//set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 28);
	}
}

#define nspecial_switch_to_2()
{
	if (attack_pressed || (down_strong_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed))
	{
		attack = AT_NSPECIAL_2;
		window = 3;
		window_timer = 0;
		croagstance = 2;
		stance_indicator_timer = 1.5;
		
		//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 22);
		//set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 28);
	}
}

#define window_advance(windownum, windowtime)
{
	if window == windownum
	{
		if window_timer >= windowtime{window+=1;window_timer=0;}
	}
}

#define window_advance_switch(windownum1, windowtime, windownum2)
{
	if window == windownum1
	{
		if window_timer >= windowtime{window=windownum2;window_timer=0;}
	}
}

#define endlag_cancel()
{
	if !was_parried // checks if you WERENT parried
	{
		iasa_script(); // if you werent parried, wherever you put endlag_cancel() will let you act out of whatever the fuck you were doing before
	}
}

#define stancedodge_win_timer(windownum, windowtime)
{
	if window == windownum && window_timer >= windowtime && (has_hit_player || suckerpunchsludge) && croagstance == 1 && !hitpause
	{
		if !was_parried{can_shield = true;}
		if free {can_jump = true;}
	}
}

#define stancedodge_win(windownum)
{
	if window == windownum && (has_hit_player || suckerpunchsludge) && croagstance == 1 && !hitpause
	{
		if !was_parried{can_shield = true;}
		else {can_shield = false;}
		if free {can_jump = true;}
	}
}

#define poisonsting_variables_set()
{
	switch(spr_dir)
						{
							case 1:
							{
								if !free
								{
									sting_angle1 = 355;
									sting_angle2 = 5;
									sting_angle3 = 0;
								
									sting_offset_x = 48;
									sting_offset_y = -28;
								}
							
								if free
								{
									sting_angle1 = 320;
									sting_angle2 = 310;
									sting_angle3 = 315;
							
									sting_offset_x = 32;
									sting_offset_y = 0;
								}
							}break;
					
							case -1:
							{
								if !free
								{
									sting_angle1 = 5;
									sting_angle2 = 355;
									sting_angle3 = 0;
							
									sting_offset_x = 48;
									sting_offset_y = -28;
								}
						
								if free
								{
									sting_angle1 = 35;
									sting_angle2 = 45;
									sting_angle3 = 40;
									
									sting_offset_x = 32;
									sting_offset_y = 0;
								}
							}break;
						}
}

