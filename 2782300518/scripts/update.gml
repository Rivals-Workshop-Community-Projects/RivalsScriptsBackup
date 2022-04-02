//update

//This code enables voice lines for the rest of the character
voice = (voice_toggle > 14);

//multikick Recharge meter
if (kickTime > 0)
{
	multikick_energy = 200 - (kickTime * 2.9);
	remainingCharge = multikick_energy;
}

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
	/*meterShine++;
	if (meterShine == 174)
	{
		meterShine = 0;
	}*/
}

//Carol's Doulbe jump is a pounce, so if she double jumps there should be no additional vsp
if (state==PS_DOUBLE_JUMP && motorbike == false){
	feline_power = false;
	set_state(PS_ATTACK_AIR);
	attack=AT_EXTRA_2;
   	tsprite_index = sprite_get("tail_walk");
	timage_index=0;
	timage_number=7;
	tfront=false;
	tx=-45*spr_dir;
	ty=-70;
	tsx=1;
	tsy=1;
	bsprite_index=-1;
}

//multiple Wall jumps, so that you can bounce up the same wall over and over again, just like Carol's gameplay in Freedom Planet!
if ((can_wall_jump == false || has_walljump == false) && walljump_number < walljump_limit && motorbike == false)
{
    can_wall_jump = true;
    has_walljump = true;
    if (state = PS_WALL_JUMP)
    {
    	if (state_timer = 1)
    	{
    		if (voice == 1 && motorbike == false)
    		{
    			sound_stop(sound_get ("carol_walljump"));
				sound_play(sound_get ("carol_walljump"));
    		}
		    walljump_number++;
    	}
    }
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

if (walljump_number == 5 && motorbike == false)
{
	move_cooldown[AT_FSPECIAL] = 40;
}

//Bike can cling to walls, check for this
can_wall_cling = ((motorbike = true && y > SD_Y_POS + 150)? true : false );

//Enables the ability to ride up walls
if (clinging == true)
{
	sound_stop(sound_get("motorbike_move"));
	sound_play(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	vsp = -8;
	if (clinging == false)
	{
		vsp = 0;
	}
}

//This code animated the tail and adds an effect to Parry depending on state
if (state!=PS_ATTACK_AIR && state!=PS_ATTACK_GROUND && motorbike == false){
	comboCounter = 0;
    switch (state){
     	case PS_PARRY:
     	tsprite_index=sprite_get("tail_idle");
		trotation=0;
		timage_number=12;
		timage_speed=0.25;
		tfront=false;
		tx=-45*spr_dir;
		ty=-66;
		tsx=1;
		tsy=1;
    	bsprite_index=sprite_get("energy_shield");
		brotation=0;
		bimage_number=4;
		bimage_speed=0.25;
		bfront=true;
		bx=0;
		by=0;
		bsx=1;
		bsy=1;
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
		tx=-45*spr_dir;
		ty=-66;
		tsx=1;
		tsy=1;
		bsprite_index=-1;
    	break;
    	case PS_DOUBLE_JUMP:
    	tsprite_index = sprite_get("tail_walk");
		timage_index=0;
		timage_number=7;
		tfront=false;
		tx=-45*spr_dir;
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
		tx=-45*spr_dir;
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

if (state!=PS_ATTACK_AIR && state!=PS_ATTACK_GROUND && motorbike == true)
{
	comboCounter = 0;
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
		 		break;
		 	}
		}
	}
}

//While riding the motorbike, fuel is consumed
if (motorbike == true)
{
	fuel_burn++;
	{
		if (fuel_burn > 50)
    	{
    		fuel = fuel - 1;
    		fuel_burn = 0;
    	}
	}
}

//The following code creates bike sounds
if (state == PS_IDLE && motorbike == true && fuel > 0)
{
	bike_state_timer++;
	if (state_timer = 1)
	{
		sound_play(sound_get("motorbike_idle"));
		sound_stop(sound_get("motorbike_move"));
		bike_state_timer = 1;
	}
	if (bike_state_timer = 1)
	{	
		sound_play(sound_get("motorbike_idle"));
		sound_stop(sound_get("motorbike_move"));
	}
	else if (bike_state_timer = 100)
	{
		sound_stop(sound_get("motorbike_idle"));
		sound_play(sound_get("motorbike_idle"));
		bike_state_timer = 0;
	}
}

//Sound effects while on the bike
if ((state == PS_WALK || state = PS_DASH_START || state=PS_DASH) && motorbike == true && fuel > 0)
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
	if (bike_state_timer = 1)
	{
		sound_play(sound_get("motorbike_move"));
		sound_stop(sound_get("motorbike_idle"));
	}
	else if (bike_state_timer = 100)
	{
		sound_stop(sound_get("motorbike_move"));
		sound_play(sound_get("motorbike_move"));		
	}
}

//Sound effects while stopping with the bike
if ((state == PS_DASH_STOP || state = PS_DASH_TURN) && motorbike == true)
{
	if (state_timer == 1)
	{
		sound_stop(sound_get("motorbike_move"));
		sound_stop(sound_get("motorbike_idle"));
		sound_stop(sound_get("motorbike_stop"));
		sound_play(sound_get("motorbike_stop"));

	}
}
//sound effects when jumping with the bike
if (state == PS_JUMPSQUAT && motorbike == true)
{
	sound_stop(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	sound_stop(sound_get("motorbike_stop"));

}
//The bike ready sounds should only play once.
if (bikeReady == 1)
{
	sound_stop(sound_get ("motorbike_extra"));
	sound_play(sound_get ("motorbike_extra"));    		
   	if (voice == 1)
	{
		sound_stop(sound_get ("aw_yeah"));
		sound_play(sound_get ("aw_yeah"));
	}
	bikeReady = 2;
}

if (motorbike == true && fuel > 0)
{
	//Create the smoke effects that come out from the bike as well as the sparkles from movement
	smokeCounter++;
	if (smokeCounter == 6)
	{
		if (state == PS_WALK)
		{
			var smallspark = spawn_hit_fx(x - 80 * spr_dir, y-32 , smallsparkle);
			smallspark.depth = -100;			
		}
		if (state == PS_DASH)
		{
			var smallspark = spawn_hit_fx(x - 80 * spr_dir, y-32 , smallsparkle);
			smallspark.depth = -100;
		}
		if (state == PS_FIRST_JUMP || state == PS_IDLE_AIR)
		{	
			var smallspark = spawn_hit_fx (x - 60 * spr_dir, y - 14, smallsparkle);
			smallspark.depth = -100;
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

//Make Carol get off the bike if fuel runs out
if (fuel <= 0 && motorbike == true)
{
	sound_stop(sound_get("motorbike_move"));
	sound_stop(sound_get("motorbike_idle"));
	sound_stop(sound_get("motorbike_stop"));
	sound_play(sound_get("motorbike_stop"));
	if (voice == 1)
	{
		sound_stop(sound_get ("crap"));
		sound_play(sound_get ("crap"));
	}
	fuel = 0;
	set_attack(AT_DSPECIAL_2);
}

//Sprite Index animations for tail and bike

if (tsprite_index!=-1){
	timage_index=(timage_index+timage_speed)%timage_number;
}

if (bsprite_index!=-1){
	bimage_index=(bimage_index+bimage_speed)%bimage_number;
}

if (state == PS_LANDING_LAG && attack == 43)
{
	attack_end(43);
	destroy_hitboxes();
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
			super_armor=true;
			can_move=false;
			// *sigh* unfortunately you can't put cancels on Kirby abilities so he will have to go without them
			can_fast_fall=false;
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