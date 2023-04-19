//update

var ct = current_time;

//Change stats based on whether on bike or not
char_height = motorbike? 56 : 50;
walk_speed = motorbike? 6 : 3.25;
initial_dash_speed = motorbike? 10 : 7;
dash_speed = motorbike? 10: 7.5;
dash_stop_time = motorbike? 12: 4;
djump_speed = motorbike? 10: 3;

is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
was_attacking = (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
var time = get_gameplay_time();

//renders effects in front of you
//credit to supersonic for the help
with (hit_fx_obj)
{
    //effects default depth when they spawn is 3, so this will make it so it won't overwrite values if i add them manually
    if (player == other.player && depth == 3) depth = player_id.depth-1;
}

//Charge the meter
if (feline_power = false)
{
	kickTime = 0;
	multikick_energy = (motorbike? 200 - move_cooldown[AT_NSPECIAL_2] : 200 - move_cooldown[AT_NSPECIAL]);
	if (multikick_energy >= 199)
	{
		sound_play(sound_get("regen"));
		outline_charge = 255;
		init_shader();
		spawn_base_dust(x - 10, y - 30, "fastfall");
		spawn_base_dust(x, y - 50, "fastfall");
		spawn_base_dust(x + 10, y - 40, "fastfall");
		//var sparkly1 = spawn_hit_fx(x, y, powerBack);
		//sparkly1.depth = -100;
	}
}

//Stop charging if meter is full
if (multikick_energy >= 200)
{
	multikick_energy = 200;
	if (outline_charge <= 0)
	{
		outline_charge = 0;
	}
	if (outline_charge > 0)
	{
		outline_charge-= 40;
	}
	init_shader();	
	feline_power = true;
}

if (motorbike == false)
{
	//Reset values back to default if coming from the bike
	hurtbox_spr = sprite_get("carol_hurtbox_standing");
	crouchbox_spr = sprite_get("carol_hurtbox_crouch");
	jump_sound = sound_get("jump");
	djump_sound = asset_get("sfx_jumpair");
	//Bike doesn't have idle fidget, this gives the fidget back
	wait_time = 400;
	
	//Abyss Runes reset, just in case!
	if has_rune("B")
	{
    	walk_accel = 0.3;
    	walk_turn_time = 5;
    	initial_dash_time = 8;
    	initial_dash_speed = 7.75;
		dash_turn_time = 8;
		dash_turn_accel = 1.5;
	}
	
	if has_rune("E")
	{
    	max_djumps = 2;
	}
	
	if has_rune("I")
	{
		jump_speed = 15;
	}
	
	if has_rune("J")
	{
    	max_djumps = 3;
	}
	
	if has_rune("O")
	{
	   	jump_speed = 16;
		walk_accel = 0.8;
		initial_dash_time = 9;
		initial_dash_speed = 8;
		dash_turn_time = 8;
	 	dash_turn_accel = 1.5;
	}

	//Carol's Double jump is a pounce, so if she double jumps there should be no additional vsp
	if (state == PS_DOUBLE_JUMP)
	{
		pounce = true;
		if ((left_pressed || left_down) && spr_dir == 1 && !pounceChange)
		{
			spr_dir = -1;
			pounceChange = true;
		}
		if ((right_pressed || right_down) && spr_dir == -1 && !pounceChange)
		{
			spr_dir = 1;
			pounceChange = true;
		}
		set_state(PS_ATTACK_AIR);
		attack=AT_EXTRA_2;
   		tsprite_index = sprite_get("tail_walk");
		timage_index=0;
		timage_number=7;
		tfront=false;
		tx=-46*spr_dir;
		ty=-70;
		tsx=1;
		tsy=1;
		bsprite_index=-1;
	}
	
	if (free==false)
	{
		pounce = false;
	}

	
	//multiple Wall jumps, so that you can bounce up the same wall over and over again, just like Carol's gameplay in Freedom Planet!
	if ((can_wall_jump == false || has_walljump == false) && walljump_number < walljump_limit)
	{
    	can_wall_jump = true;
    	has_walljump = true;
    	if (state = PS_WALL_JUMP)
    	{
    		if (state_timer = 1)
    		{
    			if (voice == 1)
    			{
    				sound_stop(sound_get ("carol_walljump"));
					sound_play(sound_get ("carol_walljump"));
    			}
		    	walljump_number++;
    		}
    	}
	}
	if (walljump_number >= 2 && !has_rune("M"))
	{
		move_cooldown[AT_FSPECIAL] = 40;
	}
	if (walljump_number == walljump_limit)
	{
		can_wall_jump = false;
		has_walljump = false;
	}
	
	//This code animated the tail and adds an effect to Parry depending on state
	if (state!=PS_ATTACK_AIR && state!=PS_ATTACK_GROUND)
	{
		comboCounter = 0;
		hitConfirm = false;
		switch (state)
		{
			case PS_IDLE:
				tsprite_index=-1;
				trotation=0;
				tfront=0;
				tx=0;
				ty=0;
				tsx=1;
				tsy=1;
				bsprite_index=-1;
				if (state_timer == 397)
				{
					voice_protection = false;
					//Wait Animation stuff, she doesn't like it when she's not moving
					if (voice > 0)
					{
						wait_idle_pick = random_func(idle_index, 5, 1);
					}
					else
					{
						wait_idle_pick = random_func(idle_index, 2, 1);
					}
					switch (wait_idle_pick)
					{
						case 0:
							wait_length = 70;
							wait_sprite = sprite_get("wait");
						break;
						case 1:
							wait_length = 60;
							wait_sprite = sprite_get("waitb");
						break;
						case 2:
							wait_length = 120;
							wait_sprite = sprite_get("waitc");
							voice_protection = true;
						case 3:
							wait_length = 160;
							wait_sprite = sprite_get("waitc");
							voice_protection = true;
						break;
						case 4:
							wait_length = 160;
							wait_sprite = sprite_get("waitd");
							voice_protection = true;				
						default:
						break;
					}
					idle_index++;
				}
				if (voice == 1)
				{
					if (wait_idle_pick == 2 && state_timer == 20 && voice_protection = true)
					{
						sound_stop(sound_get("im_bored"));
						sound_play(sound_get("im_bored"));
						voice_protection = false;
					}
					else if (wait_idle_pick == 3 && state_timer == 20 && voice_protection = true)
					{	
						sound_stop(sound_get("why_are_we_stopping"));
						sound_play(sound_get("why_are_we_stopping"));
						voice_protection = false;
					}
					else if (wait_idle_pick == 4 && state_timer == 20 && voice_protection = true)
					{
						sound_stop(sound_get("what_you_doing"));
						sound_play(sound_get("what_you_doing"));
						voice_protection = false;
					}
				}
			break;
	  		case PS_PARRY:
		  		//Custom Parry Effect
		  		sound_stop(asset_get("sfx_parry_use"));
		  		if (state_timer == 0)
		  		{
		  			sound_play(sound_get("guard"));
		  		}
		  		tsprite_index=sprite_get("tail_idle");
				trotation=0;
				timage_number=12;
				timage_speed=0.25;
				tfront=false;
				tx=-46*spr_dir;
				ty=-66;
				tsx=1;
				tsy=1;
    			bsprite_index=-1;
				if (thrownBike != noone && state_timer = 0)
				{
					set_state(PS_IDLE);
				}
			break;
			case PS_WALK:
			case PS_WALK_TURN:
	    		tsprite_index=sprite_get("tail_walk");
				trotation=0;
				timage_number=7;
				timage_speed=0.25;
				tfront=false;
				tx=-45*spr_dir;
				ty=-76;
				tsx=1;
				tsy=1;
				bsprite_index=-1;
			break;
			case PS_DASH_START:
			case PS_DASH:
		 		tsprite_index=sprite_get("tail_walk");
				trotation=0;
				timage_number=7;
				timage_speed=0.25;
				tfront=false;
				tx=-40*spr_dir;
				ty=-78;
				tsx=1;
				tsy=1;
				bsprite_index=-1;
    		break;
    		case PS_DASH_STOP:
			case PS_DASH_TURN:
	    	    tsprite_index=sprite_get("tail_walk");
				trotation=0;
				timage_number=7;
				timage_speed=0.25;
				tfront=false;
				tx=-50*spr_dir;
				ty=-70;
				tsx=1;
				tsy=1;
				bsprite_index=-1;
	 		break;
    		case PS_DOUBLE_JUMP:
				can_attack = false;
				can_special = false;
				can_shield = false;
				can_strong = false;
			 	tsprite_index = sprite_get("tail_walk");
				timage_index=0;
				timage_number=7;
				tfront=false;
				tx=-46*spr_dir;
				ty=-70;
				tsx=1;
				tsy=1;
				bsprite_index=-1;    
			break;
    		case PS_CROUCH:
    			tsprite_index=sprite_get("tail_walk");
				trotation=0;
				timage_number=7;
				timage_speed=0.25;
				tfront=false;
				tx=-46*spr_dir;
				ty=-70;
				tsx=1;
				tsy=1;
				bsprite_index=-1;
			break;
			default:
				tsprite_index=-1;
				trotation=0;
				tfront=0;
				tx=0;
				ty=0;
				tsx=1;
				tsy=1;
				bsprite_index=-1;
			break;
    	}
	}
}
//While riding the motorbike, fuel is consumed
else if (motorbike == true)
{
	hurtbox_spr = sprite_get("bike_hurtbox");
	crouchbox_spr = sprite_get("bike_crouch_hurtbox");
	jump_sound = sound_get("motorbike_jump");
	djump_sound = sound_get("motorbike_spin");
	fuel_remaining = fuel;
	//Bike doesn't have idle fidget, these values should make it unlikely it's ever seen
	wait_time = 100000;
	wait_length = 16;
	wait_sprite = sprite_get("idle2");
	
	//Increase this timer for a prompt for FSpecial2.
	nBoostReadyTimer++;
	
	if (move_cooldown[AT_FSPECIAL_2] == 1)
	{
		nBoostReadyTimer = 0;
	}
	
	if has_rune("E")
	{
		max_djumps = 1;
	}
	
	if has_rune("J")
	{
		max_djumps = 1;
	}
	
	if has_rune("I")
	{
    	jump_speed = 15;
	}

	if has_rune("O")
	{
	   	jump_speed = 16;
		walk_accel = 0.8;
	 	initial_dash_time = 9;
		initial_dash_speed = 11;
 		dash_turn_time = 12;
	}
	fuel_burn++;
	{
		if has_rune ("H")
		{
			if (fuel_burn > 100)
		 	{
				fuel = fuel - 1;
    			fuel_burn = 0;
    		}			
		}
		else
		{
			if (fuel_burn > 50)
		 	{
				fuel = fuel - 1;
    			fuel_burn = 0;
    		}
		}
	}
	//The following code creates bike sounds
	switch (state)
	{
		case PS_IDLE:
		if (fuel > 0)
		{
			bike_state_timer++;
			if (state_timer = 1)
			{
				sound_play(sound_get("motorbike_idle"));
				sound_stop(sound_get("motorbike_move"));
				bike_state_timer = 1;
			}
			switch (bike_state_timer)
			{
				case 1:
					sound_play(sound_get("motorbike_idle"));
					sound_stop(sound_get("motorbike_move"));
				break;
				case 100:
					sound_stop(sound_get("motorbike_idle"));
					sound_play(sound_get("motorbike_idle"));
					bike_state_timer = 0;
				break;
				default:
				break;
			}
		}
		break;
		//Sound effects while on the bike
		case PS_WALK:
		case PS_DASH_START:
		case PS_DASH:
			if (fuel > 0)
			{
				//You would get hurt if you got hit by a bike... so here's a hitbox for moving on the bike
				if ((state == PS_WALK && state_timer > 100 || state == PS_DASH && state_timer > 10))
				{
					create_hitbox( AT_EXTRA_1, 1, x, y);
				}
				else
				{
					destroy_hitboxes();
				}
				bike_state_timer++;
				if (state_timer = 1)
				{
					bike_state_timer = 1;
					sound_play(sound_get("motorbike_move"));
					sound_stop(sound_get("motorbike_idle"));
				}
				switch (bike_state_timer)
				{
					case 1:
					sound_play(sound_get("motorbike_move"));
					sound_stop(sound_get("motorbike_idle"));
					break;
					case 100:
					sound_stop(sound_get("motorbike_move"));
					sound_play(sound_get("motorbike_move"));
					break;
				}
			}
			if (state != PS_WALK)
			{
				if(floor(state_timer/4) == state_timer /4)
				{
					spawn_base_dust(x, y, "dash_start");
					spawn_base_dust(x + 30 * spr_dir, y, "dash_start");
				}	
			}
			else
			{
				if(floor(state_timer/4) == state_timer /4)
				{
					spawn_base_dust(x, y, "dash");
					spawn_base_dust(x + 30 * spr_dir, y, "dash");
				}
			}
		break;
		//Sound effects while stopping with the bike
		case PS_DASH_STOP:
		case PS_DASH_TURN:
			if (state_timer == 1)
			{
				sound_stop(sound_get("motorbike_move"));
				sound_stop(sound_get("motorbike_idle"));
				sound_stop(sound_get("motorbike_stop"));
				sound_play(sound_get("motorbike_stop"));
			}
		break;
		//sound effects when jumping with the bike
		case PS_JUMPSQUAT:
			sound_stop(sound_get("motorbike_move"));
			sound_stop(sound_get("motorbike_idle"));
			sound_stop(sound_get("motorbike_stop"));
			break;
		case PS_DOUBLE_JUMP:
			create_hitbox( AT_EXTRA_1, 2, x, y);
			if (state_timer == 30)
			{
				attack_end(AT_EXTRA_1);
			}
		break;
		case PS_HITSTUN:
			if (prev_state == PS_WALL_JUMP && state_timer == 0)
			{
				vsp = 0;
			}
		break;
  		case PS_PARRY:
	  		//Custom Parry Effect
	  		sound_stop(asset_get("sfx_parry_use"));
	  		if (state_timer == 0)
	  		{
	  			sound_play(sound_get("guard"));
	  		}
	  	break;
	  	case PS_WAVELAND:
			if(floor(state_timer/4) == state_timer /4)
			{
				spawn_base_dust(x, y, "dash_start");
				spawn_base_dust(x + 30 * spr_dir, y, "dash_start");
			}	
	  	break;
		default:
		break;
	}
	if (fuel > 0)
	{
		//Create the smoke effects that come out from the bike as well as the sparkles from movement
		smokeCounter++;
		if (smokeCounter == 6)
		{
			switch (state)
			{
				case PS_WALK:
				var smallspark = spawn_hit_fx(x - 80 * spr_dir, y-32 , sparkle);
					smallspark.depth = -100;			
				break;
				case PS_DASH:
					var smallspark = spawn_hit_fx(x - 80 * spr_dir, y-32 , sparkle);
					smallspark.depth = -100;
				break;
				case PS_FIRST_JUMP:
				case PS_IDLE_AIR:
					var smallspark = spawn_hit_fx (x - 60 * spr_dir, y - 14, sparkle);
					smallspark.depth = -100;
				break;
				default:
				break;
			}
		}
		if (smokeCounter >=12)
		{
			switch state
			{
				case PS_IDLE:
				case PS_WALK:
				case PS_CROUCH:
					var bikeSmoke = spawn_hit_fx (x - 80 * spr_dir, y - 32, bike_smokeH);
					bikeSmoke.depth = -100;
				break;
				case PS_WALK_TURN:
				case PS_DASH_START:
				case PS_DASH:
				case PS_DASH_STOP:
				case PS_DASH_TURN:
					var bikeSmoke = spawn_hit_fx (x - 80 * spr_dir, y - 32, bike_smokeH);
					bikeSmoke.depth = -100;
				break;
				case PS_JUMPSQUAT:
				case PS_LAND:
				case PS_LANDING_LAG:
					var bikeSmoke = spawn_hit_fx (x - 80 * spr_dir, y - 18, 13);
					bikeSmoke.depth = -100;
				break;
				case PS_FIRST_JUMP:
				case PS_IDLE_AIR:
					var bikeSmoke = spawn_hit_fx (x - 60 * spr_dir, y - 14, bike_smokeD);
					bikeSmoke.depth = -100;
				break;
				case PS_WALL_JUMP:
					var bikeSmoke = spawn_hit_fx (x - 10 * spr_dir, y, bike_smokeV);
					bikeSmoke.depth = -100;
				break;
				default:
				break;
			}
			smokeCounter = 0;
		}
	}
	//Make Carol get off the bike if fuel runs out
	if (fuel <= 0)
	{
		fuel = 0;
		if (state != PS_HITSTUN && state != PS_WALL_JUMP)
		{
			sound_stop(sound_get("motorbike_move"));
			sound_stop(sound_get("motorbike_idle"));
			sound_stop(sound_get("motorbike_stop"));
			sound_play(sound_get("motorbike_stop"));
			if (voice == 1)
			{
				sound_stop(sound_get ("comeon"));
				sound_play(sound_get ("comeon"));
			}
			set_attack(AT_DSPECIAL_2);
		}
	}
	if (state!=PS_ATTACK_AIR && state!=PS_ATTACK_GROUND && motorbike == true)
	{
		comboCounter = 0;
	}
}

if (bikeExplosion == true)
{
	sound_stop(sound_get("xplode2"));
	sound_play(sound_get("xplode2"));
	bikeExplosion = false;
}

//Reset Wall jumps and certain cooldowns
if (!free)
{
	if (state !=PS_ATTACK_GROUND)
	{
		walljump_number = 0;
	}
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_DAIR] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
}
else
{
	move_cooldown[AT_DSPECIAL] = 200;
}

//Bike can cling to walls, check for this
can_wall_cling = ((motorbike = true && y > SD_Y_POS + 150 && hitpause == false)? true : false );

//Enables the ability to ride up walls
if (clinging == true && hitpause == false)
{
	if(floor(state_timer/4) == state_timer /4)
	{
		spawn_base_dust(x - 20 *spr_dir, y + 30, "wallride");
		spawn_base_dust(x - 20 *spr_dir, y - 30, "wallride");
	}
	sound_stop(sound_get("motorbike_move"));
	sound_play(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	vsp = -7;
	
	if (old_vsp == 7 && vsp !=7)
	{
		old_vsp = 0;
		vsp = 0;
	}
	if (clinging == false)
	{
		old_vsp = 0;
		vsp = 0;
		set_state(PS_IDLE_AIR);
	}
}

//Counts the dodges for a voice line

if (state = PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
	if (dodgeCounter = 249)
	{
		dodgeTaunt = true;
		dodgeCounter = 0;
	}
	else
	{
		dodgeCounter++;
	}
}

if (dodgeTaunt == true)
{
	dodgeTaunt = false;
	if (voice = 1)
	{
		sound_stop(sound_get ("try_and_catch_me"));
		sound_play(sound_get ("try_and_catch_me"));
	}
}

with (oPlayer) 
{
	//Custon Galaxy Effect
	if (player != other.player && activated_kill_effect && last_player == other.player && state_timer == 0)
	{
		with (other)
		{
			switch (attack)
			{
				case AT_JAB:
				case AT_FTILT:
				case AT_FAIR:
				case AT_NAIR:
				case AT_DTILT:
				case AT_FSTRONG:
				case AT_FSTRONG_2:
				case AT_NSPECIAL:
				case AT_NSPECIAL_2:
				case AT_FSPECIAL:
				case AT_FSPECIAL_2:
				case AT_EXTRA_1:
				case AT_EXTRA_2:
				case 43:
				case 44:
				case 45:
				case 47:
				case 48:
					galaxy_effect_sprite_index = sprite_get("galaxy_right");
				break;
				case AT_BAIR:
				case 39:
					galaxy_effect_sprite_index = sprite_get("galaxy_left");
				break;
				case AT_UTILT:
				case AT_UAIR:
				case AT_USTRONG:
				case AT_USTRONG_2:
				case AT_USPECIAL:
				case AT_USPECIAL_2:
				case AT_DSTRONG:
				case AT_DSTRONG_2:
				case 42:
				case 46:
					galaxy_effect_sprite_index = sprite_get("galaxy_up");
				break;
				case AT_DAIR:
				case AT_DSPECIAL_AIR:
				case 40:
					galaxy_effect_sprite_index = sprite_get("galaxy_down");
				break;
				default:
				break;
			}
			if (!instance_exists(galaxy_effect))
			{
				var top_left_x = floor(view_get_xview());
				var top_right_x = floor(view_get_xview()) + floor(view_get_wview());
				var top_left_y = floor(view_get_yview());
				if (spr_dir = 1)
				{
					galaxy_effect = instance_create(top_left_x - 52, top_left_y - 100, "obj_article1");
				}
				else
				{
					galaxy_effect = instance_create(top_right_x + 52, top_left_y - 100, "obj_article1");
				}
			}
		}
	}
	//Unique quote if Lilac is KO'd
	if (player != other.player && (state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1) 
	{
		switch (url)
		{
			case "2697174282":
			case "1870616155":
			case "1897152603":
	 		with (other)
	 		{
				if (voice == 1)
				{
					sound_stop(sound_get ("hold_on_lilac"));
					sound_play(sound_get ("hold_on_lilac"));
				}
	 		}
	 		break;
	 		default:
	 		with (other)
	 		{
				if (voice == 1)
				{
					sound_stop(sound_get ("did_you_see_that"));
					sound_play(sound_get ("did_you_see_that"));
				}
	 		}
	 		break;
	 	}
	}
}

//The bike ready sounds should only play once.
if (bikeReady == 1)
{
	sound_stop(sound_get ("motorbike_spin"));
	sound_play(sound_get ("motorbike_spin"));    		
	if (voice == 1)
	{
		sound_stop(sound_get ("aw_yeah"));
		sound_play(sound_get ("aw_yeah"));
	}
	bikeReady = 2;
}


//Prevents stun lock if you run into someone with the bike
if (bike_hit == true)
{
	bike_hit_timer++;
	if (bike_hit_timer >=20)
	{
		attack_end(AT_EXTRA_1);
		bike_hit = false;
	}
}

//Sprite Index animations for tail and bike

if (tsprite_index!=-1)
{
	timage_index=(timage_index+timage_speed)%timage_number;
}

if (bsprite_index!=-1)
{
	bimage_index=(bimage_index+bimage_speed)%bimage_number;
}

//Since Move Cooldowon doesn't work on extra indexes here's some code to make it work

if (move_cooldown[3] > 0)
{
	move_cooldown[3] = move_cooldown[3] - 1;
}

if (move_cooldown[43] > 0)
{
	move_cooldown[43] = move_cooldown[43] - 1;
}

if (move_cooldown[45] > 0)
{
	move_cooldown[45] = move_cooldown[45] - 1;
}

if (move_cooldown[46] > 0)
{
	move_cooldown[46] = move_cooldown[46] - 1;
}

if (move_cooldown[47] > 0)
{
	move_cooldown[47] = move_cooldown[47] - 1;
}
if (move_cooldown[48] > 0)
{
	move_cooldown[48] = move_cooldown[48] - 1;
}

//Check for Practicse mode
if (get_match_setting(SET_PRACTICE) == true)
{
	practice = true;
	practice_hud_clearance++;
}

//print_debug(string(hsp));
prev_hsp = hsp;
//print_debug("Time:" + string(current_time-ct));

//Dialogue Buddy
if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Carol"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
                "You're no match for this Kung-Fu Kitty",
                "Me and my bike are going to destroy you",
                "You wanna fight? Come and get it!"];

	if (diag == "You're no match for this Kung-Fu Kitty")
	{
		diag_index = 0;
	}
	if  (diag == "Me and my bike are going to destroy you")
	{
		diag_index = 1;
	}
	
	if  (diag == "You wanna fight? Come and get it!")
	{
		diag_index = 2;
	}

//  Specific Character Interactions

//  Regular dialogue
	//Lilac
    if(otherUrl == "2697174282" && diag != "") //Change the url into a specific character's
    {
        diag = "Can't you be Little Miss Heropants some other time?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "1870616155" && diag != "") //Change the url into a specific character's
    {
        diag = "Can't you be Little Miss Heropants some other time?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "1897152603" && diag != "") //Change the url into a specific character's
    {
        diag = "Can't you be Little Miss Heropants some other time?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

	//Amber    
    if(otherUrl == "2229887722" && diag != "")
    {
        diag = "Look... I don't want to fight you as much as you don't want to fight me!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!    	
    }
    
    if(otherUrl == "2787919458" && diag != "")
    {
        diag = "Uhhhh... what exactly am i fighting right now?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!    	
    }
    
    //Otto
    if(otherUrl == "2283018206" && diag != "")
    {
        diag = "You have a bike too! let's see which one of us has the better bike!";
        diag_index = 0;    	
    }

    //Wario (DE)
	if(otherUrl == "2946784030" && diag != "")
	{
        diag = "You have a bike too! let's see which one of us has the better bike!";
        diag_index = 0;	
	}
	//Mira (Flophawk)
    if(otherUrl == "2895402617" && diag != "")
    {
        diag = "You have a bike too! let's see which one of us has the better bike!";
        diag_index = 0;
    }

	//Kick
    if(otherUrl == "1978251132" && diag != "")
    {
        diag = "You have a bike too! let's see which one of us has the better bike!";
        diag_index = 0;
    }

	//Lancer
    if(otherUrl == "2627476892" && diag != "")
	{
        diag = "You have a bike too! let's see which one of us has the better bike!";
        diag_index = 0;		
	}

    if (otherUrl == "2109435121" && diag != "")
    {
        diag = "I guess Lilac isn't the only dragon left after all huh?";
        diag_index = 0; 	
    }
   
	if (otherUrl == "2780876151" && diag != "")
	{
        diag = "I guess Lilac isn't the only dragon left after all huh?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!    	   	
	}
	
	if (otherUrl == "2022171690" && diag != "")
	{
        diag = "I guess Lilac isn't the only dragon left after all huh?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction! 		
	}

	if (otherUrl == "1879932407" && diag != "")
	{
        diag = "I guess Lilac isn't the only dragon left after all huh?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction! 		
	}

	//Daora
	if (otherUrl == "2605304929" && diag != "")
	{
        diag = "I guess Lilac isn't the only water dragon left after all huh?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction! 		
	}

	//SSL Lilac	
	if (otherUrl == "2822151579" && diag != "")
	{
		diag = "Lilac? Is that you? You look kind of pale, what happened?";
		diag_index = 0;
	}
	
	//Shantae
	if (otherUrl == "2890757258" && diag != "")
	{
		diag = "You know, you remind me of my friend Lilac quite a lot!";
		diag_index = 0;
	}
	
	//Crewmate
	if (otherUrl == "2217843818" && diag != "")
	{
		diag = "Something seems kind of sus here!";
		diag_index = 0;		
	}
	
	if (otherUrl == CH_ELLIANA && diag != "")
	{
        diag = "A snake in a machine huh? That reminds me of someone...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction! 		
	}
   
//  NRS/3-Part dialogue
    if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Cory? What are you doing here and why do you look different?",
                "Hey look Lilac it's my identical twin sister!",
                "Didn't know Pangu's holograms could be this realistic!"]
            }
            
			diag_index = 0;
        }
    }
}

#define spawn_base_dust // originally by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "wallride":dlen = 24; dfx = 3; dfg = 2626; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    case "fastfall": dlen = 44; dfx = 17; dfg = 2657; dust_color = 1; break;
}
var newdust = spawn_dust_fx(round(x),round(y),asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;