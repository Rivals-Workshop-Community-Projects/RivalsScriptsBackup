//	article2_update

//--------------------------------------------------------------------------------------------

//	The States

//	0: 	P.Guard Spawn
//	1: 	P.Guard Idle
//	2: 	P.Guard Regular Fire
//	3: 	P.Guard Angle Fire
//	4: 	P.Guard Thrown Around by Rayman
//  5:  P.Guard Thrown Around by Enemies
//	6:	P.Guard Interrupt
//	7:	Ded

//	Make time progress
state_timer++;

//--------------------------------------------------------------------------------------------

//	Minor Pixel Lifting
if (place_meeting(x, y + 1, asset_get("par_block")))
{
    sprite_change_offset("dspec_plungerguard_spawn",        66, 58);
    sprite_change_offset("dspec_plungerguard_fire",         66, 58);
    sprite_change_offset("dspec_plungerguard_fire_angle",   66, 58);
    sprite_change_offset("dspec_plungerguard_toss",         66, 58);
}

if (place_meeting(x, y + 1, asset_get("par_jumpthrough")))
{
    sprite_change_offset("dspec_plungerguard_spawn",        66, 59);
    sprite_change_offset("dspec_plungerguard_fire",         66, 59);
    sprite_change_offset("dspec_plungerguard_fire_angle",   66, 59);
    sprite_change_offset("dspec_plungerguard_toss",         66, 59);
}

if (place_meeting(x, y, asset_get("plasma_field_obj"))) 
{
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(x-10, y, 21);
		
	setState(7);
}

//	Despawning if hits a blastzone
if (y > blastzone_b + 5)
{	
	setState(7);
}

if ((x < 0 || x > room_width))
{
    setState(7);
}

if (y < 0 || y > room_height)
{
	setState(7);
}

//	Destroys the article out of the lower view side
if (y > view_get_yview() + view_get_hview()) 
{	
	setState(7);
}

//	The hittable statement of statements
//	Plus, more convenient holder
if (state == 0 && state_timer > 10 || state == 1 || state == 2 && state_timer > 12 
|| state == 3 && state_timer > 12 || state == 6)
{
	can_be_hit 		-= 1;	

    has_bounced     = true;

    with (pHitBox)
	{    					
		//	Rayman you madman...
		if (player_id == other.player_id && type == 1)
		{
			if (attack == AT_FTILT)
			{
				if (place_meeting(x, y, other))
				{									
					if (!has_hit_player)
					{
						other.state 		= 4;
						other.state_timer 	= 0;
						other.hsp 			= 6.25 * spr_dir;	
						other.vsp 			= -10;

						spawn_hit_fx(other.x + 11 * other.spr_dir, other.y - 3, 303);											
						sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.75);
                    	sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.50, 0.75);
					}													
				}
			}

			else if (attack == AT_UTILT || attack == AT_DTILT)
			{
				if (place_meeting(x, y, other))
				{									
					if (!has_hit_player)
					{
						other.state 		= 4;
						other.state_timer 	= 0;
						other.hsp 			= 2.50 * spr_dir;
						other.vsp			= -12;	

						spawn_hit_fx(other.x + 11 * other.spr_dir, other.y - 3, 302);						
						sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.75);	
						sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.50, 0.75);
					}						
				}
			}

			else if (attack == AT_USTRONG || attack == AT_FSTRONG)
			{
				if (place_meeting(x, y, other))
				{									
					if (!has_hit_player)
					{
						other.state 		= 4;
						other.state_timer 	= 0;
						other.hsp 			= 6.25 * spr_dir;
						other.vsp			= -11.5;	

						spawn_hit_fx(other.x + 11 * other.spr_dir, other.y - 3, 304);						
						sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.75);
						sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 0.50, 0.75);
					}							
				}
			}

			else if (attack == AT_DSTRONG)
			{
				if (place_meeting(x, y, other))
				{									
					if (!has_hit_player)
					{
						other.state 		= 4;
						other.state_timer 	= 0;
						other.hsp 			= 3.25 * spr_dir;
						other.vsp			= -11.5;	

						spawn_hit_fx(other.x + 11 * other.spr_dir, other.y - 3, 304);	
						sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.75);
						sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 0.50, 0.75);
					}							
				}
			}

            else if (attack == AT_FAIR)
			{
				if (place_meeting(x, y, other))
				{									
					if (!has_hit_player)
					{
						other.state 		= 4;
						other.state_timer 	= 0;
						other.hsp 			= 5.75 * spr_dir;
						other.vsp 			= -10;	

						spawn_hit_fx(other.x + 11 * other.spr_dir, other.y - 3, 302);
						sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.75);
						sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 0.50, 0.75);
					}							
				}
			}

			else if (attack == AT_BAIR)
			{
				if (place_meeting(x, y, other))
				{									
					if (!has_hit_player)
					{
						other.state 		= 4;
						other.state_timer 	= 0;
						other.hsp 			= -4.75 * spr_dir;
						other.vsp 			= -10;	

						spawn_hit_fx(other.x + 11 * other.spr_dir, other.y - 3, 302);
						sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.75);
						sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.50, 0.75);	
					}						
				}
			}

			else
			{
				if (place_meeting(x, y, other))
				{									
					if (!has_hit_player)
					{
						other.state 		= 4;
						other.state_timer 	= 0;
						other.hsp 			= 3.75 * spr_dir;
						other.vsp			= -8.75;

						spawn_hit_fx(other.x + 11 * other.spr_dir, other.y - 3, 302);							
						sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.75);	
						sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.50, 0.75);
					}						
				}
			}
		}
    }
}

//--------------------------------------------------------------------------------------------

//	State 0: P.Guard Spawn
if (state == 0)
{
    sprite_index 	= sprite_get("dspec_plungerguard_spawn");
    mask_index 		= sprite_get("dspec_plungerguard_mask");

    hsp 			= 0;

    if (free)
		vsp += 0.85;
		
	if (!free)
	{
		vsp 		= 0;
		
		var pguardL = x - 22;
		var pguardR = x + 22;
		var pguardY = y + 40;

		//	Check for collisions with jump-through platforms or solid blocks
		var isOnPlatform 	= place_meeting(x, pguardY, asset_get("par_jumpthrough"));
		var isOnSolidBlock 	= place_meeting(x, pguardY, asset_get("par_block"));

		//	Reposition if hanging off ledges
		if (isOnPlatform || isOnSolidBlock) 
		{
			//	Check if the left and right edges have collisions
			var leftCollision 	= position_meeting(pguardL, pguardY, isOnPlatform ? asset_get("par_jumpthrough") : asset_get("par_block"));
			var rightCollision 	= position_meeting(pguardR, pguardY, isOnPlatform ? asset_get("par_jumpthrough") : asset_get("par_block"));
			
			//	If there's no collision, begone with you
			if (!leftCollision) 
			{
				x += 2;
			} 
				
			else if (!rightCollision) 
			{
				x -= 2;
			}
		}	
	}

    //	Control image index progression
    if (state_timer <= 20)
    {
        image_index = 0;
    }
    
	else if (state_timer <= 25)
    {
        image_index = 1;
    }
    
	else if (state_timer <= 30)
    {
        image_index = 2;
    }
    
	else if (state_timer <= 35)
    {
        image_index = 3;
    }
    
	else if (image_index < 8)
    {
        image_index += 0.20;  
    }
    
    //	Pause on the last frame for a set amount of time
    if (image_index >= 8)
    {
        image_index = 8;

        if (state_timer > 100) 
        {
            setState(1); 
            
            spawn_hit_fx(x - 4 * spr_dir, y + 10, 310);    
            sound_play(sound_get("sfx_raygun_start"), false, noone, 0.50, 0.75);
            sound_play(asset_get("sfx_charge_blade_ready"), false, noone, 0.50, 0.75);
        }
    }
}

//	State 1: P.Guard Idle
if (state == 1)
{
    sprite_index 		= sprite_get("dspec_plungerguard_spawn");
    mask_index 			= sprite_get("dspec_plungerguard_mask");
    image_index 		= 8;

    //	Track the direction of the enemy for the turret
	var enemy_direction = spr_dir;  
	
	with (player_id)
	{
		//	P.Guard range... expansion. Or whatever the meme anime thing is.
		if !has_rune("O")
		{
			var detection_radius = 100;
		}

		if has_rune("O")
		{
			var detection_radius = 160;		//	140	
		}

		//	There's a hidden joke here somewhere...
		if !has_rune("N")
		{
			sensitivity_flipper = false;
		}

		if has_rune("N")
		{
			sensitivity_flipper = true;
		}
	}

    with (oPlayer) 
    {
        //	Ensure the detected player is not the turret's owner
        if (player != other.player_id.player)
        {
            //  Only hits targets if they're in hitstuns or whatever
			//	Try and do something cool, people cry like I'm the devil or something... Sheesh.
			if (other.sensitivity_flipper == false)
			{
				if (state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_TUMBLE 
				&& hitpause == true && get_player_team(player) != get_player_team(other.player))
				{
					//  Check if the enemy is within range
					if (point_distance(x, y, other.x, other.y) <= detection_radius)
					{
						other.enemy_detected = true;

						//	Determine the direction based on the enemy's position
						if (x > other.x)
						{
							enemy_direction = 1;    //  Enemy is to the left
						}
						
						else
						{
							enemy_direction = -1;   //  Enemy is to the right
						}

						//	Update turret direction if the enemy moves past it
						if (other.spr_dir != enemy_direction)
						{
							//  Switch turret's facing direction
							other.spr_dir = enemy_direction;    
						}

						//  Determine the shooting angle based on the enemy's vertical position
						if (y < other.y - 100)
						{
							other.shoot_angle = -1;     //Enemy is directly above, no firing
						}

						else if (y > other.y + 70)
						{
							other.shoot_angle = -1;     // Enemy is directly below, no firing
						}

						else if (y < other.y + 30)
						{
							other.shoot_angle = 45;     // Enemy is above but not directly overhead, fire at 45 degrees
						}

						else
						{
							other.shoot_angle = 0;      // Enemy is level or below, fire straight
						}
					}
				}
			}

			//===========================================================

			//	The Previous Way
			if (other.player_id.sensitivity_flipper)
			{
				//  A lot of fair checks
				if ((invince_time == 0 && invincible == false && hitstop == 0 && hitpause == 0 
				&& (state == PS_HITSTUN && state_timer > 6 || state != PS_HITSTUN)) && state != PS_AIR_DODGE && state != PS_PRATFALL
				&& state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_GROUND && state != PS_DEAD 
				&& state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_WALL_TECH && state != PS_RESPAWN
				&& get_player_team(player) != get_player_team(other.player))
				{
					//  Check if the enemy is within range
					if (point_distance(x, y, other.x, other.y) <= detection_radius)
					{
						other.enemy_detected = true;

						//	Determine the direction based on the enemy's position
						if (x > other.x)
						{
							enemy_direction = 1;    //  Enemy is to the left
						}
						
						else
						{
							enemy_direction = -1;   //  Enemy is to the right
						}

						//	Update turret direction if the enemy moves past
						if (other.spr_dir != enemy_direction)
						{
							//  Switch turret's facing direction
							other.spr_dir = enemy_direction;    
						}

						//  Determine the shooting angle based on the enemy's vertical position
						if (y < other.y - 100)
						{
							other.shoot_angle = -1;     // Enemy is directly above, no firing
						}

						else if (y > other.y + 70)
						{
							other.shoot_angle = -1;     // Enemy is directly below, no firing
						}

						else if (y < other.y + 30)
						{
							other.shoot_angle = 45;     // Enemy is above but not directly overhead, fire at 45 degrees
						}

						else
						{
							other.shoot_angle = 0;      // Enemy is level or below, fire straight
						}
					}
				}
			}
		}
    }

    //	Transition to the firing state if an enemy is detected
    if (enemy_detected)
    {
        if (shoot_angle == 0)
        {
            setState(2);
        }

        if (shoot_angle == 45)
        {
            setState(3);
        }
    }
}

//	State 2: P.Guard Regular Fire
if (state == 2)
{
    sprite_index 	= sprite_get("dspec_plungerguard_fire");
    mask_index 		= sprite_get("dspec_plungerguard_mask");

    enemy_detected 	= false;

    if (state_timer < 0)
    {
        image_index = 0;
    }

    if (state_timer == 2)
    {
        image_index = 1;
    }

	if (state_timer == 3)  // if (state_timer % 20 == 0)
	{
		image_index = 2;

		//	Ensure the projectile fires in the turret's direction
		var fire_direction  = spr_dir; 
		var regularfire     = create_hitbox(AT_DSPECIAL, 2, x + 30 * fire_direction, y + 4);

		//	Explicitly set the horizontal speed based on turret direction
        //	Ensure projectile moves in the correct direction
		regularfire.hsp     = abs(regularfire.hsp) * fire_direction;  

        sound_play(asset_get("sfx_bubblepop"), false, noone, 0.75);
        sound_play(sound_get("sfx_raygun_fire"), false, noone, 0.75, 1.25);
        sound_play(asset_get("sfx_ell_big_missile_fire"), false, noone, 0.65);
	}

    if (state_timer == 8)
    {
        image_index = 3;
    }

    if (state_timer == 10)
    {
        image_index = 4;
    }

    if (state_timer == 12)
    {
        image_index = 5;
    }

    //	Return to idle after firing for a set duration
    if (state_timer >= reset_guard)
    {
        setState(1);

		spawn_hit_fx(x - 4 * spr_dir, y + 10, 310);	
		sound_play(sound_get("sfx_raygun_start"), false, noone, 0.50, 0.75);
		sound_play(asset_get("sfx_charge_blade_ready"), false, noone, 0.50, 0.75);
    }
}

//  State 3: P.Guard Angled Fire
if (state == 3)
{
    sprite_index 	= sprite_get("dspec_plungerguard_fire_angle");
    mask_index 		= sprite_get("dspec_plungerguard_mask");

    enemy_detected 	= false;

    if (state_timer < 0)
    {
        image_index = 0;
    }

    if (state_timer == 2)
    {
        image_index = 1;
    }

	if (state_timer == 3)  // if (state_timer % 20 == 0)
	{
		image_index         = 2;

		var fire_direction2 = spr_dir; 
		var anglefire       = create_hitbox(AT_DSPECIAL, 3, x + 10 * fire_direction2, y - 20);
		anglefire.hsp       = abs(anglefire.hsp) * fire_direction2;  

        sound_play(asset_get("sfx_bubblepop"), false, noone, 0.75);
        sound_play(sound_get("sfx_raygun_fire"), false, noone, 0.75, 1.25);      
        sound_play(asset_get("sfx_ell_big_missile_fire"), false, noone, 0.65);
	}

    if (state_timer == 8)
    {
        image_index = 3;
    }

    if (state_timer == 10)
    {
        image_index = 4;
    }

    if (state_timer == 12)
    {
        image_index = 5;
    }

    //	Return to idle after firing for a set duration
    if (state_timer >= reset_guard)
    {
        setState(1);

		spawn_hit_fx(x - 4 * spr_dir, y + 10, 310);	
		sound_play(sound_get("sfx_raygun_start"), false, noone, 0.50, 0.75);
		sound_play(asset_get("sfx_charge_blade_ready"), false, noone, 0.50, 0.75);
    }
}

//	State 4: P.Guard Tumble Box via Rayman
if (state == 4)
{
	sprite_index 	= sprite_get("dspec_plungerguard_toss");
	mask_index 		= sprite_get("dspec_plungerguard_mask");
	image_index 	+= 0.16;

	//	Setting it on now
	if (state_timer == 1)
	{        
        has_bounced = false;
        
        with (player_id)
		{
			set_hitbox_value(AT_DSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);
		}
	}
	
	if (!has_bounced)
	{
		var ray_toss    = create_hitbox(AT_DSPECIAL, 4, x + 0 * spr_dir, y);
        ray_toss.x      = x - 3 * spr_dir;
        ray_toss.y      = y + 9;              
	}

	if (!free)
	{
		sound_play(asset_get("sfx_bubblepop"), false, noone, 0.60, 1.25);
		sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, 0.75, 1.15);
	}
	
	if (!hitstop)
	{
		if (free)
		{
			prev_vsp 	= vsp;
			prev_hsp 	= hsp;

			vsp 		+= 0.6;
			vsp 		= min(vsp, 12);
			hsp 		-= sign(hsp) * 0.02;

			if (hit_wall)
			{
				hsp         = -5 * 0.75;
                has_bounced = true;
			}
		}
		
		else if (!has_bounced)
		{
			has_bounced = true;
			vsp 		= -prev_vsp * 0.75;
			hsp 		*= 0.5;
		}
		
		if (vsp == 0 && !free)
		{			
			setState(0);
		}
	}

	//	Goodbye Plunger Guard...
	with (pHitBox)
	{    					
		if (player_id == other.player_id && type == 2)
		{
			if (attack == AT_DSPECIAL && hbox_num == 4)
			{
				if (place_meeting(x, y, other))
				{									
					if (was_parried)
					{
						other.state 		= 7;
						other.state_timer 	= 0;
					}													
				}
			}
		}
	}

	with (oPlayer) 
	{
		if (player != other.player && place_meeting(x, y, other) && hitpause)
		{
			destroyed 				= true;
			hitpause 				= true;
            hitstop					= 4;
            hitstop_full 			= 4;	

			other.hsp 				*= 0.5;
			other.vsp 				= -7.5;

			other.has_bounced 		= true;
		}
	}
}

//	State 5: P.Guard Tumble Box via Enemy
if (state == 5)
{
	sprite_index 	= sprite_get("dspec_plungerguard_toss");
	mask_index 		= sprite_get("dspec_plungerguard_mask");
	image_index 	+= 0.16;

    if (state_timer == 1)
    {
        has_bounced = false;
    }

    if (!has_bounced)
	{
        var ene_toss                = create_hitbox(AT_DSPECIAL, 4, x - 0 * spr_dir, y);
        ene_toss.x                  = x - 3 * spr_dir;
        ene_toss.y                  = y + 9; 

		with (oPlayer) 
		{
			if (player != other.player)
			{
				ene_toss.can_hit_self 	    = true;						
			}		
		}
		
		//	Please, don't hurt me...
		with (owner_override)
		{
			ene_toss.can_hit[player] = false;
		}
	}

	if (!free)
	{
		sound_play(asset_get("sfx_bubblepop"), false, noone, 0.60, 1.25);
		sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, 0.75, 1.15);
	}
	
	if (!hitstop)
	{		
		if (free)
		{
			prev_vsp = vsp;
			prev_hsp = hsp;

			vsp 	+= 0.6;
			vsp 	= min(vsp, 12);
			hsp 	-= sign(hsp) * 0.02;

			if (hit_wall)
			{
				hsp         = -5 * 0.75;
				has_bounced = true;
			}
		}
		
		else if (!has_bounced)
		{
			has_bounced = true;
			vsp 		= -prev_vsp * 0.75;
			hsp 		*= 0.5;
		}
		
		if (vsp == 0 && !free)
		{			
			setState(0);
		}
	}

	with (oPlayer) 
	{
		if (player == other.player && place_meeting(x, y, other) && hitpause)
		{
			destroyed 				= true;
			hitpause 				= true;
            hitstop					= 4;
            hitstop_full 			= 4;	

			other.hsp 				*= 0.5;
			other.vsp 				= -7.5;

			other.has_bounced 		= true;
		}

		if (player != other.player && place_meeting(x, y, other) && hitpause)
		{
			destroyed 				= true;
			hitpause 				= true;
            hitstop					= 4;
            hitstop_full 			= 4;	

			other.hsp 				*= 0.5;
			other.vsp 				= -7.5;

			other.has_bounced 		= true;
		}
	}
}

//	State 6: P.Guard Interrupt
if (state == 6)
{
    sprite_index 	= sprite_get("dspec_plungerguard_spawn");
    mask_index 		= sprite_get("dspec_plungerguard_mask");

    hsp 			= 0;
    vsp 			= 0;

	if (state_timer <= 70)
    {
        image_index = 3;
    }
    
	else if (image_index < 8)
    {
        image_index += 0.20;  
    }
    
    if (image_index >= 8)
    {
        image_index = 8;

        if (state_timer > 110) 
        {
            setState(1); 
            
            spawn_hit_fx(x - 4 * spr_dir, y + 10, 310);    
            sound_play(sound_get("sfx_raygun_start"), false, noone, 0.50, 0.75);
            sound_play(asset_get("sfx_charge_blade_ready"), false, noone, 0.50, 0.75);
        }
    }
}

//	State 7: Deceased, Death, Dead... 
if (state == 7)
{
	sprite_index 	= asset_get("empty_sprite");
	mask_index 		= asset_get("empty_sprite");
	image_index 	= 0;
	
	hsp 			= 0;
	vsp 			= 0;
	
	with (player_id)
	{
		move_cooldown[AT_DSPECIAL] = 205;
	}
	
	spawn_hit_fx(x - 10, y - 16, 302);	
	sound_play(asset_get("sfx_ice_shatter"), false, noone, 0.95);
    sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.55);
		
	instance_destroy();
    exit;
}

//--------------------------------------------------------------------------------------------

//	Welp, here we go again
//	Health pool system for the P.Guard
if (can_be_hit <= 0)
{
	can_be_hit = 0;
}

if (can_be_hit == 0)
{	
	var hitbox = instance_place(x, y, pHitBox);
    
	if (hitbox != noone)
	{
		can_be_hit = 10;
		
		var hitOwner 	= hitbox.player_id;
		owner_override 	= hitOwner;
		
		with (hitbox)
		{
			if (player != other.player)
			{
				if (!has_hit)
				{            
					var hitting = instance_place(x, y, obj_article2);	

					hitting.has_been_hit 	= true;	
                    hitting.has_bounced		= false;				
					
					hitting.hp 				-= damage;
					
					hitting.hsp				= 5.5 * spr_dir;
					hitting.vsp 			= -10.5;
					
					other.state 			= 5;
					other.state_timer 		= 0;

                    with (pHitBox)
					{ 
						if (attack == AT_UTILT && type == 1) 
						{						
							hitting.hsp = 3 * hitbox.spr_dir;
							hitting.vsp = -10;
						}
						
						if (attack == AT_DATTACK && type == 1) 
						{						
							hitting.hsp = 7 * hitbox.spr_dir;
							hitting.vsp = -10.25;	

							hitting.has_bounced	= true;	
						}

						if (attack == AT_FSTRONG && type == 1) 
						{
							hitting.hsp = 7.10 * hitbox.spr_dir;
							hitting.vsp = -10;
						}
						
						if (attack == AT_USTRONG && type == 1) 
						{
							hitting.hsp = 5.25 * hitbox.spr_dir;
							hitting.vsp = -9.5;
						}

						if (attack == AT_BAIR && type == 1) 
						{
							if (hitbox.spr_dir == 1)
							hitting.hsp = -5;
							
							if (hitbox.spr_dir == -1)
							hitting.hsp = 5;
						}

						if (attack == AT_DAIR && type == 1) 
						{
							hitting.hsp = 1.5 * hitbox.spr_dir;
							hitting.vsp = -6.5;
						}

						if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR && type == 1) 
						{
							hitting.hsp = 7.2 * hitbox.spr_dir;
							hitting.vsp = -12;
						}

						//	For all kinds of projectiles, you silly billy
						if (hitbox.type == 2) 
						{
							hitting.hsp = 4.2 * player_id.spr_dir;
							hitting.vsp = -7.75;
							hitting.hp 	-= damage;
						}
                    }
				}
			}
        }
           
		with (hitOwner)
		{
            if (player != other.player)
			{
				if (!has_hit)
				{														
					sound_play(hitbox.sound_effect);
					
					var vfx = hitbox.hit_effect;
					
					if (vfx == 0)
					{
						vfx 	= 301;
					}
					
					var fx 		= spawn_hit_fx(other.x - 14*other.spr_dir, other.y - 8, vfx);
					fx.pause 	= 10;

                    if (attack == AT_DSTRONG && d_hitbox.type == 1) 
                    {
                        hitting.vsp 	= -9.5;

                        //	Determine the relative position of the object to the player
                        var relativeX 	= d_hitbox.x - x;

                        //	Set horizontal speed based on the relative position
                        hitting.hsp 	= sign(relativeX) * 4.5;
                    }

					//	The previous way to stop enemy players from hitting themselves
                    /*if (hitbox.type == 1)
                    {
                        //	It would be silly if the enemy got hit from chucking the P.Guard
                        invincible 		= true;
                        invince_time 	= 15;	
                    }*/					
				}
			}
        }
			
		if (hp <= 0)
        {										
			setState(7);
        }
	}
}

//--------------------------------------------------------------------------------------------

#define setState(new_state)
{
	state 			= new_state;
	state_timer 	= 0;
}