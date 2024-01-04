// Update

// Bubble size defines
#macro TINY 1
#macro SMALL 2
#macro BIG 3


var Soap = self;

//#region DashSFX
if((state == PS_DASH_START || state == PS_DASH_TURN) && state_timer == 1)
{
	sound_play(sound_get("soap_dash"));
}
//#endregion DashSFX


//#region Intro
if(state == PS_SPAWN)
{
	if (introTimer2 < 3) 
	{
	    introTimer2++;
	} 
	else 
	{
	    introTimer2 = 0;
	    introTimer++;
	}
	
	if(introTimer == 13 ){
		play_sound = false;
	}

	if(introTimer == 4 && !play_sound) 
	{
		sound_play(sound_get("soap_bubble_pop_med"),false,0,0.25);
		play_sound = true;
	}
}
//#endregion Intro

//#region Rune Code

// Passive bubble generation
if(has_rune("A"))
{
	if(rune_passive_bubble_timer <= 0)
	{
		CreateNewBubble(x-(5*spr_dir),y-10,TINY,-4*spr_dir,-2);
		rune_passive_bubble_timer = rune_original_passive_bubble_timer;
	}
	else
	{
		rune_passive_bubble_timer--;
	}
}

// Tech off bubbles
if(has_rune("N"))
{
	if(state_cat == SC_HITSTUN && shield_pressed)
	{
		if(closest_jumpable_bubble != noone && in_bubble)
		{
			if(closest_jumpable_bubble.size > TINY && closest_jumpable_bubble.explosive == false)
			{
				PopBubble(closest_jumpable_bubble);
				closest_jumpable_bubble.flag_delete = true;
				RuneSplitBubble(closest_jumpable_bubble);
				set_state(PS_WALL_TECH);
			}
		}
	}
}
//#endregion Rune Code

//#region USpec grab code
if(attack == AT_USPECIAL && state == PS_ATTACK_AIR)
{
	var uspecial_hitbox = noone;
	with(pHitBox){
	    if(player_id == other && attack == AT_USPECIAL){
	        var uspecial_hitbox = self;
	    }
	}
	
	with(oPlayer){
	    if(!clone && self != other){
	        if(awatsu_uspecial_grab == other && instance_exists(uspecial_hitbox)){
	            if(hitpause){
	                var grab_div = 10;
	                var hsped = lengthdir_x(point_distance(x,y,uspecial_hitbox.x,uspecial_hitbox.y+char_height/2)/grab_div,point_direction(x,y,uspecial_hitbox.x,uspecial_hitbox.y+char_height/2));
	                var vsped = lengthdir_y(point_distance(x,y,uspecial_hitbox.x,uspecial_hitbox.y+char_height/2)/grab_div,point_direction(x,y,uspecial_hitbox.x,uspecial_hitbox.y+char_height/2));
	                x += hsped;
	                y += vsped;
	            } else {
	                awatsu_uspecial_grab = noone;
	            }
	        }
	        if(hit_player_obj != other){
	            if(awatsu_uspecial_grab == other){
	                 awatsu_uspecial_grab = noone;
	            }
	        }
	    }
	}
}

//#endregion USpec grab code


//#region Player Bubble Logic

//#region Define bubble draw article

// Bubbles need to be drawn via an article, as it's draw events aren't affected by visibility changes
if(bubble_artist == noone)
{
	bubble_artist = instance_create(0, 0, "obj_article1");
}

//#endregion Define bubble draw article

//#region Bubble Distance Detection
if(ds_list_size(overlapping_bubbles) > 0)
{
	if(!in_bubble)
	{
		in_bubble = true;
		last_djumps = djumps;
		djumps = 1;
	}
}
else if(in_bubble)
{
	in_bubble = false;
	djumps = last_djumps;
}
//#endregion Bubble Distance Detection

//#region Bubble Jumping

// Double jumps are ILLEGAL if you're near a bubble
max_djumps = 0;
if(jump_pressed || (tap_jump_pressed && can_tap_jump()))
{
	var RuneFootstoolPlayer = noone;
	var HasFootstoolRune = has_rune("F");
	
	if(HasFootstoolRune)
	{
		with(oPlayer)
		{
			if(self != Soap)
			{
				if(point_distance(x,y-(char_height*0.5),other.x,other.y-(other.char_height*0.5)) < 80)
				{
					RuneFootstoolPlayer = self;
				}
			}
		}
	}
	
	if(in_bubble)
	{
		if(closest_jumpable_bubble != noone)
		{
			if(!in_bubble_jumpsquat && free && closest_jumpable_bubble.lockout_timer == 0 && state_cat == SC_AIR_NEUTRAL && bubble_jump_ignore_timer == 0 && !closest_jumpable_bubble.flag_delete && !closest_jumpable_bubble.explosive && !closest_jumpable_bubble.exploding)
			{
				set_state(PS_JUMPSQUAT);
				clear_button_buffer(PC_JUMP_PRESSED);
				vsp = 0;
				hsp = 0;
					
				in_bubble_jumpsquat = true;
				
				last_bubble = closest_jumpable_bubble;
				
				closest_jumpable_bubble.lockout_timer = bubble_lockout_time;
			}
		}
	}
	else if(RuneFootstoolPlayer != noone && !in_bubble_jumpsquat && state_cat == SC_AIR_NEUTRAL && bubble_jump_ignore_timer == 0)
	{
		set_state(PS_JUMPSQUAT);
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = 0;
		hsp = 0;
		
		x = RuneFootstoolPlayer.x;
		y = RuneFootstoolPlayer.y-RuneFootstoolPlayer.char_height;
		
		create_hitbox(AT_TAUNT,1,x,y);
	}
	else
	{
		max_djumps = 1;
	}
}

// Tick bubble jump ignore timer
if(bubble_jump_ignore_timer > 0) bubble_jump_ignore_timer--;

// Set bubble jump ignore timer when jumping
// This prevents bubble jumping when jumping from stage
if(state == PS_JUMPSQUAT || (state == PS_WALL_JUMP && state_timer == 1)) bubble_jump_ignore_timer = 6;

// Lerp bubble to Awatsu while in jumpsquat
if(in_bubble_jumpsquat)
{
	var BubbleYOffet = last_bubble.size == BIG ? 25 : 20;
	
	// Prevent bubble from Lerping into the stage
	var MaxLoops = 50;
	var LoopCounter = 0;
	while(place_meeting(x,y+BubbleYOffet,asset_get("solid_32_obj")))
	{
		BubbleYOffet--;
		
		// Failsafe
		LoopCounter++;
		if(LoopCounter >= MaxLoops) break;
	}

	last_bubble.x = lerp(last_bubble.x,x,0.5);
	last_bubble.y = lerp(last_bubble.y,y + BubbleYOffet,0.5);
}

if(state != PS_JUMPSQUAT && in_bubble_jumpsquat && last_bubble != noone)
{
	in_bubble_jumpsquat = false;
	
	last_bubble.image_index = 0;
	
	sound_play(sound_get(last_bubble.size == SMALL ? "soap_bounce_mediumBubble" : "soap_bounce_largeBubble"),false,noone);
	last_bubble.merging = false;
	LaunchBubble(last_bubble, last_bubble.hsp * 10, last_bubble.vsp + original_jump_speed,false, 270, get_hitbox_value(AT_EXTRA_1,last_bubble.size,HG_BASE_KNOCKBACK));
	
	// Jump degredation
	bubble_jumps++;
	
	jump_speed = original_jump_speed - (bubble_jumps*1.5);
	short_hop_speed = original_short_hop_speed - (bubble_jumps*1.5);
	
	jump_speed = max(jump_speed,1);
	short_hop_speed = max(jump_speed,1);
	
	last_bubble = noone;
}
//#endregion Bubble Jumping

//#region Dash Bubbles
if(state == PS_DASH && state_timer % 30 == 0)
{
	var Bubble = CreateNewBubble(x + (-10 * spr_dir), y-10,TINY,-12*spr_dir,random_func(9,10,true) * -1);
}
//#endregion Dash Bubbles

//#region Waveland Bubbles
if(state == PS_WAVELAND)
{
	if(	waveland_switch_timer == 0)
	{
		var Bubble = CreateNewBubble(x + (-10 * spr_dir), y-10,TINY,-12*spr_dir,random_func(10,10,true) * -1);
		waveland_switch_timer = wave_land_time;
	}
}
else if(waveland_switch_timer > 0)
{
	waveland_switch_timer--;
}
//#endregion Waveland Bubbles

//#region Explosive Specials Reset
if(state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL)
{
	explosive_special = false;
	reset_attack_value(AT_FSPECIAL,AG_SPRITE);
	reset_attack_value(AT_FSPECIAL,AG_HURTBOX_SPRITE);
	reset_attack_value(AT_FSPECIAL,AG_AIR_SPRITE);
	reset_attack_value(AT_FSPECIAL,AG_HURTBOX_AIR_SPRITE);
	
	reset_attack_value(AT_DSPECIAL,AG_SPRITE);
	reset_attack_value(AT_DSPECIAL,AG_HURTBOX_SPRITE);
	reset_attack_value(AT_DSPECIAL,AG_AIR_SPRITE);
	reset_attack_value(AT_DSPECIAL,AG_HURTBOX_AIR_SPRITE);
	
	reset_attack_value(AT_USPECIAL,AG_SPRITE);
	reset_attack_value(AT_USPECIAL,AG_HURTBOX_SPRITE);
	reset_attack_value(AT_USPECIAL,AG_AIR_SPRITE);
	reset_attack_value(AT_USPECIAL,AG_HURTBOX_AIR_SPRITE);
}
//#endregion Explosive Specials Reset

//#region Grounded Resets
if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_RESPAWN)
{
	can_dspecial_air = true;
	jump_speed = original_jump_speed;
	short_hop_speed = original_short_hop_speed;
	bubble_jumps = -1;
}
//#endregion Grounded Resets

//#region Dspec airspeed reset
if(state != PS_ATTACK_AIR)
{
	air_max_speed = original_air_max_speed;
}
//#endregion Dspec airspeed reset

//#region Other Player Resets
with(oPlayer)
{
	// Clear the bubble priority size queue on enemies
	if(!hitpause)
	{
		last_hit_bubble_size = 0;
	}
}
//#endregion Other Player Resets
//#endregion Player Bubble Logic

//#region Amber Compatability
//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
	var BubbleCreateSound = sound_get("soap_bubble_create_med");
	var BubblePopSound = sound_get("soap_bubble_pop_med");
	with (amber_herObj) //Access Amber's player object and set the values
	{
		//Set the window values for Amber's hugging. DO NOT change Amber's sprites
		//in the attack_values
	    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
	    
	    //Enter
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 60);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 10);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, BubbleCreateSound); 
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Loop
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 48);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 8);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 10);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Exit
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 18);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 18);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, BubblePopSound); 
	    
	    //Important. Puts Amber in startup hug state (2).
	    //Editing this variable not recommended
	    amberHugState = 2; 
	}
	//Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
	oPlayerHugAmberState = 2;
	
	//Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}
//#endregion Amber Compatability


//#region Bubble logic

//#region Permitted Bubble Calculation
bubble_list_size = ds_list_size(soap_bubbles);

if(bubble_list_size > 0)
{
	permitted_index++;
	if(permitted_index >= bubble_list_size) permitted_index = 0;
	
	permitted_bubble = soap_bubbles[|permitted_index];
}
else
{
	permitted_index = 0;
}
//#endregion Permitted Bubble Calculation

var ct = current_time;

var DistanceToBubbleToJump = 75;
var BubbleRadius = 20;
var MinHitboxSpeed = 6;
var bubbleindex = 0;

for (bubbleindex = 0; bubbleindex < bubble_list_size; bubbleindex++) 
{
	//#region Bubble Initialization

	//Find Bubble Instance
	var bubble = soap_bubbles[|bubbleindex];
	var is_permitted_bubble = permitted_bubble == bubble;
	var BubbleSpriteNumber = sprite_get_number(bubble.sprite_index);

	// Check if the bubble has an active hitbox
	var HasHitbox = false;
	if(bubble.linked_hitbox != noone)
	{
		HasHitbox = instance_exists(bubble.linked_hitbox);
	}

	//#region Projectile Hitbox Deletion Handling
	// Important: Run this before any other checks, since some code odwn the line deletes the hitbox.
	// This applies to things outside of Awatsu destroying the projectile hitbox
	if(HasHitbox)
	{
		if(bubble.linked_hitbox.destroyed && !bubble.linked_hitbox.has_hit)
		{
			PopBubble(bubble);
			bubble.flag_delete = true;
			RuneSplitBubble(bubble);
		}
	}
	//#endregion Projectile Hitbox Deletion Handling

	//#region Set Bubble Size
	switch(bubble.size)
	{
		case TINY: BubbleRadius = 10; break;
		case SMALL: BubbleRadius = 30; break;
		case BIG: BubbleRadius = 100; DistanceToBubbleToJump = 100; break;
	}
	
	//#endregion Set Bubble Size
	
	//#region Resetting
	//#region Reset on death
	if(state == PS_DEAD || state == PS_RESPAWN)
	{
		bubble.flag_delete = true;
		PopBubble(bubble);
	}
	//#endregion Reset on death
	
	//#region Explosive Bubbles
	if(bubble.explosive)
	{
		if(!bubble.exploding || (bubble.size == BIG && bubble.image_index < BubbleSpriteNumber - 3))
		{
			SpawnExplosiveSparkle(bubble, BubbleRadius);
		}
	}
	
	if(bubble.explosive && !bubble.exploding && !bubble.merging)
	{
		// Number of frames to cancel the knock animation early if explosive
		var EarlyEndFrames = bubble.size == SMALL ? 4 : 3;
		
		// Number of frames of the explosion startup animation to skip
		var EarlyStartFrames = 4;
		
		var HitPlayerWithHitbox = false
		if(HasHitbox)
		{
			HitPlayerWithHitbox = bubble.linked_hitbox.has_hit;
		}
		
		// Explode bubble early on hit
		if(bubble.image_index >= BubbleSpriteNumber-bubble.image_speed-EarlyEndFrames || HitPlayerWithHitbox)
		{
			if(HitPlayerWithHitbox)
			{
				bubble.hsp *= 0.4;
				bubble.vsp *= 0.4;
			}
			ExplodeBubble(bubble);
			bubble.image_index = HitPlayerWithHitbox ? 0 : EarlyStartFrames;
		}
	}
	//#endregion Explosive Bubbles
	
	//#region Reset Bubble Sprites
	else if(bubble.image_index >= BubbleSpriteNumber-bubble.image_speed)
	{
		if(bubble.exploding)
		{
			// Delete bubble
			bubble.flag_delete = true;
		}
		
		if(bubble.inMotion || bubble.merging)
		{
			// Reset bubble to normal state
			if(HasHitbox)
			{
				bubble.linked_hitbox.destroyed = true;
			}
			bubble.inMotion = false;
			bubble.merging = false;
			bubble.last_hitbox_window = -1;
			
			bubble.sprite_index = GetBubbleSprite(bubble);
		}
		
		// Explode bubble if from merge
		if(bubble.explosive)
		{
			ExplodeBubble(bubble);
			bubble.image_index = 1;
		}
		
		// Explode bubble if rune is equipped
		if(has_rune("H"))
		{
			ExplodeBubble(bubble);
		}
	}
	//#endregion Reset Bubble Sprites
	
	//#region Plasma Field
	if(is_permitted_bubble)
	{
		if (place_meeting(bubble.x, bubble.y, asset_get("plasma_field_obj")))
		{
			sound_play(asset_get("sfx_clairen_hit_med"));
	    	spawn_hit_fx(floor(bubble.x),floor(bubble.y),256)
			bubble.flag_delete = true;
		}
	}
	//#endregion Plasma Field

	//#region Reset Speed When Merging
	if(bubble.merging)
	{
		bubble.hsp = 0;
		bubble.vsp = 0;
	}
	
	//#endregion Reset Speed When Merging
	//#endregion Resetting
	//#endregion Bubble Initialization
	
	//#region Hitboxes
	//#region Bubble Hitbox Tracking
	
	if(HasHitbox)
	{
		//#region Parrying
		var BubbleWasParried = false;
		
		if(bubble.linked_hitbox.was_parried && !bubble.was_parried)
		{
			BubbleWasParried = true;
		}
		
		if(bubble.player != Soap.player && !bubble.was_parried)
		{
			BubbleWasParried = true;
		}
		
		if(BubbleWasParried)
		{
			if(bubble.size == TINY)
			{
				bubble.flag_delete = true;
			}
			else
			{
				bubble.was_parried = true;
				bubble.player = bubble.linked_hitbox.player;
				bubble.image_index = 0;
				
				// Launch bubble towards Awatsu
				var Angle = point_direction(bubble.x,bubble.y,Soap.x,Soap.y-(Soap.char_height*0.5));
				var LaunchStrength = point_distance(bubble.x,bubble.y,Soap.x,Soap.y)*0.2;
				LaunchBubble(bubble, LaunchStrength * dcos(Angle), LaunchStrength * -dsin(Angle),true,Angle,get_hitbox_value(AT_EXTRA_1,bubble.size,HG_BASE_KNOCKBACK));
			}
		}
		//#endregion Parrying
		
		if((abs(bubble.hsp) + abs(bubble.vsp) > MinHitboxSpeed))
		{
			bubble.linked_hitbox.x = bubble.x + (bubble.hitpause == 0 ? bubble.hsp : 0);
			bubble.linked_hitbox.y = bubble.y + (bubble.hitpause == 0 ? bubble.vsp : 0);
		}
		else
		{
			bubble.linked_hitbox.destroyed = true;
		}
	}
	//#endregion Bubble Hitbox Tracking
	
	//#region Bubble Explosion Hitbox
	var BubbleExplosionFrame = 6;
	
	if(bubble.exploding && bubble.image_index > BubbleExplosionFrame - 1 && bubble.image_index <= BubbleExplosionFrame && bubble.hitpause == 0)
	{
		if(!bubble.spawned_explosion)
		{
			bubble.image_speed = 0.3;
			sound_play(bubble.size == TINY ? sound_get("soap_bubble_explode_sml") : bubble.size == SMALL ? sound_get("soap_bubble_explode_med") : sound_get("soap_bubble_explode_lrg"));
			bubble.linked_hitbox = create_hitbox(AT_EXTRA_2, has_rune("M") ? min(bubble.size+1,BIG) : bubble.size, floor(bubble.x), floor(bubble.y));
			bubble.linked_hitbox.player = bubble.player;
			bubble.linked_hitbox.can_hit[bubble.player] = false;
			bubble.spawned_explosion = true;
			
			if(has_rune("M"))
			{
				bubble.sprite_index = RuneGetBubbleExplosionSprite(bubble);
			}
		}
		
		// Rune to explode all bubbles onstage
		if(has_rune("I"))
		{
			for (i = 0; i < bubble_list_size; i++) 
			{
				ExplodeBubble(soap_bubbles[|i]);
			}
		}
	}
	
	//#endregion Bubble Explosion Hitbox

	//#region Core Bubble Logic
	if(!bubble.exploding && !bubble.flag_delete)
	{
		//#region Bubble Movement

		if(is_permitted_bubble || bubble.was_parried)
		{
			array_clear(close_bubbles, 0);
			array_clear(close_bubbles, 1);
			array_clear(close_bubbles, 2);
			
			var close_bubble_number = 0;
			var i = 0;
			var MaxDistance = 800;
			var RuneMaxDistance = 200;
			var BubblesNeededToMerge = has_rune("J") ? 1 : 2;
			
			//#region Rune Player Movement
			if(has_rune("D"))
			{
				with(oPlayer)
				{
					if(self != Soap && get_player_team(player) != get_player_team(Soap.player))
					{
						var runedist = point_distance(x, y-(char_height*0.5), bubble.x, bubble.y);
						if(runedist < RuneMaxDistance)
						{
							
							// Get the vector difference
							var runexdiff = x - bubble.x;
							var runeydiff = (y-(char_height*0.5)) - bubble.y;
							
							// Get the magnitude of the vector
							var runemagnitude = sqrt(max( (runexdiff*runexdiff) + (runeydiff * runeydiff), 1 ));
							
							// Get the normalized vector
							var runexnorm = runexdiff / runemagnitude;
							var runeynorm = runeydiff / runemagnitude;
							
							// Apply speed
							var runeNewHsp = (runexnorm * max(0.25-runedist*0.0001,0))*bubble.speed_scale;
							var runeNewVsp = (runeynorm * max(0.25-runedist*0.0001,0))*bubble.speed_scale;
							
							bubble.hsp += runeNewHsp;
							bubble.vsp += runeNewVsp;
						}
					}
				}
			}
			//#endregion Rune Player Movement
			
			for (i = 0; i < bubble_list_size; i++) 
			{
				//#region Move Towards Other Bubbles
				// get other bubble from list
				
				var otherbubble = soap_bubbles[|i];
				
				if(otherbubble == bubble) continue;
				if(otherbubble.flag_delete) continue;
				if(otherbubble.merging) continue;
				
				// Get distance
				var dist = point_distance(otherbubble.x, otherbubble.y, bubble.x, bubble.y);
				if(dist > MaxDistance) continue;
				
				if(otherbubble.exploding)
				{
					var ExplosionSize = otherbubble.size == BIG ? 140 : otherbubble.size == SMALL ? 80 : 40;
					if((dist < ExplosionSize) && (bubble.player == otherbubble.player))
					{
						if(otherbubble.image_index >= 6 && otherbubble.image_index < 12)
						{
							ExplodeBubble(bubble);
						}
					}
					continue;
				}
				
				// Get the vector difference
				var xdiff = otherbubble.x - bubble.x;
				var ydiff = otherbubble.y - bubble.y;
				
				// Get the magnitude of the vector
				var magnitude = sqrt(max( (xdiff*xdiff) + (ydiff * ydiff), 1 ));
				
				// Get the normalized vector
				var xnorm = xdiff / magnitude;
				var ynorm = ydiff / magnitude;

				// Reset permitted hsp to use next tick when this bubble is not longer allowed to run this math
				bubble.last_permitted_hsp = 0;
				bubble.last_permitted_vsp = 0;
				
				// Parry ownership
				if(bubble.was_parried && instance_exists(otherbubble.linked_hitbox)) otherbubble.player = bubble.player;
				
				// Handle forces
				var TrueDistanceScale = bubble.size == TINY ? 1 : bubble.size == SMALL ? 1.1 : 1.4;
				if(dist < max(GetTrueBubbleRadius(bubble)*TrueDistanceScale,GetTrueBubbleRadius(otherbubble)*TrueDistanceScale))
				{
					// Apply repulsive force to both bubbles
					var SpeedScale = 0.2;
					
					var NewHsp = xnorm * SpeedScale * bubble.speed_scale;
					var NewVsp = ynorm * SpeedScale * bubble.speed_scale;
					
					var OtherNewHsp = xnorm * SpeedScale * otherbubble.speed_scale;
					var OtherNewVsp = ynorm * SpeedScale * otherbubble.speed_scale;
					
					bubble.hsp -= NewHsp;
					bubble.vsp -= NewVsp;
					
					otherbubble.hsp += OtherNewHsp;
					otherbubble.vsp += OtherNewVsp;
					
					bubble.last_permitted_hsp -= NewHsp;
					bubble.last_permitted_vsp -= NewVsp;
					
					otherbubble.last_permitted_hsp += OtherNewHsp;
					otherbubble.last_permitted_vsp += OtherNewVsp;
				}
				else
				{
					// Apply speed
					var NewHsp = (xnorm * max(0.25-dist*0.001,0))*bubble.speed_scale;
					var NewVsp = (ynorm * max(0.25-dist*0.001,0))*bubble.speed_scale;
					
					bubble.hsp += NewHsp;
					bubble.vsp += NewVsp;
					
					bubble.last_permitted_hsp += NewHsp;
					bubble.last_permitted_vsp += NewVsp;
				}
				//#endregion Move Towards Other Bubbles
				
			
				// Queue up bubble merges
				var BubbleMergeRadius = bubble.size == TINY ? 30 : 40;
				
				if(dist <= BubbleMergeRadius * bubble.speed_scale && close_bubble_number < BubblesNeededToMerge && otherbubble.lockout_timer == 0)
				{
					// Push bubbles to array
					if(otherbubble.size == bubble.size && otherbubble.flag_delete == false) 
					{
						close_bubbles[close_bubble_number] = otherbubble;
						close_bubble_number++;
					}
				}
			}
		
			//#region Bubble Merging
			// If 3 close bubbles, should merge
			if(close_bubble_number >= BubblesNeededToMerge && bubble.size < BIG)
			{
				// Get average position between the three
				var xavg = 0;
				var yavg = 0;
				var NewBubbleWillExplode = false;
				var BubbleInMotion = noone;
				
				var ii = 0;
				for(ii = 0; ii < close_bubble_number; ii++)
				{
					xavg += close_bubbles[ii].x;
					yavg += close_bubbles[ii].y;
					
					if(close_bubbles[ii].explosive)
					{
						NewBubbleWillExplode = true;
					}
					
					if(close_bubbles[ii].inMotion)
					{
						BubbleInMotion = close_bubbles[ii];
					}
					
					close_bubbles[ii].flag_delete = true;
				}
				
				if(bubble.explosive)
				{
					NewBubbleWillExplode = true;
				}
				
				if(bubble.inMotion)
				{
					BubbleInMotion = bubble;
				}
				
				xavg /= close_bubble_number;
				yavg /= close_bubble_number;
				
				// Create new bubble
				var HasSizeIncreaseRune = has_size_increase_rune;
				has_size_increase_rune = false;
				
				var newbubble = CreateNewBubble(floor(xavg),floor(yavg),bubble.size + 1,0,0);
				
				has_size_increase_rune = HasSizeIncreaseRune;
				
				newbubble.merging = true;
				newbubble.lockout_timer = 10;
			
				if(NewBubbleWillExplode)
				{
					// Get a main bubble to change the merge sprite based off
					var MainBubble = bubble;
					
					if(BubbleInMotion != noone)
					{
						MainBubble = BubbleInMotion;
					}
					
					var BubbleAngle = point_direction(xavg, yavg, MainBubble.x, MainBubble.y)
					BubbleAngle = round(BubbleAngle/120);
					
					// Set merge sprite based on main bubble direction offset to average position
					switch(BubbleAngle)
					{
						case 0:
						case 3: newbubble.sprite_index = bubble.size == 1 ? sprite_get("small_bubble_merge_explosive_right") : sprite_get("big_bubble_merge_explosive_right"); break;
						case 1: newbubble.sprite_index = bubble.size == 1 ? sprite_get("small_bubble_merge_explosive_down") : sprite_get("big_bubble_merge_explosive_down"); break;
						case 2: newbubble.sprite_index = bubble.size == 1 ? sprite_get("small_bubble_merge_explosive_left") : sprite_get("big_bubble_merge_explosive_left"); break;
					}
					
					newbubble.explosive = true;
				}
				else
				{
					newbubble.sprite_index = bubble.size == 1 ? sprite_get("small_bubble_merge") : sprite_get("big_bubble_merge");
				}
				
				// Sound
				sound_play(sound_get(bubble.size == 1 ? "soap_bubble_merge_med" : "soap_bubble_merge_lrg"));
				
				// Destroy self
				bubble.flag_delete = true;
	
				//#endregion Bubble Merging
			}
		}
		else
		{
			// Apply speed
			bubble.hsp += bubble.last_permitted_hsp;
			bubble.vsp += bubble.last_permitted_vsp;
		}

		//#endregion Bubble Movement
		
		//#region Hitbox Collision
		var HitpauseTime = bubble.size == TINY ? 0 : bubble.size == SMALL ? 2 : 3;
		if(!hitpause)
		{
			var OverlapRadius = bubble.size == BIG ? 40 : bubble.size == SMALL ? 20 : 10;
			with(pHitBox)
			{
				// Custom collision code (hopefully a bit more effecient), just treats everything like circles
				var width = image_xscale * 100;
				var height = image_yscale * 100;
				var PointsDistance = point_distance(x,y,bubble.x,bubble.y);
				var OverlapDistance = max(0,PointsDistance - OverlapRadius - ((width+height)*0.5))

				if(OverlapDistance == 0 && variable_instance_exists(self, "player_id"))
				{
					if(player_id == Soap)
					{
						if(attack != AT_EXTRA_1 && attack != AT_USPECIAL)
						{
							if(!bubble.exploding && !bubble.explosive && !bubble.merging && !bubble.flag_delete && bubble.lockout_timer == 0)
							{
								if(self != bubble.last_hitbox)
								{
									with(Soap)
									{
										if(bubble.last_hitbox_window != get_hitbox_value(other.attack,other.hbox_num,HG_WINDOW) || !instance_exists(bubble.last_hitbox))
										{
											last_hit_bubble = bubble;
											bubble.last_hitbox_window = get_hitbox_value(other.attack,other.hbox_num,HG_WINDOW);
											
											//#region Chain Exploding
											if((other.attack == AT_EXTRA_2 || (other.attack == AT_JAB && other.hbox_num == 3)) && !bubble.exploding)
											{
												ExplodeBubble(bubble);
											}
											//#endregion Chain Exploding
											else
											{
												//#region Bubble Knock Hitbox Creation
												var Angle = spr_dir == -1 ? 180 - GetHitboxAngle(other, bubble) : GetHitboxAngle(other, bubble);
												
												// Play sound and hitpause
												// Only play once per bubble type per hitbox
												if(
													!(variable_instance_exists(other,"hit_small_bubble") && bubble.size == SMALL) && 
													!(variable_instance_exists(other,"hit_big_bubble") && bubble.size == BIG) && 
													!(variable_instance_exists(other,"hit_tiny_bubble") && bubble.size == TINY))
												{
											    	old_hsp = hsp;
											    	old_vsp = vsp;
													hitstop_full = HitpauseTime;
											    	hitstop = HitpauseTime;
											    	hitpause = true;
											    	
											    	if(bubble.size == TINY) 
											    	{
											    		other.hit_tiny_bubble = true;
											    	}
											    	if(bubble.size == SMALL) 
											    	{
											    		spawn_hit_fx( bubble.x, bubble.y, 19 );
											    		other.hit_small_bubble = true;
											    	}
											    	if(bubble.size == BIG)
											    	{
											    		spawn_hit_fx( bubble.x, bubble.y, 305 );
											    		other.hit_big_bubble = true;
											    	}
													
													sound_play(sound_get(bubble.size == BIG ? "soap_bubble_launch_lrg" : bubble.size == SMALL ? "soap_bubble_launch_med" : "soap_bubble_launch_sml"),false, noone,1,0.8+(random_func(0,4,false)*0.1));
												}
												
												bubble.hitpause = HitpauseTime;
												bubble.image_index = 0;
												bubble.last_hitbox = other;

												if(!(other.attack == AT_USTRONG && other.hbox_num == 2) && !(other.attack == AT_FSTRONG && other.hbox_num < 3))
												{
													bubble.lockout_timer = 9;
												}
												
												// Explode on hit rune
												if(has_rune("O") && bubble.size > TINY)
												{
													bubble.explosive = true;
												}
												
		
												// Launch bubble
												LaunchBubble(bubble, get_hitbox_value(other.attack, other.hbox_num, HG_BUBBLE_KNOCKBACK) * dcos(Angle), get_hitbox_value(other.attack, other.hbox_num, HG_BUBBLE_KNOCKBACK) * -dsin(Angle),bubble.explosive, other.kb_angle,other.kb_value);
												
												//#endregion Bubble Knock Hitbox Creation
											}
										}
									}
								}
							}
						}
					}
					else if(!bubble.exploding && !bubble.explosive && !HasHitbox)
					{
						// Destroy bubble if hitbox isn't Awatsu's, and there is no current active projectile hitbox
						bubble.flag_delete = true;
						
						// Play sound and hitpause
						// Don't apply hitpause if the hitbox is on the player itself (usually recovery)
						if(!hitpause)
						{
							if(!variable_instance_exists(self, "player_id"))
							{
								with(other)
								{
									old_hsp = hsp == 0 ? old_hsp : hsp;
							    	old_vsp = vsp == 0 ? old_vsp : vsp;
									hitstop_full = HitpauseTime;
							    	hitstop = HitpauseTime;
							    	hitpause = true;
								}
							}
							else
							{
								old_hsp = hsp == 0 ? old_hsp : hsp;
						    	old_vsp = vsp == 0 ? old_vsp : vsp;
								hitstop_full = HitpauseTime;
						    	hitstop = HitpauseTime;
						    	hitpause = true;
							}
						}
				    	with(Soap)
				    	{
				    		PopBubble(bubble);
				    		RuneSplitBubble(bubble);
				    	}
					}
				}
			}
		}
		//#endregion Hitbox Collision
		
		//#region Allow Player Jumps
		if(bubble.size != TINY && !bubble.exploding && !bubble.explosive)
		{
			//#region Setting Closest Bubble
			if(closest_jumpable_bubble == noone)
			{
				closest_jumpable_bubble = bubble;
			}
			else
			{
				if(point_distance(closest_jumpable_bubble.x,closest_jumpable_bubble.y,x,y) > point_distance(bubble.x,bubble.y,x,y))
				{
					closest_jumpable_bubble = bubble;
				}
			}
			//#endregion Setting Closest Bubble
			
			//#region Tracking Bubbles that Overlap Player
			if(point_distance(bubble.x,bubble.y,x,y) <= DistanceToBubbleToJump)
			{
				if(ds_list_find_index(overlapping_bubbles,bubble) < 0)
				{
					ds_list_add(overlapping_bubbles,bubble);
				}
			}
			else
			{
				if(ds_list_find_index(overlapping_bubbles,bubble) >= 0)
				{
					ds_list_remove(overlapping_bubbles,bubble);
				}
			}
			//#endregion Tracking Bubbles that Overlap Player
		}
		//#endregion
	}
	//#endregion Core Bubble Logic
	
	//#region Nair movement
	if(attack == AT_NAIR && window <= 6 && state == PS_ATTACK_AIR)
	{
		// Nair attraction rune
		var HasNairRune = has_rune("E");
		if(HasNairRune)
		{
			var RuneNairDistance = point_distance(bubble.x,bubble.y,x,y-(char_height * 0.5));
			if(RuneNairDistance < 200)
			{
				var RuneAngle = point_direction(bubble.x,bubble.y,x,y-(char_height * 0.5));
				bubble.hsp = dcos(RuneAngle) * (RuneNairDistance*0.1);
				bubble.vsp = -dsin(RuneAngle) * (RuneNairDistance*0.1);
			}
		}
		
		// Nair sticky values
		if(instance_exists(bubble.last_hitbox))
		{
			if(bubble.last_hitbox.attack == AT_NAIR)
			{
				var Angle = point_direction(bubble.x,bubble.y,x,y);
				bubble.hsp = dcos(Angle) * get_hitbox_value(AT_NAIR, bubble.last_hitbox.hbox_num, HG_BUBBLE_KNOCKBACK);
				bubble.vsp = -dsin(Angle) * get_hitbox_value(AT_NAIR, bubble.last_hitbox.hbox_num, HG_BUBBLE_KNOCKBACK);
				
				bubble.hitpause = Soap.hitstop;
			}
		}
	}
	//#region Nair movement	
	
	//#region Final Bubble Movement
	if(bubble.hitpause == 0)
	{
		var BubbleFriction = bubble.friction_multiplier;
		if(bubble.spawned_explosion)
		{
			BubbleFriction*=0.7;
		}
		
		// Funny low friction via rune
		if(has_rune("G"))
		{
			BubbleFriction*=1.05;
		}
		
		var BubbleBounceSpeedLoss = 0.2;
		
		bubble.hsp *= BubbleFriction;
		bubble.vsp *= BubbleFriction;
		
		var NewLocationX = bubble.x + bubble.hsp;
		var NewLocationY = bubble.y + bubble.vsp;
		
		// Update sprite
		if(bubble.hitpause == 0)
		{
			bubble.image_index += bubble.image_speed;
			if(bubble.image_index > BubbleSpriteNumber) 
			{
				bubble.image_index -= BubbleSpriteNumber;
			}
		}
		
		// Update lockout timer
		if(bubble.lockout_timer > 0)
		{
			bubble.lockout_timer--;
		}
		
		// Update life timer
		if(bubble.life_timer > 0)
		{
			bubble.life_timer -= max(1,floor(bubble_list_size*0.2));
		}
		else
		{
			with(Soap)
			{
				PopBubble(bubble);
			}
			bubble.flag_delete = true;
		}
		
		// Wall/Floor collision
		var TempWall = collision_line(
		bubble.x,
		bubble.y,
		NewLocationX,
		NewLocationY, 
		asset_get("solid_32_obj"), 
		false,
		true );
	
		// If hit a solid object, bounce
		if(TempWall)
		{
			// Always reflect vspeed
			bubble.vsp *= -BubbleBounceSpeedLoss;
			
			NewLocationY = bubble.y + bubble.vsp;
			
			// Check again to see if hsp also needs to reflect
			TempWall = collision_line(
			bubble.x,
			bubble.y,
			NewLocationX,
			NewLocationY, 
			asset_get("solid_32_obj"), 
			false,
			true );
			
			if(TempWall)
			{
				bubble.hsp *= -BubbleBounceSpeedLoss;
				NewLocationX = bubble.x + bubble.hsp;
			}
		}
	
		bubble.x = NewLocationX;
		bubble.y = NewLocationY;
	}
	else
	{
		bubble.hitpause--;
		if(bubble.hitpause < 0) 
		{
			bubble.hitpause = 0;
		}
	}
	//#endregion
	
	//#region Deletion
	if(bubble.flag_delete)
	{
		DeleteBubble(bubble);
	}
	//#endregion
}

//#endregion
//print("Bubble logic execution time: " + string(current_time - ct));

#define CreateNewBubble(_x, _y, _size, _hsp, _vsp)
{
	if(has_size_increase_rune)
	{
		_size = min(_size + 1, BIG);
	}
	
    var newbubble = 
    {
        sprite_index : _size == TINY ? sprite_get("tiny_bubble") : _size == SMALL ? sprite_get("small_bubble") : sprite_get("big_bubble") ,
        image_index : 0,
        image_speed : 0.25,
        image_xscale : 1,
        x : _x,
        y : _y,
        vsp : _vsp,
        hsp : _hsp,
        player_id : self,
        speed_scale :  _size == SMALL ? 1 : _size == TINY ? 1.5 : 0.5,
        inMotion : false,
        merging : false,
        size : _size,
        map_of_normals : ds_map_create(),
        flag_delete : false,
        evens : false,
        linked_hitbox : noone,
        last_hitbox : noone,
        hitpause : 0,
        exploding : false,
        spawned_explosion : false,
        explosive : false,
        last_hitbox_window : -1,
        lockout_timer : 0,
        life_timer : GetBubbleLifetime(_size),
        was_parried : false,
        player : player,
        last_permitted_hsp : 0,
        last_permitted_vsp : 0,
        friction_multiplier : 0.9,
    }
    
    ds_list_add(soap_bubbles,newbubble);
    
    return newbubble;
}

#define DeleteBubble(_bubble)
{
	if(instance_exists(_bubble.linked_hitbox))
	{
		_bubble.linked_hitbox.destroyed = true;
		_bubble.linked_hitbox = noone;
	}
	
	if(closest_jumpable_bubble == _bubble) closest_jumpable_bubble = noone;
	ds_list_remove(soap_bubbles,_bubble);
	ds_list_remove(overlapping_bubbles,_bubble);
	bubble_list_size--;
}

#define PopBubble(_bubble)
{
	spawn_hit_fx( _bubble.x, _bubble.y, _bubble.size == TINY ? tiny_bubble_pop : _bubble.size == SMALL ? small_bubble_pop : big_bubble_pop ); 
	
	var avgx = 0;
	var playercount = 0;
	
	with(oPlayer)
	{
		avgx+= x;
		playercount++;
	}
	
	avgx /= playercount;

	sound_play(sound_get(_bubble.size == BIG ? "soap_bubble_pop_lrg" : _bubble.size == SMALL ? "soap_bubble_pop_med" : "soap_bubble_pop_sml"),false, noone,0.5,0.8+(random_func(0,4,false)*0.1));
}

#define GetHitboxAngle(_hitbox, _bubble)
{
	// Allow override angles for moves to use seperate bubble knockback angles
	switch(_hitbox.attack)
	{
		case AT_NAIR: 
		{
			if(_hitbox.hbox_num < 3)
			{
				return point_direction(_bubble.x,_bubble.y,_hitbox.x,_hitbox.y);
			}
			else
			{
				return point_direction(xprevious, yprevious, x, y);
			}
		}
	}
	
	return get_hitbox_value(_hitbox.attack, _hitbox.hbox_num, HG_BUBBLE_ANGLE);
}


#define LaunchBubble(_bubble, _hsp, _vsp, _explosive, _angle, _knockback)
{
	if(!_bubble.flag_delete)
	{
	_bubble.inMotion = true;
	_bubble.hsp = _hsp;
	_bubble.vsp = _vsp;
	_bubble.explosive = _explosive;
	
	var LaunchAngle = point_direction(_bubble.x, _bubble.y, _bubble.x + _hsp, _bubble.y + _vsp)
	LaunchAngle = round(LaunchAngle/90);
	
	var BubbleSpriteName = "";
	
	// Angle seperation system, refer to http://i.imgur.com/zWApxGf.png
	switch LaunchAngle {
		// Right
	    case 0: 
	    case 4: BubbleSpriteName = _bubble.size == TINY ? "tiny_bubble_rightknock" : _bubble.size == SMALL ? "small_bubble_rightknock" : "big_bubble_rightknock"; break;
	    
	    // Up
	    case 1:BubbleSpriteName = _bubble.size == TINY ? "tiny_bubble_upknock" : _bubble.size == SMALL ? "small_bubble_upknock" : "big_bubble_upknock"; break;
	    
		// Left
	    case 2: BubbleSpriteName = _bubble.size == TINY ? "tiny_bubble_leftknock" : _bubble.size == SMALL ? "small_bubble_leftknock" : "big_bubble_leftknock"; break;
	    
	    // Down
	    case 3: BubbleSpriteName = _bubble.size == TINY ? "tiny_bubble_downknock" : _bubble.size == SMALL ? "small_bubble_downknock" : "big_bubble_downknock"; break;
	}

	// Account for explosive bubbles
	if(_explosive)
	{
		BubbleSpriteName += "_explosive";
	}
	
	// Set bubble sprite
	_bubble.sprite_index = sprite_get(BubbleSpriteName);
	
	if(instance_exists(_bubble.linked_hitbox))
	{
		_bubble.linked_hitbox.destroyed = true;
		_bubble.linked_hitbox = noone;
	}

	_bubble.linked_hitbox = create_hitbox(AT_EXTRA_1,_bubble.size, floor(_bubble.x), floor(_bubble.y));
	_bubble.linked_hitbox.player = _bubble.player;
	_bubble.linked_hitbox.was_parried = _bubble.was_parried;
	_bubble.linked_hitbox.kb_angle = _angle;
	_bubble.linked_hitbox.kb_value = _bubble.size == BIG ? _knockback : _bubble.size == SMALL ? _knockback*0.75 : 0;
	_bubble.linked_hitbox.transcendent = _explosive;
	}
}
#define ExplodeBubble(_bubble)
{
	if(!_bubble.exploding)
	{
		_bubble.image_index = 0;
		_bubble.image_speed = .5;
		_bubble.sprite_index = GetBubbleExplosionSprite(_bubble);
		_bubble.exploding = true;
		_bubble.explosive = true;
		
		if(instance_exists(_bubble.linked_hitbox))
		{
			_bubble.linked_hitbox.destroyed = true;
		}
		_bubble.inMotion = false;
		_bubble.merging = false;
		
		// Reset bubble jumps
		if(last_bubble == _bubble && in_bubble)
		{
			in_bubble = false;
			djumps = last_djumps;
		}
	}
}

#define GetTrueBubbleRadius(_bubble)
{
	// Size of the actual bubble visual
	switch(_bubble.size)
	{
		case TINY: return 10; break;
		case SMALL: return 15; break;
		case BIG: return 35; break;
	}
	
	return 0;
}

#define SpawnExplosiveSparkle(_bubble, _bubbleradius)
{
	// Explosive sparkles
	if(_bubble.image_index % 1.5 == 0)
	{
		var Sparkle;
		var SparkleXSpawn = _bubble.x + (random_func(9,_bubbleradius*1.2,true) - _bubbleradius*0.6);
		var SparkleYSpawn = _bubble.y + (random_func(10,_bubbleradius*1.2,true) - _bubbleradius*0.6);
		switch(random_func(11,2,true))
		{
			case 0: Sparkle = spawn_hit_fx(SparkleXSpawn, SparkleYSpawn, explosive_crackle_small); break;
			case 1: Sparkle = spawn_hit_fx(SparkleXSpawn, SparkleYSpawn, explosive_crackle_medium); break;
			case 2: Sparkle = spawn_hit_fx(SparkleXSpawn, SparkleYSpawn, explosive_crackle_big); break;
		}
		Sparkle.depth = -100;
		
		sound_play(sound_get("soap_crackle" + string((random_func(12,9,true)+1))));
	}
}
#define RuneSplitBubble(_bubble)
{
	// Split bubble rune
	if(has_rune("K") && _bubble.size > TINY)
	{
		var HasSizeIncreaseRune = has_size_increase_rune;

		has_size_increase_rune = false;
		
		var RuneBubble1 = CreateNewBubble(_bubble.x,_bubble.y,_bubble.size-1,-8,0);
		var RuneBubble2 = CreateNewBubble(_bubble.x,_bubble.y,_bubble.size-1,8,0);
		
		RuneBubble1.lockout_timer = 6;
		RuneBubble2.lockout_timer = 6;
		
		has_size_increase_rune = HasSizeIncreaseRune;
	}
}

#define GetBubbleSpriteName(_bubble)
{
	return _bubble.size == TINY ? "tiny_bubble" : _bubble.size == SMALL ? "small_bubble" : "big_bubble";
}
#define GetBubbleLifetime(_size)
{
	return _size == TINY ? tiny_bubble_lifetime : _size == SMALL ? small_bubble_lifetime : big_bubble_lifetime;
}

#define GetBubbleSprite(_bubble)
{
	return _bubble.size == TINY ? tiny_bubble_sprite : _bubble.size == SMALL ? small_bubble_sprite : big_bubble_sprite;
}

#define GetBubbleExplosionSprite(_bubble)
{
	return _bubble.size == TINY ? tiny_bubble_explosion_sprite : _bubble.size == SMALL ? small_bubble_explosion_sprite : big_bubble_explosion_sprite;
}
#define RuneGetBubbleExplosionSprite(_bubble)
{
	return _bubble.size == TINY ? small_bubble_explosion_sprite : big_bubble_explosion_sprite;
}