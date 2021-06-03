//enum
enum Potions
{
	Null,
	Urchin,
	Zap,
	Jelly,
	Tide,
	Star	
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_TAUNT
{
    if window == 1 && window_timer == 1 && get_match_setting( SET_PRACTICE )
        barPoints += barAmount;
}

print(window)

//use Dstrong as the example on how to set up the rest
if (attack == AT_FSTRONG)
{
	//determine which of the attacks we'll use
	if window == 1 && endWindow()
	{
		if ((attack_down || strong_down)//Determine inputs (or custom clone)
		&& barPoints >= barAmount)
		|| custom_clone == true//check if we have bars (but not clone)
		{
			window = 3;
			window_timer = 0;
			
			strong_charge = checkBars()/barNumber*60;
			set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrongCharged"));
			
			if !custom_clone
			{
				
				removeFullBars();
			}
		}
		else
		{
			set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
		}
	}
	
	//put the last window of the UNCHARGED version here in this:
	cancelWindow(2);
}

//Strong System
//use Dstrong as the example on how to set up the rest
if (attack == AT_DSTRONG)
{
	//determine which of the attacks we'll use
	if window == 1 && endWindow()
	{
		if ((attack_down || strong_down)//Determine inputs (or custom clone)
		&& barPoints >= barAmount)
		|| custom_clone == true//check if we have bars (but not clone)
		{
			window = 3;
			window_timer = 0;
			
			strong_charge = checkBars()/barNumber*60;
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongCharged"));
			set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrongCharged_hurt"));
			
			if !custom_clone
			{
				
				removeFullBars();
			}
		}
		else
		{
			set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
			set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
		}
	}
	
	//put the last window of the UNCHARGED version here in this:
	cancelWindow(2);
}

if (attack == AT_USTRONG)
{
	//determine which of the attacks we'll use
	if window == 1 && endWindow()
	{
		if ((attack_down || strong_down)//Determine inputs (or custom clone)
		&& barPoints >= barAmount)
		|| custom_clone == true//check if we have bars (but not clone)
		{
			window = 3;
			window_timer = 0;
			set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongCharged"));
			set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrongCharged_hurt"));
			
			if !custom_clone
				removeFullBars();
		}
		else
		{
			set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
			set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong"));
		}
	}
	
	//put the last window of the UNCHARGED version here in this:
	cancelWindow(2);
}

if (attack == AT_BAIR)
{
	if has_hit && hitstop
	{
		old_vsp = clamp(old_vsp, -1, 2)
	}
}

if (attack == AT_DAIR)
{
	if window == 2 && window_timer == 1 && !hitpause 
	&& (collision_line(x,y,x,y+40,asset_get("par_block"), true, false) || collision_line(x,y,x,y+40,asset_get("par_jumpthrough"), true, false))
	{
		print("w")
	}
}

if (attack == AT_DATTACK)
{
	if window == 3 && window_timer == 9 && !hitpause
	{
		if !right_down && !left_down
		{
			spr_dir*=-1;
		}
	}
}

if (attack == AT_FTILT)
{	
	if window == 2
	{
		if !hitpause
		{
			//Generic values for all bubbles
			var mx = 60;
			var my = -40;
			
			switch (window_timer)
			{
				case 1:
				{
					var bhsp = 1.2+random_func(2,5, false);
					var bvsp = 0.1;
					var b1 = createBubble(mx, my, bhsp, bvsp);//creates a bubble at mx and my with hsp and vsp
					b1.length += bhsp;
					
					var bhsp = 1.2+random_func(3,6, false);
					var bvsp = 0.2;
					var b2 = createBubble(mx, my, bhsp, bvsp);
					b2.length += bhsp;
				}break;
				
				case 2:
				{
					var bhsp = 1.2+random_func(4,6, false);
					var bvsp = 0.3;
					var b1 = createBubble(mx, my, bhsp, bvsp);
					b1.length += bhsp;
					
					var bhsp = 1.2+random_func(5,7, false);
					var bvsp = 0.4;
					var b2 = createBubble(mx, my, bhsp, bvsp);
					b2.length += bhsp;
				}break;
				
				case 3:
				{
					var bhsp = 1.2+random_func(6,6, false);
					var bvsp = 0.4;
					var b2 = createBubble(mx, my, bhsp, bvsp);
					b2.length += bhsp;
				}break;
			}
		}
	}
}

if (attack == AT_UAIR)
{
	if down_down && ((window == 1 && window_timer >= 6) || (window == 2 && window_timer <= 2))
	{
		vsp+=8;
		vsp = clamp(vsp, 0, 12);
	}
	
	if window == 2
	{
		
		if !hitpause
		{
			var create = inArray(window_timer,[2,4,6,8,10]);
			var yOff = -98;
			var bVSP = 0;
			var bLength = 0;
			switch (window_timer)
			{
				case 2:
				{
					bHSP = 0.4;
					bLength = 42;
					bVSP = -2;
				}break;
				
				case 4:
				{
					bHSP = -0.4;
					bLength = 38;
					bVSP = -2.1;
				}break;
				
				case 6:
				{
					bHSP = 0.6;
					bLength = 36;
					bVSP = -3;
				}break;
				
				case 8:
				{
					bHSP = -0.6;
					bLength = 32;
					bVSP = -3.2;
				}break;
				
				case 10:
				{
					bHSP = 0;
					bLength = 35;
					bVSP = -4.3;
				}break;
			}
			
			if create
			{
				var bubble = create_hitbox( AT_UAIR, 1, x, y + yOff);
				bubble.hsp = bHSP;
				bubble.vsp = bVSP;
				bubble.length = bLength;
			}
		}
	}
}

if (attack == AT_UTILT)
{
	if window == 1
	{
		if window_timer <= 2
		{
			highest_y_point = round(y-20);
		}
		if attack_down
		{
			ButtonHeldDown++;
		}
	}
	
	if window == 2
	{
		hud_offset+=5;
		hud_offset = clamp(hud_offset, 0, 40)
		
		if ButtonHeldDown >= 8 && y >= highest_y_point
		{
			vsp-=0.65;
		}
	}
	
	if !free
	{
		window_advance_switch(2,18,3)
		
		if window == 4
		{
			if was_parried
			{
				set_state(PS_PRATFALL)
			}
			else
			{
				set_state(PS_LANDING_LAG)
			}
		}
	}
	else
	{
		window_advance_switch(2,18,4)
	}
}

if (attack == AT_NSPECIAL){

	if (window == 1 && window_timer == 1)
	{
		PotionHeldDown = true;
		
		//Perform the below if we have at least 1 potion on the field
		//in this case we set it to destroy itself
		if(array_length(myPotion) > 0 && instance_exists(myPotion[0]))
		{
			var num = destroyAllCauldrons();
			print_debug("Destroyed " + string(num) + " potion" + string(num > 1 ? "s" : ""));
			PotionCooldown = 18;
		}
	}

	//The exact window and frame to spawn potion
    if(window == 2 && window_timer == 1)
	{
		//Check here if we have enough points to spawn a potion
		//Also check if there's no potion on the field (can be adjusted in the future for multiple potions)
		if(checkPoints(barAmount) && canSpawnPotion())
		{
			var canConsume = true;
			
			//Spawn based on potion type
			var potAngle = 60;
			var potSpeed = 8;
			var gravityIgnoreFrames = 0;
			
			//set the above into the below to alter how each is thrown
			switch(potionType)
			{
				case Potions.Urchin:
				{
					potAngle = 40;
					potSpeed = 5;
				}break;
				case Potions.Jelly:
				{
				
				}break;
				case Potions.Star:
				{
					potAngle = 0;
					potSpeed = 5;
					gravityIgnoreFrames = 30;
					
				}break;
				case Potions.Tide:
				{
				
				}break;
				case Potions.Zap:
				{
				
				}break;
			}
						
			//Consume the number of points needed. barAmount = 100 points
			if canConsume
				consumePoints(barAmount);
			
			//Spawn the potion based on the type
			var pot = spawnPotionAngle(x,y-30,potionType,potAngle,potSpeed);
			pot.gravityIgnoreFrames = gravityIgnoreFrames;
		}
	}
	
}

	if (attack == AT_FSPECIAL){
		
		if !hitpause
		{
			if window == 2
			{
				switch(window_timer)
				{
					case 1:
					{
						sound_play(asset_get("sfx_orcane_fspecial"));
						sound_play(asset_get("sfx_waterwarp"));
					}break;
				}
			}
		}
		
		if window <= 2
		{
			vsp = clamp(vsp,-1,0)
			
			if (window == 2 && window_timer >= 4) && 
			(collision_line(x+16,y,x+32*spr_dir,y,asset_get("par_block"), true, false))
			{
				window = 3;
				window_timer = 0;
				FSpecBounce = true;
				FSpecBounceHeight = -9;
			}
		}
		
		if window == 3
		{
			can_wall_jump = true;
			if FSpecBounce
			{
				hsp = -2.5*spr_dir;
				vsp = FSpecBounceHeight;
				move_cooldown[AT_FSPECIAL] = 64;
				set_state(PS_IDLE_AIR);
			}
		}
	}

if (attack == AT_USPECIAL){
	
	//Add insnae cooldown to prevent use
	//we set it to zero when landing or getting hit
	move_cooldown[AT_USPECIAL] = 60*60;
	
	//Check at the end of window 1 whether we continue to window 2 or go to the charging window
    if (window == 1 && window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH ))
	{
		if barPoints < barAmount
		{
			window = 10;
			window_timer = 1;
		}
		else
			consumePoints(barAmount);
	}
	
	//Boost Window
	else if(window == 2)
	{
		if window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH )
			set_state(PS_IDLE_AIR);
	}
	
	//Recharge window if not enough points
	else if (window == 10)
	{
		if window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH )
			window_timer = 1;
		if vsp > 1
			vsp = 1;
		hsp = clamp(hsp,-1,1);
		if barPoints < barAmount
		{
			barPoints += barRecharge*2;
		}
		else
		{
			window = 2;
			window_timer = 1;
			barPoints = 0;
			vsp = get_window_value( attack, 2, AG_WINDOW_VSPEED);
		}
	}
}

//Select Potion
if (attack == AT_DSPECIAL)
{
    if (window == 2)
	{
		var pType = potionType;
		if(down_down)
		{
			pType = 3;
			if(left_down)
				pType = 2;
			if(right_down)
				pType = 4;
		}
		else if(left_down)
			pType = 1;
		else if(right_down)
			pType = 5;
			
		potionType = pType;
		
		if (!special_down)
		{
			
			window = 3;
		}
		//print_debug(string(special_down));
	}
}

#define window_advance_switch()
{
	if window == argument[0]
	{
		if window_timer >= argument[1]{window=argument[2];window_timer=0;}
	}
}

#define endlag_cancel()
{
	if !was_parried // checks if you WERENT parried
	{
		iasa_script(); // if you werent parried, wherever you put endlag_cancel() will let you act out of whatever the fuck you were doing before
	}
}

//Consume an amount of points
#define consumePoints(amount)
{
	barPoints -= amount*consumeMultiplier;
}

//check if there are an amount of points
#define checkPoints(amount)
{
	return barPoints >= amount*consumeMultiplier;
}

//returns false if we have a potion already on the field
//can be adjusted later to accomodate more potions
#define canSpawnPotion()
{
	return array_length(myPotion) < maxPotionsOnField;
}

//spawns a potion at a location with an angle and speed
#define spawnPotionAngle(mx, my, potionT, dir, spd)
{
	var lx = lengthdir_x(spd, dir);
	var ly = lengthdir_y(spd, dir);
	var pot = spawnPotion(mx, my, potionT);
	pot.hsp = spr_dir * lx;
	pot.vsp = ly;
	return pot;
}

//spawns a potion at a location
#define spawnPotion(mx, my, potionT)
{
	var pot = instance_create(mx,my,"obj_article1");
	pot.potionType = potionT;
	pot.myOwner = id;
	array_push(myPotion,pot);
	
	print_debug("Spawned Potion: " + string(potionType));
	printPotions();
	
	return pot;
}

//Prints all owned potions
#define printPotions()
{
	print_debug("Current Potions: " + string(array_length(myPotion)));
	for(var i=0; i<array_length(myPotion); i++)
	{
		print_debug(" L> Potion " + string(myPotion[i]) + ": Type " + string(myPotion[i].potionType));
	}
}

//Gets the number of full bars
#define checkBars()
{
	bars = floor(barPoints/barAmount);
	print("Got " + string(bars) + " bars");
	return bars;
}

//Removes a number of points that make a full bar
//returns the number of bars removed
#define removeFullBars()
{
	var num = 0;
	while(barPoints >= barAmount)
	{
		barPoints -= barAmount;
		num++;
	}
	print("Removed " + string(num) + " bars of points");
	return num;
}

//Destroys all onscreen potions that we own
//returns the number that was successfully removed that existed
#define destroyAllPotions()
{
	var num = 0;
	for(var i=0; i<array_length(myPotion); i++)
	{
		if(instance_exists(myPotion[i]))
		{
			num++;
			myPotion[i].destroyed = true;
		}
	}
	return num;
}

//Detonates all cauldrons
#define destroyAllCauldrons()
{
	var num = 0;
	for(var i=0; i<array_length(myPotion); i++)
	{
		if(instance_exists(myPotion[i]) && myPotion[i].functionType == 1
		&& (myPotion[i].potionType != 6 || checkBars() > 0))
		{
			num++;
			myPotion[i].detonated = true;
			myPotion[i].functionType = 2;
		}
	}
	return num;
}

//Creates a bubble with speed
#define createBubble(mx, my, bhsp, bvsp)
{
	var bubble = create_hitbox( AT_FTILT, 1, x + (mx*spr_dir), y + my);
	bubble.hsp = bhsp*spr_dir;
	bubble.vsp = bvsp;
	
	return bubble;
}

// Simply check if a number exists within an array or not
#define inArray(number, arr)
{
	return array_find_index(arr, number) != -1;
}

#define cancelWindow(win)
{
	if window == win && window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH)
	{
		set_state(PS_IDLE);
	}
}

#define endWindow()
{
	return window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH)
}