//update

//Charge the meter
if (feline_power = false)
{
	kickTime = 0;
	multikick_energy = (motorbike? 200 - move_cooldown[AT_NSPECIAL_2] : 200 - move_cooldown[AT_NSPECIAL]);
}

if (move_cooldown[AT_NSPECIAL] == 0 && kickTime > 0)
{
	feline_power = true;
}

//Stop charging if meter is full
if (multikick_energy == 200)
{
	feline_power = true;
	meterShine++;
	if (meterShine == 174)
	{
		meterShine = 0;
	}
}


if (motorbike == false)
{
	//Reset values back to default if coming from the bike
	char_height = 50;
	walk_speed = 3.25;
	initial_dash_speed = 7;
	dash_speed = 7;
	dash_stop_time = 4;
	short_hop_speed = 5;
	jump_speed = 11.5;
	djump_speed = 3;
	ground_friction= .35;
	hurtbox_spr = sprite_get("carol_hurtbox_standing");
	crouchbox_spr = sprite_get("carol_hurtbox_crouch");
	jump_sound = sound_get("jump");
	djump_sound = asset_get("sfx_jumpair");
	//Bike doesn't have idle fidget, this gives the fidget back
	wait_time = 400;
	
	//Abyss Runes reset, just in case!
	if has_rune("B"){
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
	
	if (free==false){
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
	if (walljump_number >= 2)
	{
		move_cooldown[AT_FSPECIAL] = 40;
	}
	
	//This code animated the tail and adds an effect to Parry depending on state
	if (state!=PS_ATTACK_AIR && state!=PS_ATTACK_GROUND){
		comboCounter = 0;
		switch (state){
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
    		case PS_FIRST_JUMP:
    		case PS_WALL_JUMP:
    		case PS_IDLE_AIR:
    		tsprite_index=sprite_get("tail_jump");
			trotation=0;
			timage_number=6;
			timage_speed=0.17;
			tfront=false;
			tx=-46*spr_dir;
			ty=-66;
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
	char_height = 56;
	walk_speed = 6;
	initial_dash_speed = 10;
	dash_speed = 10;
	dash_stop_time = 12;
	djump_speed = 10;
	hurtbox_spr = sprite_get("bike_hurtbox");
	crouchbox_spr = sprite_get("bike_crouch_hurtbox");
	jump_sound = sound_get("motorbike_jump");
	djump_sound = sound_get("motorbike_spin");
	fuel_remaining = fuel;
	//Bike doesn't have idle fidget, these values should make it unlikely it's ever seen
	wait_time = 100000;
	wait_length = 16;
	wait_sprite = sprite_get("idle2");
	
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
				var smallspark = spawn_hit_fx(x - 80 * spr_dir, y-32 , smallsparkle);
					smallspark.depth = -100;			
				break;
				case PS_DASH:
					var smallspark = spawn_hit_fx(x - 80 * spr_dir, y-32 , smallsparkle);
					smallspark.depth = -100;
				break;
				case PS_FIRST_JUMP:
				case PS_IDLE_AIR:
					var smallspark = spawn_hit_fx (x - 60 * spr_dir, y - 14, smallsparkle);
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
	walljump_number = 0;
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
	sound_stop(sound_get("motorbike_move"));
	sound_play(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	vsp = -7;
	if (clinging == false)
	{
		vsp = 0;
	}
}

//Counts the dodges for a voice line

if (state = PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
	feline_power = false;
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

//Unique quote if Lilac is KO'd

with (oPlayer) {
	if (player != other.player && (state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1) {
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

if (tsprite_index!=-1){
	timage_index=(timage_index+timage_speed)%timage_number;
}

if (bsprite_index!=-1){
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

//Kirby Stuff

if (swallowed)
{
    swallowed = 0;
    var ability_spr = sprite_get("kirby_carol");
    var ability_hurt = sprite_get("kirby_carol_hurt");
    var ability_icon = sprite_get("kirby_icon");
    var ability_sound = sound_get("wild_kick");
    carol_handler_id = other;
    with enemykirby {
        newicon = ability_icon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sound);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 80);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 16);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 0);

		set_num_hitboxes(AT_EXTRA_3, 16);

		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -22);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -18);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 40);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 2, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 11);
		set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -39);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 40);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 3, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 16);
		set_hitbox_value(AT_EXTRA_3, 4, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -16);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 32);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 4, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW_CREATION_FRAME, 21);
		set_hitbox_value(AT_EXTRA_3, 5, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -14);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 28);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, 2);;
		set_hitbox_value(AT_EXTRA_3, 5, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 5, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 6, HG_WINDOW_CREATION_FRAME, 26);
		set_hitbox_value(AT_EXTRA_3, 6, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 6, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 6, HG_HEIGHT, 32);
		set_hitbox_value(AT_EXTRA_3, 6, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 6, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 6, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 6, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 6, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 6, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 7, HG_WINDOW_CREATION_FRAME, 31);
		set_hitbox_value(AT_EXTRA_3, 7, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 7, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_EXTRA_3, 7, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 7, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 7, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 7, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 7, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 7, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 7, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 7, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 7, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 8, HG_WINDOW_CREATION_FRAME, 36);
		set_hitbox_value(AT_EXTRA_3, 8, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 8, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_EXTRA_3, 8, HG_HITBOX_X, 40);
		set_hitbox_value(AT_EXTRA_3, 8, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 8, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 8, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 8, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 8, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 8, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 8, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 8, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 9, HG_WINDOW_CREATION_FRAME, 41);
		set_hitbox_value(AT_EXTRA_3, 9, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 9, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_Y, -22);
		set_hitbox_value(AT_EXTRA_3, 9, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 9, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 9, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 9, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 9, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 9, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 9, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 9, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 9, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 10, HG_WINDOW_CREATION_FRAME, 46);
		set_hitbox_value(AT_EXTRA_3, 10, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 10, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_Y, -18);
		set_hitbox_value(AT_EXTRA_3, 10, HG_HITBOX_X, 40);
		set_hitbox_value(AT_EXTRA_3, 10, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 10, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 10, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 10, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 10, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 10, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 10, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 10, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 11, HG_WINDOW_CREATION_FRAME, 51);
		set_hitbox_value(AT_EXTRA_3, 11, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 11, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 11, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 11, HG_HITBOX_Y, -39);
		set_hitbox_value(AT_EXTRA_3, 11, HG_HITBOX_X, 40);
		set_hitbox_value(AT_EXTRA_3, 11, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 11, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 11, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 11, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 11, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 11, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 11, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 11, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 11, HG_IGNORES_PROJECTILES, 1);
		
		set_hitbox_value(AT_EXTRA_3, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 12, HG_WINDOW_CREATION_FRAME, 56);
		set_hitbox_value(AT_EXTRA_3, 12, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 12, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 12, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 12, HG_HITBOX_Y, -16);
		set_hitbox_value(AT_EXTRA_3, 12, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 12, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 12, HG_HEIGHT, 32);
		set_hitbox_value(AT_EXTRA_3, 12, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 12, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 12, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 12, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 12, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 12, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 12, HG_IGNORES_PROJECTILES, 1);
		
		set_hitbox_value(AT_EXTRA_3, 13, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 13, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 13, HG_WINDOW_CREATION_FRAME, 61);
		set_hitbox_value(AT_EXTRA_3, 13, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 13, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 13, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 13, HG_HITBOX_Y, -14);
		set_hitbox_value(AT_EXTRA_3, 13, HG_HITBOX_X, 28);
		set_hitbox_value(AT_EXTRA_3, 13, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 13, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 13, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 13, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 13, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 13, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 13, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 13, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 13, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 14, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 14, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 14, HG_WINDOW_CREATION_FRAME, 66);
		set_hitbox_value(AT_EXTRA_3, 14, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 14, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 14, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 14, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_EXTRA_3, 14, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 14, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 14, HG_HEIGHT, 32);
		set_hitbox_value(AT_EXTRA_3, 14, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 14, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 14, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 14, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 14, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 14, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 14, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_EXTRA_3, 15, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 15, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 15, HG_WINDOW_CREATION_FRAME, 71);
		set_hitbox_value(AT_EXTRA_3, 15, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 15, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 15, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 15, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_EXTRA_3, 15, HG_HITBOX_X, 20);
		set_hitbox_value(AT_EXTRA_3, 15, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 15, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 15, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 15, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 15, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 15, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 15, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 15, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 15, HG_IGNORES_PROJECTILES, 1);
		
		set_hitbox_value(AT_EXTRA_3, 16, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 16, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 16, HG_WINDOW_CREATION_FRAME, 76);
		set_hitbox_value(AT_EXTRA_3, 16, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 16, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_EXTRA_3, 16, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 16, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_EXTRA_3, 16, HG_HITBOX_X, 40);
		set_hitbox_value(AT_EXTRA_3, 16, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 16, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 16, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 16, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 16, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 16, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 16, HG_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 16, HG_HIT_SFX, asset_get("sfx_blow_strong2"));
		set_hitbox_value(AT_EXTRA_3, 16, HG_IGNORES_PROJECTILES, 1);
		
		carol_handler_id = other;
		carol_has_kirby_ability=true;
    }
}
//This code makes sure Wild Kick works as intended with a copied Kirby
with (oPlayer) if (carol_handler_id = other)
{
	if (carol_has_kirby_ability)
	{
		//Check if Kirby still has ability
		if (current_ability==0){
			carol_handler_id = noone;
			carol_has_kirby_ability = false;
			move_cooldown[AT_EXTRA_3]= 0;
		}
		else if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	             && attack == AT_EXTRA_3)
		{
			can_move=false;
			// *sigh* unfortunately you can't put cancels on Kirby abilities so he will have to go without them
			can_fast_fall=false;
			if (window == 2)
			{
				super_armor=true;
			}
			if (window == 2 && window_timer == 79)
			{
				move_cooldown[AT_EXTRA_3]= 200;
			}
			//Remove Super Armour in final window
			if (window == 3)
			{
				super_armor=false;
			}
		}
	}
}

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
    
    if(otherUrl == "2283018206" && diag != "")
    {
        diag = "You have a bike too! let's see which one of us has the better bike!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!    	
    }
    
    if (otherUrl == "2109435121" && diag != "")
    {
        diag = "I guess Lilac isn't the only dragon left after all huh?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!    	
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