// Bubble size defines
#macro TINY 1
#macro SMALL 2
#macro BIG 3


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//#region Specials

//#region NSpecial
if (attack == AT_NSPECIAL)
{
	can_fast_fall = false;
	
	//#region Switch to other specials
	if(window == 1 && window_timer == get_window_value(AT_NSPECIAL,1,AG_WINDOW_LENGTH))
	{
		//#region Transition to Fspecial
		if(right_down || left_down)
		{
			spr_dir = right_down ? 1 : -1;
			window = 0;
			window_timer = 0;
			explosive_special = true;
			set_attack(AT_FSPECIAL);
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_explosive"));
			set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_explosive_hurt"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_explosive_air"));
			set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_explosive_air_hurt"));
		}
		//#endregion Transition to Fspecial
		
		//#region Transition to Dspecial
		if(down_down)
		{
			// Clear dspecial cooldown
			move_cooldown[AT_DSPECIAL] = 0;
			
			window = 0;
			window_timer = 0;
			explosive_special = true;
			set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 16);
			set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_explosive"));
			set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_explosive_hurtbox"));
			set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_explosive_air"));
			set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_explosive_hurtbox_air"));
			set_attack(AT_DSPECIAL);
		}
		//#endregion Transition to Dspecial
		
		//#region Transition to Uspecial
		if(up_down)
		{
			window = 0;
			window_timer = 0;
			explosive_special = true;
			set_attack(AT_USPECIAL);
			set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_explosive"));
			set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_explosive_hurtbox"));
			set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_explosive"));
			set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_explosive_hurtbox"));
		}
		//#endregion Transition to Uspecial
	}
	//#endregion Switch to other specials
	
	if(window == 2 && window_timer == 1)
	{
		var Bubble = CreateNewBubble(x+(spr_dir*6),y-char_height+52,SMALL,0,0);
		Bubble.image_index = 4;
		Bubble.sprite_index = GetBubbleExplosionSprite(Bubble);
		Bubble.exploding = true;
	}
	
	if(window == 1 && window_timer % 4 == 0 && window_timer > 8)
	{
		SpawnExplosiveSparkleAtLocation(x,y-20,40);
	}
}
//#endregion NSpecial

//#region FSpecial
if (attack == AT_FSPECIAL){
	var BubbleHsp = explosive_special ? 11 : 20;
	var BubbleVsp = -1;
	
	if(explosive_special)
	{
		with(pHurtBox) if(other.player == player) sprite_index = sprite_get("fspecial_explosive_hurt");
	}
	
	if(window == 1 && window_timer == get_window_value(AT_FSPECIAL,1,AG_WINDOW_LENGTH))
	{
		var Bubble = CreateNewBubble(x + (50*spr_dir),y-char_height+60,SMALL,0,0);
		LaunchBubble(Bubble,BubbleHsp*spr_dir,BubbleVsp,explosive_special, 361, 4);
		if(explosive_special)
		{
			Bubble.friction_multiplier = 0.96;
		}
		
		explosive_special = false;
	}
	
	// Sound
	if(window == 1 && window_timer == 1)
	{
		sound_play(sound_get("soap_bubble_create_med"));
		if(explosive_special)
		{
			sound_play(sound_get("soap_bubble_explosive_create_med"),false,noone,0.5);
		}
	}
}
//#endregion FSpecial

//#region USpecial
if (attack == AT_USPECIAL){
	
	// Allow fastfalling on window 3
	can_fast_fall = (window == 3 || (window == 2 && window_timer >= 10)) && has_hit_player;
	
	// Resets
	if(window == 1 && window_timer == 1)
	{
		explosive_uspec_bubbles = [noone,noone,noone];
		explosive_uspec_index = 0;
	}
	
	// Define bubble variables
	var BubbleSpeed = 5;
	var BSpeedTableX = [12, -18, 12, -2, 10, 12];
    var BSpeedTableY = [-22, 8, -14, 16, -8, 10];
    var BSpeedTableSize = [TINY, TINY, TINY, TINY, TINY, TINY];
    var BExplosiveTable = [false, true, false, true, true, true];
    
    // Rune bubble tables
    var HasUSpecRune = has_rune("B");
    var RuneBSpeedTableX = [18, -18, 12, -2, 10, 12, 12, -18, 12, -2, 10, 12];
    var RuneBSpeedTableY = [-22, 8, -14, 22, -18, 10, -22, 8, -14, 16, -8, 10];
    var RuneBSpeedTableSize = [TINY, TINY, TINY, TINY, TINY, TINY, TINY, TINY, TINY, TINY, TINY, TINY];
    var RuneBExplosiveTable = [false, true, false, true, true, true, false, true, false, true, true, true];
	
	// Set to landing lag when fastfalling onto ground
	if(!free && can_fast_fall)
	{
		set_state(PS_LANDING_LAG);
		landing_lag_time = get_attack_value(AT_USPECIAL,AG_LANDING_LAG);
	}
	
	// Sound
	if(window == 2 && window_timer == 1 && !hitpause)
	{
		sound_play(sound_get("soap_bubble_create_sml"));
		if(explosive_special)
		{
			sound_play(sound_get("soap_bubble_explosive_create_sml"));
		}
	}
	
	if(!hitpause)
	{
		// Set launch angle
		if(window == 1)
		{
			var AngleIncrement = 15;
			
			uspec_angle = joy_pad_idle ? 90 : joy_dir;
			uspec_angle = round(uspec_angle/AngleIncrement);
			uspec_angle *= AngleIncrement;
			uspec_angle = clamp(uspec_angle,60,120);
			
			var LaunchSpeed = 12;
			var HspReduction = 0.6;
			
			set_window_value(AT_USPECIAL,2, AG_WINDOW_HSPEED,dcos(uspec_angle)*LaunchSpeed*spr_dir*HspReduction);
			set_window_value(AT_USPECIAL,2, AG_WINDOW_VSPEED,-dsin(uspec_angle)*LaunchSpeed);
		}

		// Create bubble		
		if(window == 2 && (window_timer % 2 == 0 || HasUSpecRune))
		{
			var ThisIndex = (HasUSpecRune ? window_timer : round(window_timer / 2)) - 1;
			if(ThisIndex < array_length(HasUSpecRune ? RuneBSpeedTableSize : BSpeedTableSize))
			{
	            var Bubble = noone;
	            if(HasUSpecRune)
	            {
	            	Bubble = CreateNewBubble(x, y-(char_height*0.5), RuneBSpeedTableSize[ThisIndex], dcos(uspec_angle) * BubbleSpeed + (RuneBSpeedTableX[ThisIndex]*spr_dir), dsin(uspec_angle) * BubbleSpeed + RuneBSpeedTableY[ThisIndex]);
	            }
	            else
	            {
	            	Bubble = CreateNewBubble(x, y-(char_height*0.5), BSpeedTableSize[ThisIndex], dcos(uspec_angle) * BubbleSpeed + (BSpeedTableX[ThisIndex]*spr_dir), dsin(uspec_angle) * BubbleSpeed + BSpeedTableY[ThisIndex]);
	            }
	            
	            if(explosive_special)
	            {
	                ExplodeBubble(Bubble);
	                Bubble.vsp += get_window_value(AT_USPECIAL,2,AG_WINDOW_VSPEED) * 0.5;
	                
	                if(Bubble.vsp < 0)
	                {
	                	if(explosive_uspec_index < 3)
	                	{
			                explosive_uspec_bubbles[explosive_uspec_index] = Bubble;
			                explosive_uspec_index++;
	                	}
	                }
	            }
	            else Bubble.life_timer = round(GetBubbleLifetime(Bubble.size) * (Bubble.size == SMALL ? 0.25 : 0.75));
			}
		}
	}
	
	// Fake Merge for explosive special
	if(explosive_uspec_index == 3)
    {
    	explosive_uspec_index++;
    	
    	for(var i = 0; i < 3; i++)
    	{
			explosive_uspec_bubbles[i].flag_delete = true;
    	}
    	
        // Create new bubble
		var newbubble = CreateNewBubble(x+(50*spr_dir),y-100,SMALL,0,0);
		newbubble.merging = true;
		newbubble.lockout_timer = 10;
		newbubble.sprite_index = sprite_get("small_bubble_merge_explosive_right")
		newbubble.explosive = true;
    }
	
	//Stops the infinite exploding bubble bug
    if(window == 3 && window_timer == get_window_value(AT_USPECIAL,3,AG_WINDOW_LENGTH))
    {
        explosive_special = false;
        reset_attack_value(AT_USPECIAL,AG_SPRITE);
        reset_attack_value(AT_USPECIAL,AG_HURTBOX_SPRITE);
        reset_attack_value(AT_USPECIAL,AG_AIR_SPRITE);
        reset_attack_value(AT_USPECIAL,AG_HURTBOX_AIR_SPRITE);
    }
}
//#endregion USpecial

//#region DSpecial
if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
    
    var BubbleHsp = 4;
	var BubbleVsp = .5;
	
	var AirBubbleHsp = 0;
	var AirBubbleVsp = 3;
    
    // Cap fall speed
    if(window == 1 && vsp > 3)
	{
	    vsp -= gravity_speed * min(1, vsp / 5) + (window_timer / 60) * (vsp / 5);
	}
    air_max_speed = 1;
    
    	
	if(explosive_special)
	{
		with(pHurtBox) if(other.player == player) sprite_index = sprite_get(other.free ? "dspecial_explosive_air_hurt" : "dspecial_explosive_hurt");
	}
	
	if(window == 1 && window_timer == 1 && !explosive_special)
	{
		reset_window_value(AT_DSPECIAL,3,AG_WINDOW_LENGTH);
	}

    // Sound
    if(window == 1 && window_timer == 10)
    {
    	sound_play(sound_get("soap_bubble_create_lrg"));
    	if(explosive_special)
    	{
    		sound_play(sound_get("soap_bubble_explosive_create_lrg"),false,noone, 0.5);
    	}
    }
    
    if(window == 1 && window_timer == get_window_value(AT_DSPECIAL,1,AG_WINDOW_LENGTH))
    {
    	if(right_down) spr_dir = 1;
    	if(left_down) spr_dir = -1;
    	
        var Bubble = CreateNewBubble(x, y-(free ? (char_height*0.25) : (char_height*0.5)), BIG,free ? AirBubbleHsp : (BubbleHsp * spr_dir),free ? AirBubbleVsp : BubbleVsp);
        if(explosive_special)
        {
        	ExplodeBubble(Bubble);
        	//#region DSpecial Explosion Unique Logic
        	Bubble.sprite_index = sprite_get(free ? "dspecial_air_bubble_explosion" : "dspecial_bubble_explosion");
        	Bubble.image_xscale = spr_dir;
        	Bubble.image_speed = 0.2;
        	
        	//#endregion DSpecial Explosion Unique Logic
        }
        else
        {
        	move_cooldown[AT_DSPECIAL] = 60;
        }
        
        air_max_speed = original_air_max_speed;
        explosive_special = false;
        
        if(free)
        {
        	vsp = -6;
        	hsp = 0;
        	
        	can_dspecial_air = false;
        }
        else
        {
        	hsp = -5 * spr_dir;
        }
    }
}
//#endregion DSpecial
//#endregion Specials

//#region Tilts
//#region FTilt
if(attack == AT_FTILT)
{
	// Create tiny bubble
	if(window == 2 && window_timer == 2 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (40 * spr_dir), y-30,TINY,3*spr_dir,-6);
		Bubble.lockout_timer = 5;
	}
	
	// Create tiny bubble (AGAIN!)
	if(window == 2 && window_timer == 4 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (90 * spr_dir), y-40,TINY,10*spr_dir,0);
		Bubble.lockout_timer = 5;
	}
}//
//#endregion FTilt

//#region UTilt
if(attack == AT_UTILT)
{
	// Create tiny bubble
	if(window == 2 && window_timer == 2 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (50 * spr_dir), y-50,TINY,-4*spr_dir,-14);
		Bubble.lockout_timer = 12;
	}
	
	// Create tiny bubble (again!)
	if(window == 2 && window_timer == 3 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (50 * spr_dir), y-50,TINY,12*spr_dir,-12);
		Bubble.lockout_timer = 12;
	}
}
//#endregion UTilt

//#endregion Tilts


//#region Strongs
//#region UStrong
if(attack == AT_USTRONG)
{
	// Adjust the funky HUD offset because this move is LONG
	if(window == 3 || window == 4 || (window == 5 && window_timer < 6))
	{
		hud_offset+=50;
	}
	
	// Create tiny bubble
	if(window == 2 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (5 * spr_dir), y-6,TINY,8*spr_dir,-2);
		Bubble.lockout_timer = 10;
	}
	
	// // Create tiny bubble (again!)
	// if(window == 3 && window_timer == 4 && !hitpause)
	// {
	// 	var Bubble = CreateNewBubble(x + (-5 * spr_dir), y-22,TINY,-4*spr_dir,-6);
	// 	Bubble.lockout_timer = 10;
	// }
}

//#endregion UStrong

//#region FStrong
if(attack == AT_FSTRONG)
{
	// Create tiny bubble
	if(window == 3 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (90 * spr_dir), y-10,TINY,22*spr_dir,-4);
		Bubble.lockout_timer = 10;
	}
	
	// Create tiny bubble (again!)
	if(window == 5 && window_timer == 2 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (90 * spr_dir), y-10,TINY,12*spr_dir,-14);
		Bubble.lockout_timer = 6;
	}
	
	// Create tiny bubble (again again!)
	if(window == 5 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (90 * spr_dir), y-10,TINY,32*spr_dir,-4);
		Bubble.lockout_timer = 6;
	}
}
//#endregion FStrong

//#region DStrong
if(attack == AT_DSTRONG)
{
	// Create tiny bubble
	if(window == 3 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (40 * spr_dir), y-5,TINY,10*spr_dir,-12);
		var Bubble2 = CreateNewBubble(x - (40 * spr_dir), y-5,TINY,10*-spr_dir,-12);
		Bubble.lockout_timer = 6;
		Bubble2.lockout_timer = 6;
	}
}
//#endregion DStrong

//#endregion Strongs


//#region Aerials
//#region FAir
if(attack == AT_FAIR)
{
	// Create tiny bubble
	if(window == 2 && window_timer == 4 && !hitpause)
	{
		var Bubble = CreateNewBubble(x +  (50 * spr_dir), y-80,TINY,8*spr_dir,-8);
		Bubble.lockout_timer = 5;
	}
	
	// Create tiny bubble (again!)
	if(window == 2 && window_timer == 3 && !hitpause)
	{
		var Bubble = CreateNewBubble(x +  (50 * spr_dir), y-40,TINY,14*spr_dir,-2);
		Bubble.lockout_timer = 5;
	}
	
	// // Create tiny bubble (again!!)
	// if(window == 2 && window_timer == 2 && !hitpause)
	// {
	// 	var Bubble = CreateNewBubble(x +  (20 * spr_dir), y-110,TINY,2*spr_dir,-10);
	// 	Bubble.lockout_timer = 5;
	// }
}
//#endregion FAir

//#region BAir
if(attack == AT_BAIR)
{
	// Create tiny bubbles
	if(window == 2 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x - (50 * spr_dir), y-30,TINY,2*-spr_dir,-12);
		Bubble.lockout_timer = 5;
	}
}
//#endregion BAir

//#region UAir
if(attack == AT_UAIR)
{
	// Create tiny bubbles
	if(window == 2 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x - (30 * spr_dir), y-120,TINY,-4*spr_dir,-18);
		Bubble.lockout_timer = 5;
	}
	
	// Create tiny bubble (again!)
	if(window == 2 && window_timer == 2 && !hitpause)
	{
		var Bubble = CreateNewBubble(x - (-50 * spr_dir), y-90,TINY,4*spr_dir,-16);
		Bubble.lockout_timer = 5;
	}
}
//#endregion UAir

//#region DAir
if(attack == AT_DAIR)
{
	// Create tiny bubble
	if(window == 2 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (15 * spr_dir), y+10,TINY,8*spr_dir,18);
		Bubble.lockout_timer = 5;
	}
	
	// Create tiny bubble (again!)
	if(window == 2 && window_timer == 2 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (10 * spr_dir), y+12,TINY,-10*spr_dir,20);
		Bubble.lockout_timer = 5;
	}
}
//#endregion DAir

//#region NAir
if(attack == AT_NAIR)
{
	// // Create tiny bubbles
	// if(window == 2 && window_timer == 4 && !hitpause)
	// {
	// 	var Bubble = CreateNewBubble(x + (10 * spr_dir), y-20,TINY,6*spr_dir,2);
	// 	Bubble.lockout_timer = 5;
	// }
	
	// Create tiny bubbles (again!)
	if(window == 6 && window_timer == 2 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (10 * spr_dir), y-20,TINY,6*spr_dir,2);
		Bubble.lockout_timer = 5;
	}
}
//#endregion NAir

//#endregion Aerials

//#region Other Moves
//#region Jab
if(attack == AT_JAB)
{
	// Can cancel into jab3 just by holding attack
	// This feels better to me with the animation idk yell at me if it's lame
	if(window == 6 && attack_down)
	{
		window = 7;
		window_timer = 0;
	}
}
//#endregion Jab


//#region DAttack
if(attack == AT_DATTACK){
	if((right_strong_pressed || left_strong_pressed) && (window == 1 && window_timer <= 3))
	{
		set_attack(AT_FSTRONG);
		hsp = get_window_value(AT_DATTACK,1,AG_WINDOW_HSPEED) * spr_dir;
	}
	
	// Create tiny bubble
	if(window == 3 && window_timer == 1 && !hitpause)
	{
		var Bubble = CreateNewBubble(x + (-80 * spr_dir), y-6,TINY,-8*spr_dir,-6);
		Bubble.lockout_timer = 5;
	}
}
//#endregion DAttack

//#region Taunt
if(attack == AT_TAUNT)
{
	// Genesis glitch
	if(get_player_color(player) == 25 && window == 1 && window_timer == 1)
	{
		sound_play(sound_get("soap_glitchtaunt"));
	}
	else
	{
		if(window == 3 && window_timer == 22)
		{
			sound_play(sound_get("soap_yawn_0"+ string(1+random_func(1,2,true))));
		}
	}
}
//#endregion Taunt

//#endregion Other Moves
// Dumb hfx 303 fix
with(hit_fx_obj)
{
	if(sprite_index == asset_get("hfx_direction_bg") && player_id == other)
	{
	     spr_dir = 1;
	}
}

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
        speed_scale :  _size == SMALL ? 1 : _size == TINY? 1.5 : 0.5,
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



#define LaunchBubble(_bubble, _hsp, _vsp, _explosive, _angle, _damage)
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
	_bubble.linked_hitbox.transcendent = _explosive;
	_bubble.linked_hitbox.bubbledamage = _damage;
	}
}
#define ExplodeBubble(_bubble)
{
	if(!_bubble.exploding)
	{
		_bubble.image_index = 0;
		_bubble.image_speed = .3;
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
			jump_speed = original_jump_speed;
			djumps = last_djumps;
		}
	}
}

#define SpawnExplosiveSparkleAtLocation(_x,_y, _radius)
{
	// Explosive sparkles
	var Sparkle;
	var SparkleXSpawn = _x + (random_func(9,_radius,true) - _radius*0.5);
	var SparkleYSpawn = _y + (random_func(10,_radius,true) - _radius*0.5);
	switch(random_func(11,2,true))
	{
		case 0: Sparkle = spawn_hit_fx(SparkleXSpawn, SparkleYSpawn, explosive_crackle_small); break;
		case 1: Sparkle = spawn_hit_fx(SparkleXSpawn, SparkleYSpawn, explosive_crackle_medium); break;
		case 2: Sparkle = spawn_hit_fx(SparkleXSpawn, SparkleYSpawn, explosive_crackle_big); break;
	}
	Sparkle.depth = -100;
	
	sound_play(sound_get("soap_crackle" + string((random_func(12,9,true)+1))));
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
