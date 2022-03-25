//Hold Taunt down to keep dancing!
if (attack == AT_TAUNT && motorbike == false){
    if (!taunt_down){
        window = 2;
        window_timer = 1;
    }
}

//If voice is on, this taunt has a voice line
if (attack == AT_TAUNT_2 && motorbike == true){
    if (state_timer == 1 && window == 1 && voice == 1)
   	{
		sound_stop(sound_get ("feel_my_power"));
		sound_play(sound_get ("feel_my_power"));
   	}
}

//Code for bounce move
if (attack==AT_DAIR && motorbike == false)
{
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
	//Cooldown to prevent the move from being spammed, since its so good
	if (window = 2 && window_timer == 10)
	{
		move_cooldown[AT_DAIR] = 40;
	}
}

if (attack==40 && motorbike == true)
{
	//We're dropping the bike from midair, so should reset values back to default
	sound_stop(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	sound_stop(sound_get("motorbike_stop"));
	//Voice clip
	if (window == 1 && window_timer == 1)
	{
		if (voice == 1)
		{
			sound_stop(sound_get ("look_up"));
			sound_play(sound_get ("look_up"));
		}
	}
	
	//The following code is resetting values back to default as declared in init.
	motorbike = false;
	bikeReady = 0;
	walk_speed = 3;
	initial_dash_speed = 5;
	dash_speed = 7;
	dash_stop_time = 4;
	jump_speed = 10;
	short_hop_speed = 10;
	max_djumps = 1;
	hurtbox_spr = asset_get("ex_guy_hurt_box");
	crouchbox_spr = asset_get("ex_guy_crouch_box");
	jump_sound = sound_get("jump");
	djump_sound = sound_get("spin_jump");
	
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
	    jump_speed = 13;
	}
}

//Jab and Tilt Combo cancels
if (((attack==AT_JAB || attack==AT_FTILT || attack=AT_UTILT || attack=AT_DTILT) && motorbike == false)
	|| ((attack >= 45 && attack <= 48) && motorbike == true))
{
	//Mix up jab quotes so that it doesn't get tired
	var	 choose_quote = random_func(16, 15, 1);
	if((window == 1 || window == 4 || window == 6) && window_timer == 1)
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
	//In order to prevent infinite combos, a counter is used to limit the amount of times you can change the current jab
	if (comboCounter < 2 )
	{
		if ((window == 3 || window == 5 || window == 7) && window_timer == 1)
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
			if (attack == AT_FTILT && can_attack)
			{
				if ((up_pressed || up_down) && attack_pressed )
				{
					set_attack(AT_UTILT);
				}
				else if ((down_pressed || down_down ) && attack_pressed )
				{
					set_attack(AT_DTILT);
				}
				else if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
				&& !up_down && !down_pressed && !down_down)
				{
					set_attack(AT_JAB);
				}
			}
			if (attack == AT_UTILT && can_attack)
			{
				if (spr_dir == 1 && (right_pressed || right_down) && attack_pressed)
				{
					set_attack(AT_FTILT);
				}
				else if (spr_dir == -1 && (left_pressed || left_down) && attack_pressed)
				{
					set_attack(AT_FTILT);
				}			
				else if ((down_pressed || down_down) && attack_pressed )
				{
					set_attack(AT_DTILT);
				}
				else if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
				&& !up_down && !down_pressed && !down_down)
				{
					set_attack(AT_JAB);
				}
			}
			if (attack == AT_DTILT && can_attack)
			{
				if (spr_dir == 1 && (right_pressed || right_down) && attack_pressed)
				{
				set_attack(AT_FTILT);
				}
				else if (spr_dir == -1 && (left_pressed || left_down) && attack_pressed)
				{
					set_attack(AT_FTILT);
				}			
				else if ((up_pressed || up_down) && attack_pressed )
				{
					set_attack(AT_UTILT);
				}
				else if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
				&& !up_down && !down_pressed && !down_down)
				{
					set_attack(AT_JAB);
				}
			}
			if (attack == 47 && can_attack)
			{
				if ((up_pressed || up_down) && attack_pressed )
				{
					set_attack(46);
				}
				else if ((down_pressed || down_down ) && attack_pressed )
				{
					set_attack(45);
				}
				else if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
				&& !up_down && !down_pressed && !down_down)
				{
					set_attack(48);
				}
			}
			if (attack == 46 && can_attack)
			{
				if (spr_dir == 1 && (right_pressed || right_down) && attack_pressed)
				{
					set_attack(47);
				}
				else if (spr_dir == -1 && (left_pressed || left_down) && attack_pressed)
				{
					set_attack(47);
				}			
				else if ((down_pressed || down_down) && attack_pressed )
				{
					set_attack(45);
				}
				else if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
				&& !up_down && !down_pressed && !down_down)
				{
					set_attack(48);
				}
			}
			if (attack == 45 && can_attack)
			{
				if (spr_dir == 1 && (right_pressed || right_down) && attack_pressed)
				{
					set_attack(47);
				}
				else if (spr_dir == -1 && (left_pressed || left_down) && attack_pressed)
				{
					set_attack(47);
				}			
				else if ((down_pressed || down_down) && attack_pressed )
				{
					set_attack(46);
				}
				else if (!right_pressed && !left_pressed && !right_down && !left_down && !up_pressed
				&& !up_down && !down_pressed && !down_down)
				{
				set_attack(48);
				}
			}
		}
		
		//Increment counter if cancel into a different attack
		if (can_attack && attack_pressed)
		{
			comboCounter++;
		}
	}
	//Add small cooldown if attack plays out fully, for balancing reasons
	else if (comboCounter == 2)
	{
		if (window == 7 && window_timer == 1)
		{
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
}

//Voice clip for Strong
if (attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG_2 
|| attack == AT_USTRONG_2 || attack == AT_FSTRONG_2)
{
	if (window == 1 && window_timer == 1)
	{
		var make_quote = random_func(15, 12, 1);
		if (voice == 1)
		{
			sound_stop(make_quote <6? sound_get ("carol_attack_voice1") : sound_get ("carol_attack_voice3"));
			sound_play(make_quote <6? sound_get ("carol_attack_voice1") : sound_get ("carol_attack_voice3"));
		}
	}
}

//Voice clip for Fair
if (attack == AT_FAIR)
{
	if (voice == 1 && window == 2 && window_timer == 1)
	{
		sound_stop(sound_get ("carol_up_special"));
		sound_play(sound_get ("carol_up_special"));
	}
}

//Following code governs Wild Kick
if ((attack=AT_NSPECIAL && motorbike == false) || (attack=AT_NSPECIAL_2 && motorbike == true))
{
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
	super_armor=true;
	can_move=false;
	can_shield=true;
	can_fast_fall=false;
	can_jump=true;
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
	
	//Increase Kick Time to make the meter drain during the attack
	if (window == 2)
	{
		kickTime++;
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
}

//Jump Disc
if (attack == AT_FSPECIAL && motorbike == false)
{
	//Shield cancellable
	can_shield = true;
	//Since this move provides great recovery, the ability to wall jump should be restricted
	walljump_number= 4;
	//Voice line
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
	//If you simply throw the disc without zooming towards it, this attack ends the move and prevents it moving to window 3	
	if (window == 2 && window_timer == 24)
	{
		move_cooldown[AT_FSPECIAL] = 60;
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
	if (window == 3)
	{
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
	}
	
	//This code allows Carol to jump off enemies and immediately bounce up if she hits a wall
	if (window == 3 && hsp == 0)
	{
		window = 4;
	}
	//Set Cooldown at the very end of the move
	if (window = 4 && window_timer == 32)
	{	
		move_cooldown[AT_FSPECIAL] = 60;
	}
}

//Pounce voice line
if (attack==AT_EXTRA_2 && motorbike == false)
{
	if (window == 1 && window_timer == 1)
	{
		if (voice == 1)
		{
			sound_stop(sound_get ("carol_pounce_voice"));
			sound_play(sound_get ("carol_pounce_voice"));
		}
	}
}

//Nitro Boost
if (attack==AT_FSPECIAL_2 && motorbike == true)
{
	//Voice
	if (window == 1 && window_timer == 1)
	{
		if (voice == 1)
		{
			sound_stop(sound_get ("go2"));
			sound_play(sound_get ("go2"));
		}
		//Nitro effect at start of move
		var nitro = spawn_hit_fx(x - 40 * spr_dir, y -32, nitro_boost);
		nitro.depth = -100;
	}
	//Effects to enhance move
	var smallspark = spawn_hit_fx(x - 40 * spr_dir, y-32 , smallsparkle);
	smallspark.depth = -100;
	//Set Cooldown
	if (window == 2 && window_timer == 27)
	{
		move_cooldown[AT_FSPECIAL_2] = 40;
	}
}

//Rising Wild Claw
if (attack==AT_USPECIAL && motorbike == false)
{
	//Can be cancelled if right is down, linking into Jump Disc
	can_special = right_down;
	//Voice clip
	if (window == 1 && window_timer == 1)
	{
		if (voice == 1)
		{
			sound_stop(sound_get ("carol_up_special"));
			sound_play(sound_get ("carol_up_special"));
		}
	}
	//Set cooldown
	move_cooldown[AT_USPECIAL]=120;
}

//Rising Wild Claw (On Bike)
if (attack==AT_USPECIAL_2 && motorbike == false)
{
	//Can be cancelled if right is down, linking into Jump Disc
	can_special = right_down;
	//Voice clip
	if (window == 1 && window_timer == 1)
	{
		if (voice == 1)
		{
			sound_stop(sound_get ("carol_up_special"));
			sound_play(sound_get ("carol_up_special"));
		}
	}
	//Set cooldown
	move_cooldown[AT_USPECIAL_2]=120;
}

//Charge Up code
if (attack==AT_DSPECIAL && motorbike == false) {
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
    		if (fuel_charge > 15)
    		{
    			fuel = fuel + 1;
    			fuel_charge = 0;
    		}    		
    	}
    	else
    	{
    		//Increase the fuel when the amount of time is reached
		 	if (fuel_charge > 30)
	    	{
	    		fuel = fuel + 1;
	    		fuel_charge = 0;
	    	}
    	}
    	//Move requires you to hold down special, releasing special moves to window 2 which leaves you vulnerable
    	
    	if (get_gameplay_time() >= 140)
    	{
			timer2 = get_game_timer();
    		if (timer1 == timer2 && timer1 != 0 && !practice)
	    	{
        		practice = true;
	    	}
    	}
    	
    	if (practice)
    	{
    		if (shield_pressed)
        	{
        		fuel = 40;
        		fuel_charge = 0;
        	   	window = 2;
    	    	window_timer = 1;
	    		bsprite_index = -1
        	}
    	}
    	
    	if (!special_down){
        	window = 2;
        	window_timer = 1;
    		bsprite_index = -1
    	}
    	//If fuel reaches full capacity, automatically end move
    	if (fuel >=40)
    	{
    		window = 2;
        	window_timer = 1;
    		bsprite_index = -1
    		fuel = 40;
    	}
    	//This code makes sure the conformation sound plays, but only once
    	if (window == 2 && window_timer == 1 && fuel >=40 && bikeReady == 0)
    	{
    		sound_stop(sound_get ("motorbike_idle"));
    		bikeReady = 1;
    	}
    }
}

//Getting on the bike
if (attack==AT_EXTRA_1)
{
	if (window == 1 && window_timer == 1)
	{
		//Voice line
		if (voice == 1)
		{
			sound_stop(sound_get ("go"));
			sound_play(sound_get ("go"));
		}
		//Spinning bike in the startup of the animation
		tsprite_index = -1;
		bsprite_index = sprite_get("bike_assembly");
		brotation=0;
		bimage_number=8;
		bimage_speed=05.;
		bfront=true;
		bx=-40*spr_dir;
		by=-80;
		bsx=1;
		bsy=1;
	}
	if (window == 2)
	{
		//Remove the spinning bike
		tsprite_index = -1;
		bsprite_index = -1;
		
		//Carol's attributes change on the bike, the following code ensures the bike handles properly
		motorbike = true;
		walk_speed = 6;
		initial_dash_speed = 10;
		dash_speed = 11;
		dash_stop_time = 12;
		djump_speed = 10;
		hurtbox_spr = sprite_get("bike_hurtbox");
		crouchbox_spr = sprite_get("bike_crouch_hurtbox");
		jump_sound = sound_get("motorbike_wheelie");
		djump_sound = sound_get("motorbike_spin");
	}
}

//This code handles getting off the bike
if (attack==AT_DSPECIAL_2)
{
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
		walk_speed = 3.25;
		initial_dash_speed = 7;
		dash_speed = 7;
		dash_stop_time = 4;
		jump_speed = 10;
		djump_speed = 5;
		hurtbox_spr = asset_get("ex_guy_hurt_box");
		crouchbox_spr = asset_get("ex_guy_crouch_box");
		jump_sound = sound_get("jump");
		djump_sound = sound_get("spin_jump");
		
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
			jump_speed = 13;
		}
		
		if has_rune("O")
		{
	    	jump_speed = 15;
			walk_accel = 0.8;
    		initial_dash_time = 9;
			initial_dash_speed = 8;
    		dash_turn_time = 8;
    		dash_turn_accel = 1.5;
		}
	}
}

//Prevent the spam of Forward Air on bike and prevent the use of horizontal recovery during the move
if (attack == 43 && motorbike == true)
{
	hsp = 0;
	if (window == 5 && window_timer == 14)
	{
		move_cooldown[43] = 10;
	}
}

//If use the dash attack, remove the hitbox on the front of the bike while moving
if (attack == 3 && motorbike == true)
{
	attack_end(AT_EXTRA_1);
	bike_hit = false;
}