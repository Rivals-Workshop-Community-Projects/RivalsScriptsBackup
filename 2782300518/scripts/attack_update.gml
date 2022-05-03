if (motorbike == false)
{
	switch (attack)
	{
		//Hold Taunt down to keep dancing!
		case AT_TAUNT:
		if (!taunt_down){
			window = 2;
	    	window_timer = 1;
		}
     	break;
     	//Add Cooldown to Dash Attack at end
		case AT_DATTACK:
		if (window == 3 && window_timer == 9)
		{
			move_cooldown[AT_DATTACK] = 30;
		}
		break;
		//Code for bounce move
		case AT_DAIR:
		//Allow for move cancelling through special or shield
		can_shield = true;
		can_special = true;
		var after_effect= spawn_hit_fx(x-35 * spr_dir, y-77, dair_aftereffect);
		after_effect.depth = +10;
		//Check if bounce is in effect
		if (vsp == 18)
		{
			if (window == 1 && has_hit)
			{
				//If bounce off anything, move to window 2
				window = 2;
			}
		}
		if (vsp == 0)
		{
			destroy_hitboxes();
		}
		//Cooldown to prevent the move from being spammed, since its so good
		if (window = 2 && window_timer == 10)
		{
			move_cooldown[AT_DAIR] = 40;
		}
		if (can_shield && shield_pressed)
		{
			move_cooldown[AT_DAIR] = 40;
		}
		if (can_special && special_pressed)
		{
			move_cooldown[AT_DAIR] = 40;		
		}
		break;
		//Voice clip for Fair
		case AT_FAIR:
		if (voice == 1 && window == 2 && window_timer == 1)
		{
			sound_stop(sound_get ("carol_up_special"));
			sound_play(sound_get ("carol_up_special"));
		}
		break;
		
		//Jump Disc
		case AT_FSPECIAL:
		can_fast_fall = false;
		//Since this move provides great recovery, the ability to wall jump should be restricted
		walljump_number= 4;
		//Voice line
		
		//Clamp Speed
		if (window < 3)
		{
			vsp = clamp(vsp, -2, 2);
		}
		
		if (window > 1 || (window == 1 && window_timer > 7))
		{
			//Shield cancellable
			can_shield = true;
		}
		
		if (window == 1 && window_timer == 1)
		{
			if (voice == 1)
			{
				sound_stop(sound_get ("go2"));
				sound_play(sound_get ("go2"));
			}
		}
		
		//You can throw the disc normally, or hold down Special to zoom towards it
		if (window == 2 && window_timer == 1 && special_down)
		{
			window = 3;
		}
		
		if (window == 2 && window_timer > 1 && window_timer < 24)
		{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		}
		//If you simply throw the disc without zooming towards it, this attack ends the move and prevents it moving to window 3	
		if (window == 2 && window_timer == 24)
		{
			moveDisc = true;
			move_cooldown[AT_FSPECIAL] = 60;
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
			destroy_hitboxes();
			attack_end();
			set_state(free?PS_IDLE_AIR:PS_IDLE);
		}
		//If the move if shield cancelled, set cooldown, this can be used to cancel vertical momentum from the jump if needed
		if (shield_pressed)
		{
			move_cooldown[AT_FSPECIAL] = 60;		
		}
		
		//Effect generation to make the move look more flashy (and like the FP2 Demo that it comes from)
		if (window > 2)
		{
			switch (window_timer)
			{
				case 1:
				case 5:
				case 9:
				case 13:
				case 17:
				case 21:
				case 25:
				case 29:
						var smallspark = spawn_hit_fx(x - 20 * spr_dir, y-30 , smallsparkle);
					smallspark.depth = -100;
				break;
				default:
				break;
			}
		}
		if (window == 3 && window_timer == 1)
		{
			var disc_direction = point_direction(x, y,Fspecial_positionX, Fspecial_positionY);
			var disc_distance = point_distance(x, y, Fspecial_positionX, Fspecial_positionY);
			hsp = lengthdir_x (disc_distance, disc_direction) / 25;
			vsp = lengthdir_y(disc_distance, disc_direction) / 25;
			
			if (!free && y < Fspecial_positionY)
			{
				destroy_hitboxes();
				attack_end();
			}
		}
		if (window == 3)
		{
			can_move = false
			moveDisc = false;
		}
		
		//This code allows Carol to jump off enemies and immediately bounce up if she hits a wall
		if (window == 3 && hsp == 0)
		{
			window = 4;
			sound_stop(sound_get ("spin_jump"));
			sound_play(sound_get ("spin_jump"));
		}
		if (window = 4 && window_timer == 1)
		{
			//restore ability to move
			can_move = true;
		}
		//Set Cooldown at the very end of the move
		if (window == 4 && window_timer == 32)
		{
			moveDisc = true;
			move_cooldown[AT_FSPECIAL] = 60;
		}
		break;
		
		//Rising Wild Claw
		case AT_USPECIAL:
		//Voice clip
		if (window == 1 && window_timer == 1)
		{
			if (voice == 1)
			{
				sound_stop(sound_get ("carol_up_special"));
				sound_play(sound_get ("carol_up_special"));
			}
		}
		if (window == 3 || (window == 2 && window_timer >= 4))
		{
			can_wall_jump = true;
		}
		//Set cooldown
		move_cooldown[AT_USPECIAL]=120;
		break;
		
		//Charge Up code
		case AT_DSPECIAL:
		if (state_timer == 1 && chargeUpVoiceLine == true)
		{
			if (voice == 1)
			{
				sound_stop(sound_get ("charge_up"));
				sound_play(sound_get ("charge_up"));
			}
			chargeUpVoiceLine = false;
		}
		
		//Bike behind Carol
    	if (window == 1)
    	{
			tsprite_index = -1;
			bsprite_index = sprite_get("bike_charge");
			brotation=0;
			bimage_number=1;
			bimage_speed=0.25;
			bfront=false;
			bx=-40*spr_dir;
			by=-80;
			bsx=1;
			bsy=1;
			//Rate of how long fuel increases
		 	fuel_charge++;
    		//Abyss Runes, charge fuel faster if rune C is selected
		 	if has_rune ("C")
    		{
    		if (fuel_charge > 6)
    			{
    				fuel = fuel + 1;
    				fuel_charge = 0;
    			}    		
    		}
    		else
    		{
    			//Increase the fuel when the amount of time is reached
				if (fuel_charge > 12)
	    		{
	    			fuel = fuel + 1;
	    			fuel_charge = 0;
	    		}
    		}
		 	//Move requires you to hold down special, releasing special moves to window 2 which leaves you vulnerable
    	
    		if (practice)
    		{
    			if (shield_pressed)
        		{
        			fuel = 40;
        			fuel_charge = 0;
        		   	window = 2;
    			 	window_timer = 0;
	    			bsprite_index = -1
    	    	}
	    	}
    	
    		if (!special_down){
    	 		window = 2;
		     	window_timer = 0;
				bsprite_index = -1
    		}
		 	//If fuel reaches full capacity, automatically end move
			if (fuel >=40)
    		{
    			window = 2;
    		 	window_timer = 0;
    			bsprite_index = -1
    			fuel = 40;
    		}
    	}
   		//This code makes sure the conformation sound plays, but only once	
   		if (window == 2 && window_timer == 0 && fuel >=40 && bikeReady == 0)
		{
			sound_stop(sound_get ("motorbike_idle"));
			bikeReady = 1;
	   	}
		break;
		
		//Getting on the bike
		case AT_EXTRA_1:
		if (window == 1 && window_timer == 1)
		{
			//Spinning bike in the startup of the animation
			tsprite_index = -1;
			bsprite_index = sprite_get("bike_assembly");
			brotation=0;
			bimage_number=8;
			bimage_speed=0.5;
			bfront=true;
			bx=-40*spr_dir;
			by=-80;
			bsx=1;
			bsy=1;
			returnBike = false;
			if (move_cooldown[AT_NSPECIAL] > 0)
			{
				feline_power = false;
				move_cooldown[AT_NSPECIAL]= 200;
				move_cooldown[AT_NSPECIAL_2]= 200;
			}
			//Voice line
			if (voice == 1)
			{
				sound_stop(sound_get ("go"));
				sound_play(sound_get ("go"));
			}
		}
		if (window == 1 && window_timer == 16)
		{
			//Remove the spinning bike
			tsprite_index = -1;
			bsprite_index = -1;
			move_cooldown[43] = 240;
		}

		if (window == 2)
		{
			//Carol's attributes change on the bike, the following code ensures the bike handles properly
			motorbike = true;
		}
		break;
		
		//Pounce
		case AT_EXTRA_2:
		if (window == 1 && window_timer == 1)
		{
			if (voice == 1)
			{
				sound_stop(sound_get ("carol_pounce_voice"));
				sound_play(sound_get ("carol_pounce_voice"));
			}
		}
		if (window == 1)
		{
			if (left_pressed || left_down && spr_dir == 1 && !pounceChange)
			{
				spr_dir = -1;
				tx=-45*spr_dir;
				hsp = 0;
				hsp = -6;
				destroy_hitboxes();
				create_hitbox( AT_EXTRA_2, 1, x + 20, y-21);
				pounceChange = true;
			}
			if (right_pressed || right_down && spr_dir == -1 && !pounceChange)
			{
				spr_dir = 1;
				tx=-45*spr_dir;
				hsp = 0;
				hsp = 6;
				destroy_hitboxes();
				create_hitbox( AT_EXTRA_2, 1, x + 20, y-21);
				pounceChange = true;
			}
		}
		can_attack = true;
		can_special = true;
		can_shield = true;
		can_strong = true;
		if (walljump_number < walljump_limit)
		{
			can_wall_jump = true;
			has_walljump = true;
		}
		if (hsp == 0 && place_meeting(x + 80 * spr_dir, y, asset_get("par_block")))
		{
			if (can_wall_jump && has_walljump && jump_down && walljump_number < walljump_limit)
			{
				spr_dir = -spr_dir;
				has_walljump = false;
				pounceChange = false;
				set_state(PS_WALL_JUMP);
			}
		}
		if (window == 2 && window_timer == 25)
		{
			pounce = false;
			pounceChange = false;
			destroy_hitboxes();
		}
		break;
		default:
		break;
	}
}
else if (motorbike == true)
{
	switch (attack)
	{
		case AT_TAUNT_2:
		//If voice is on, this taunt has a voice line
		if (state_timer == 1 && window == 1 && voice == 1)
	   	{
	   		sound_stop(sound_get ("feel_my_power"));
			sound_play(sound_get ("feel_my_power"));
	   	}
		break;


		//Nitro Boost
		case AT_FSPECIAL_2:
		//Voice
		if (window == 1 && window_timer == 1)
		{
			//Set Cooldown
			move_cooldown[AT_FSPECIAL_2] = 300;
			if (voice == 1)
			{
				sound_stop(sound_get ("go2"));
				sound_play(sound_get ("go2"));
			}
			//Nitro effect at start of move
			if (hsp > - 11 && hsp < 11)
			{
				hsp = 8 * spr_dir;
			}
			var nitro = spawn_hit_fx(x - 40 * spr_dir, y -32, nitro_boost);
			nitro.depth = -100;
		}
		if (window <= 2 && window_timer < 5) 
		{
			hsp = spr_dir * 0.5 + (hsp * 1.1);
		}

		if (window == 2)
		{
			vsp = clamp(vsp, -2, 4);
			if (!hitpause)
			{
				can_attack = true;
				can_shield = true;
				can_strong = true;
				can_jump = true;
			}
			if (walljump_number < walljump_limit)
			{
				can_wall_jump = true;
				has_walljump = true;
			}
			if (floor(window_timer/3) == window_timer /3)
			{
				var smallspark = spawn_hit_fx(x - 40 * spr_dir, y-32 , smallsparkle);
				smallspark.depth = -100;
			}
			if (hsp == 0 && place_meeting(x + 80 * spr_dir, y, asset_get("par_block")))
			{
				if (can_wall_jump && has_walljump && jump_down && walljump_number < walljump_limit)
				{
					spr_dir = -spr_dir;
					has_walljump = false;
					set_state(PS_WALL_JUMP);
				}
			}
			if (!free && window_timer == 27)
			{
				set_state(PS_DASH);
				attack_end();
			}
		}
		//Effects to enhance mov	
		break;


		case AT_USPECIAL_2:
		//Voice clip
		if (window == 1 && window_timer == 1)
		{
			if (voice == 1)
			{
				sound_stop(sound_get ("carol_up_special"));
				sound_play(sound_get ("carol_up_special"));
			}
		}
		if (window == 3 || (window == 2 && window_timer >= 4))
		{
			can_wall_jump = true;
		}
		//Set cooldown
		move_cooldown[AT_USPECIAL_2]=120;
		break;


		//This code handles getting off the bike
		case AT_DSPECIAL_2:
		if (window == 1)
		{
			//End all bike sound effects
			sound_stop(sound_get("motorbike_move"));
			sound_stop(sound_get("motorbike_idle"));
			sound_stop(sound_get("motorbike_stop"));
			//Create the spinning bike
			tsprite_index = -1;
			bsprite_index = sprite_get("bike_dessembly");
			brotation=0;
			bimage_number=8;
			bimage_speed=0.5;
			bfront=true;
			bx=-40*spr_dir;
			by=-80;
			bsx=1;
			bsy=1;
			//Reset values back to default
			motorbike = false;
			bikeReady = 0;
			
			//This code resolves a glitch whereby the meter gets stuck when you do a Wild Kick while running out of fuel
			
			if (multikick_energy < 200)
			{
				feline_power = false;
				move_cooldown[AT_NSPECIAL]= 200;
				move_cooldown[AT_NSPECIAL_2]= 200;
				sound_stop(sound_get ("wild_kick"));
			}
				//Abyss Runes reset, just in case!
				if has_rune("B"){
	 				walk_accel = 0.3;
		 			walk_turn_time = 5;
					initial_dash_time = 8;
			 		initial_dash_speed = 7.75;
					dash_turn_time = 8;
				 	dash_turn_accel = 1.5;
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
				initial_dash_speed = 8;
				dash_turn_time = 8;
		 		dash_turn_accel = 1.5;
			}
		}
		break;


		//Dattack2
		case 3:
		//If use the dash attack, remove the hitbox on the front of the bike while moving and also add cooldown to Dash
		attack_end(AT_EXTRA_1);
		bike_hit = false;
		if (window == 3 && window_timer == 9)
			{
			move_cooldown[3] = 30;
		}
		break;

		//Dair2
		case 40:
		//We're dropping the bike from midair, so should reset values back to default
		sound_stop(sound_get("motorbike_move"));
		sound_stop(sound_get("motorbike_idle"));
		sound_stop(sound_get("motorbike_stop"));
		set_hitbox_value(40, 1, HG_DAMAGE, fuel_remaining / 2);
		//Voice clip
		if (window == 1 && window_timer == 1)
		{
			move_cooldown[AT_DAIR] = 15;
			if (voice == 1)
			{
				sound_stop(sound_get ("look_up"));
				sound_play(sound_get ("look_up"));
			}
		}
		
		//The following code is resetting values back to default as declared in init.
		motorbike = false;
		bikeReady = 0;
		fuel = 0;
		break;

		//Fair2
		case 43:
		//Prevent the spam of Forward Air on bike and clamp speed
		vsp = clamp(vsp, -2, 2);
		hsp = clamp(hsp, -2, 2);
		can_shield = false;
		if (window == 1 && window_timer == 1)
		{
			returnBike = false;
			if (instance_exists(thrownBike))
			{
				thrownBike.destroyed = true;
			}
		}
		if (window == 1 && window_timer == 6)
		{
			//Reset values back to default
			motorbike = false;
			bikeReady = 0;
		}
		if (window == 2)
		{

			if (!free)
			{
				set_hitbox_value(43, 1, HG_ANGLE, 45);
				move_cooldown[43] = 240;
			}
		}
		if (window == 2 && window_timer == 30)
		{
			returnBike = true;
			motorbike = true;
			if (instance_exists(thrownBike))
			{
				thrownBike.destroyed = true;
			}
		}

		if (window == 3 && window_timer == 14)
		{
			returnBike = false;
			set_hitbox_value(43, 1, HG_ANGLE, 45);
			move_cooldown[43] = 240;
		}
		break;
		default:
		break;
	}
}

switch (attack)
{
	//Jab and Tilt Combo cancels
	case AT_JAB:
	case AT_FTILT:
	case AT_UTILT:
	case AT_DTILT:
	case 45:
	case 46:
	case 47:
	case 48:
	//Mix up jab quotes so that it doesn't get tired
	var	 choose_quote = random_func(16, 15, 1);
	switch (window)
	{
		case 1:
		case 4:
		case 6:
		if (window_timer == 1)
		{
			if (choose_quote <3)
			{
				if (voice == 1)
				{
					sound_stop(sound_get ("carol_jab_voice1"));
					sound_play(sound_get ("carol_jab_voice1"));
				}
			}
			else if (choose_quote >2 && choose_quote <6)
				{
				if (voice == 1)
				{
					sound_stop(sound_get ("carol_jab_voice2"));
					sound_play(sound_get ("carol_jab_voice2"));
				}
			}
			else if (choose_quote >5 && choose_quote <9)
			{
				if (voice == 1)
				{
					sound_stop(sound_get ("carol_jab_voice3"));
					sound_play(sound_get ("carol_jab_voice3"));
				}
			}
			else if (choose_quote >8 && choose_quote <13)
			{
				if (voice == 1)
				{
					sound_stop(sound_get ("carol_jab_voice4"));
					sound_play(sound_get ("carol_jab_voice4"));
				}
			}
			else
			{
				if (voice == 1)
				{
					sound_stop(sound_get ("carol_jab_voice5"));
					sound_play(sound_get ("carol_jab_voice5"));
				}			
			}
		}
		break;
		case 3:
		if (window_timer >= 3 && attack_pressed)
		{
			window = 4;
			window_timer = 0;
		}
		else if (window_timer == 17)
		{
			set_state(PS_IDLE);
			attack_end();
		}
		break;
		case 5:
		if (window_timer >= 3 && attack_pressed)
		{
			window = 6;
			window_timer = 0;
		}
		else if (window_timer == 17)
		{
			set_state(PS_IDLE);
			attack_end();
		}
		break;
	}
	//In order to prevent infinite combos, a counter is used to limit the amount of times you can change the current jab
	if (comboCounter < 2 )
	{
		if ((window == 3 || window == 5) && window_timer == 1)
		{
			//If a direction is pressed when attacking, cancel to the specificed jab
			if (attack == AT_JAB || attack == 48)
			{
				can_attack=(has_hit && !joy_pad_idle);			
			}
			else if (attack == AT_FTILT || attack == 47)
			{
				can_attack=(has_hit && !right_pressed && !right_down && !left_pressed && !left_down);			
			}
			else if (attack == AT_UTILT || attack == 46)
			{
				can_attack=(has_hit && !up_pressed && !up_down);			
			}
			else if (attack == AT_DTILT || attack == 45)
			{
				can_attack=(has_hit && !down_pressed && !down_down);			
			}
			//This code is here to help cancel the multi hit tilts into each other for comboing
			if (can_attack)
			{
				if (attack != AT_JAB && motorbike == false)
				{
					if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
					&& !up_down && !down_pressed && !down_down && attack_pressed)	
					{
						comboCounter++;
						set_attack(AT_JAB);
					}
				}
				if (attack != AT_FTILT && motorbike = false)
				{
					if (spr_dir == 1 && (right_pressed || right_down) && attack_pressed)
					{
						comboCounter++;
						set_attack(AT_FTILT);
					}
					else if (spr_dir == -1 && (left_pressed || left_down) && attack_pressed)
					{
						comboCounter++;
						set_attack(AT_FTILT);
					}
				}
				if (attack !=AT_UTILT && motorbike == false)
				{
					if ((up_pressed || up_down) && attack_pressed )
					{
						comboCounter++;
						set_attack(AT_UTILT);
					}
				}
				if (attack !=AT_DTILT && motorbike == false)
				{
					if ((down_pressed || down_down ) && attack_pressed )
					{
						comboCounter++;
						set_attack(AT_DTILT);
					}
				}
				if (attack != 48 && motorbike == true)
				{
					if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
					&& !up_down && !down_pressed && !down_down && attack_pressed)
					{
						comboCounter++;
						set_attack(48);
					}
				}
				if (attack !=47 && motorbike == true)
				{
					if (spr_dir == 1 && (right_pressed || right_down) && attack_pressed)
					{
						comboCounter++;
						set_attack(47);
					}
					else if (spr_dir == -1 && (left_pressed || left_down) && attack_pressed)
					{
						comboCounter++;
						set_attack(47);
					}
				}
				if (attack !=46 && motorbike == true)
				{
					if ((up_pressed || up_down) && attack_pressed )
					{
						comboCounter++;
						set_attack(46);
					}
				}
				if (attack !=45 && motorbike == true)
				{
					if ((down_pressed || down_down ) && attack_pressed )
					{
						comboCounter++;
						set_attack(45);
					}
				}
			}
		}
	}
	//Add small cooldown if attack plays out fully, for balancing reasons
	else if (comboCounter == 2)
	{
		if (window == 7 && window_timer == 1)
		{
			if (voice == 1)
			{
				sound_stop(sound_get ("pow_pow"));
				sound_play(sound_get ("pow_pow"));
			}
			move_cooldown[AT_JAB] = 10;
			move_cooldown[AT_FTILT] = 10;
			move_cooldown[AT_UTILT] = 10;
			move_cooldown[AT_DTILT] = 10;
			move_cooldown[45] = 10;
			move_cooldown[46] = 10;
			move_cooldown[47] = 10;
			move_cooldown[48] = 10;
		}
	}
	break;
	//Voice clip for Strong
	case AT_DSTRONG:
	case AT_USTRONG:
	case AT_FSTRONG:
	case AT_DSTRONG_2:
	case AT_USTRONG_2:
	case AT_FSTRONG_2:
	if (window == 1 && window_timer == 1)
	{
		var make_quote = random_func(15, 12, 1);
		if (voice == 1)
		{
			if (make_quote < 4)
			{
				sound_stop(sound_get("carol_attack_voice1"));
				sound_play(sound_get("carol_attack_voice1"));
			}
			else if (make_quote > 3 && make_quote < 8)
			{
				sound_stop(sound_get("carol_attack_voice3"));
				sound_play(sound_get("carol_attack_voice3"));				
			}
			else if (make_quote > 7)
			{
				sound_stop(sound_get("carol_attack_voice4"));
				sound_play(sound_get("carol_attack_voice4"));				
			}
		}
	}
	break;
	
	//Following code governs Wild Kick
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
	//Voice line
	if (window == 1 && window_timer == 1)
	{
		if (voice == 1)
		{
			sound_stop(sound_get ("carol_attack_voice2"));
			sound_play(sound_get ("carol_attack_voice2"));
		}
	}
	//Move has super armour, restricts movement, prevents fast falling but is shield and jump cancellable
	can_move=false;
	can_fast_fall=false;

	//Increase Kick Time to make the meter drain during the attack
	if (window == 2 && !hitpause)
	{
		can_shield=(window < 3);
		super_armor=true;
		can_jump=(has_hit_player && window < 3);
		kickTime++;
		//multikick Recharge meter
		if (kickTime > 0)
		{
			multikick_energy = 200 - (kickTime * 2.5);
			remainingCharge = multikick_energy;
		}
	}


	//Set Cooldown if cancelled by jump and also trigger meter
	if (jump_pressed && can_jump)
	{
		feline_power = false;
		move_cooldown[AT_NSPECIAL]= 200;
		move_cooldown[AT_NSPECIAL_2]= 200;
		sound_stop(sound_get ("wild_kick"));
	}
	//Set Cooldown if cancelled by shield and also trigger meter
	if (shield_pressed && can_shield)
	{
		feline_power = false;
		move_cooldown[AT_NSPECIAL]= 200;
		move_cooldown[AT_NSPECIAL_2]= 200;
		sound_stop(sound_get ("wild_kick"));
	}
	
	//Set Cooldown and allow meter to refill
	if (window == 2 && window_timer == 80)
	{
		feline_power = false;
		move_cooldown[AT_NSPECIAL]= 200;
		move_cooldown[AT_NSPECIAL_2]= 200;
	}
	//Remove super armour at end of attack
	if (window == 3)
	{
		super_armor=false;
	}
	break;
	default:
	break;
}
