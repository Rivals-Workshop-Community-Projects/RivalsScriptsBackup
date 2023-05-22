//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

#region Nspecial
if (attack == AT_NSPECIAL){
	
	can_fast_fall = window > 1 && window < 3;
	
	// Cap fall speed
	vsp = min(vsp,3);
	
	// Parry cancel
	if(window_timer > 6 && window == 1 && shield_pressed)
	{
		if( (free && has_airdodge) || (!free))
		{
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_bunt"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_bunt_air"));
			set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_bunt_hurt"));
			set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_bunt_hurt_air"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
			
			fc_bunt = true;
			
			// Make zdrop firecracker
			var fc_zdrop = create_hitbox(AT_NSPECIAL,1,x,y-(char_height * 0.5));
			
			fc_zdrop.vsp = -7;
			fc_zdrop.hsp = 0;
			
			fc_zdrop.grav *= 0.68;
			
			switch(fc_count)
		    {
		    	case 1:
		    	fc_zdrop.sprite_index = sprite_get("firecracker_single_bunt_nooutline");
		    	break;
		    	case 2:
				fc_zdrop.sprite_index = sprite_get("firecracker_double_bunt_nooutline");
		    	break;
		    	case 3:
		    	fc_zdrop.sprite_index = sprite_get("firecracker_triple_bunt_nooutline");
		    	break;
		    }
		    
		    fc_zdrop.num_fc = fc_count;
			
			// Set state
			if(!free)
			{
				if(spr_dir == 1)
				{
					if(right_down) set_state(PS_ROLL_FORWARD); 
					else if(left_down)  set_state(PS_ROLL_BACKWARD);
					else set_state(PS_PARRY);
				}
				else if(spr_dir == -1)
				{
					if(left_down) set_state(PS_ROLL_FORWARD); 
					else if(right_down)  set_state(PS_ROLL_BACKWARD);
					else set_state(PS_PARRY);
				}
			}
			else
			{
				set_state(PS_AIR_DODGE);
			}
			
			exit;
		}
	}
	
	// Reset angle
	if(window == 1 && window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	{
		firecracker_angle = default_firecracker_angle;
		fc_count = 1;
		fc_smoketimer = 6;
		fc_backspin = false;
		fc_bunt = false;
		
		if(vsp > 0) vsp/=6;
		else vsp/=1.2;
		
		// Normal sprites
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt_air"));
		reset_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_AIR_FRICTION);
		reset_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_GRAVITY);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR);
		
		with(pHurtBox) 
			if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_hurt");
			else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_hurt_air");
	}

	if(!joy_pad_idle)
	{
		// Set angle to joystick
		if(window < 2)
		{
		firecracker_angle = joy_dir;
	   
	   // Manage facing left and pulling back
		if(firecracker_angle > 80 && firecracker_angle < 270 && spr_dir == -1)
		{
	   		firecracker_angle = 180 - firecracker_angle;
		}
		else if(spr_dir == -1)
		{
			// Up/down lock
			if(firecracker_angle < 80)
			{

				firecracker_angle = 102;
			}
			else
			{
				firecracker_angle = 270;
			}
		}
		else if(firecracker_angle > 90 && firecracker_angle < 270 && spr_dir == 1)
		{
			// Facing right
			
			// Up/down lock
			if(firecracker_angle > 190)
			{
				firecracker_angle = 270;
			}
			else
			{
				firecracker_angle = 102;
			}
		}
		
		if(spr_dir = -1)
		{

			if(firecracker_angle > 90 && firecracker_angle < -90)
				firecracker_angle = 90;
		}
		}
	}
	else
	{
		// Tilt stick
		if((right_stick_down && spr_dir == 1) || (left_stick_down && spr_dir == -1))
		{
			firecracker_angle = 0;
		}
		if((left_stick_down && spr_dir == 1) || (right_stick_down && spr_dir == -1))
		{
			firecracker_angle = 102;
		}
		if(up_stick_down)
		{
			firecracker_angle = 90;
		}
		if(down_stick_down)
		{
			firecracker_angle = 270;
		}
		
	}
    	
    // Add more firecrackers
	if(fc_count == 1 && window == 1 && (window_timer > ((fc_max_hold_time-15)/3)))
	{
		sound_play( sound_get( "tenru_fc1" ) );
		fc_count = 2;
	}
	if(fc_count == 2 && window == 1 &&(window_timer > 3*((fc_max_hold_time-13)/3)))
	{
		sound_play( sound_get( "tenru_fc2" ) );
		fc_count = 3;
	}
    	
    // Release to throw
    if(!special_down && window == 1 && window_timer < fc_max_hold_time && window_timer > 6)
	{
		window_timer = fc_max_hold_time;
	}
	
	// Spin/bunt throw [disabled]
	if(false)
	if((window == 1 && window_timer < fc_max_hold_time && window_timer > 6) && (attack_down || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed ))
	{
		window_timer = fc_max_hold_time;
		//fc_backspin = !(left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed);
		//fc_bunt = left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed;
		fc_backspin = true;
		//fc_bunt = false; // disabled
		
		// Bunt attributes
		if(fc_bunt)
		{
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_bunt"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_bunt_air"));
			set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_bunt_hurt"));
			set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_bunt_hurt_air"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
			
			with(pHurtBox) 
				if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_bunt_hurt");
				else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_bunt_hurt_air");	
		}
	}
	
	// Spin attributes
	if(window < 3 && (attack_down || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed || shield_down) && !fc_bunt)
	{
		
		// Spin sprites
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_spin"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_spin_air"));
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_spin_hurt"));
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_spin_hurt_air"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		
		with(pHurtBox) 
			if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_spin_hurt");
			else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_spin_hurt_air");
	}
	

	// Smoke effect
	 if(fc_smoketimer == 0 && window < 3)
     {
     	var xoff;
     	if(spr_dir == 1)
     	{
     		xoff = 65;
     	}
     	else
     	{
     		xoff = 50;
     	}
     	
         spawn_hit_fx(x+random_func( -15, 15, false )-(xoff*spr_dir),y+random_func( -20, 20, false )-45,fc_trail);
         fc_smoketimer = 6;
     }
     else
     {
         fc_smoketimer--;
     }
        


    // Determine the sprite of the projectile and animation
    if(fc_bunt)
    {
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
		
		switch(fc_count)
	    {
	    	case 1:
	    	fc_string = "firecracker_single_bunt_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 16);
	    	break;
	    	case 2:
	    	fc_string = "firecracker_double_bunt_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 26);
	    	break;
	    	case 3:
	    	fc_string = "firecracker_triple_bunt_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 36);
	    	break;
	    }	
    }
    else if(fc_backspin == false)
    {
	    switch(fc_count)
	    {
	    	case 1:
	    	fc_string = "firecracker_single_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 16);
	    	break;
	    	case 2:
	    	fc_string = "firecracker_double_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 26);
	    	break;
	    	case 3:
	    	fc_string = "firecracker_triple_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 36);
	    	break;
	    }
    }
	else
	{
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
		
		switch(fc_count)
	    {
	    	case 1:
	    	fc_string = "firecracker_single_spin_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 16);
	    	break;
	    	case 2:
	    	fc_string = "firecracker_double_spin_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 26);
	    	break;
	    	case 3:
	    	fc_string = "firecracker_triple_spin_nooutline";
	    	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 36);
	    	break;
	    }
	}
	   
    
    // Throw firecracker
	if(window <= 2)
	{
  
		if(state == PS_ATTACK_AIR)
		{
			can_throw = false;
		}
		
		// Cooldown
		move_cooldown[AT_NSPECIAL] = 60;
		
		with(pHitBox)
		{
			if((attack == AT_EXTRA_3 && player_id == other.enemykirby) || (orig_player == other.player && (attack == AT_NSPECIAL) && hbox_num == 1))
			{
				destroyed = true;
			}
		}
		
		//throw_speed = fc_bunt ? firecracker_speed * .75 : firecracker_speed;
		throw_speed = firecracker_speed;
		
		// Set firecracker speed
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, throw_speed * (-dsin(firecracker_angle)*1.4) + (vsp* 0.5)); //(fc_bunt ? 1.4 : 0.5
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, throw_speed * dcos(firecracker_angle));
		
		if(fc_bunt){ 
			//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, .68);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, (throw_speed*0.5) * dcos(firecracker_angle));
		}
		
		// Set firecracker spawn loc
		
		// Prevent throw spawn location from being beyond the hand's throw arc
		// if(spr_dir == 1)
		// {
		// 	if(firecracker_angle > 200)
		// 	{
		// 		firecracker_angle = 0;
		// 	}
		// }
		// else
		// {
		// 	if(firecracker_angle < 0)
		// 	{
		// 		firecracker_angle = 0;
		// 	}
		// }
		
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, fc_base_x + dcos(firecracker_angle)*40);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, fc_base_y + -dsin(firecracker_angle)*35 - 8);
		
		// Set firecracker sprite
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get(fc_string));
		
		
	}

}
#endregion

// Fspecial Main
#region Fspecial Main

if (attack == AT_FSPECIAL){
	
	if(window == 1)
	{
		should_set_sprite_to_spin = false;
		fspec_yoff = 0;
		fspec_xoff =  20;
		if((joy_dir < 345 && joy_dir > 195 && spr_dir == 1) || (joy_dir > 195 && joy_dir < 345 && spr_dir == -1) || down_stick_down)
		{
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_down"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_down_air"));
			fspec_yoff = 75;
			fspec_xoff = -10;
		}
		else if((joy_dir > 15 && joy_dir < 165 && spr_dir == 1) || (joy_dir < 165 && joy_dir > 15 && spr_dir == -1) || up_stick_down)
		{
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_up"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_up_air"));
			fspec_yoff = -55;
			fspec_xoff = -15;
		}
		else
		{
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
		}
		
		// Whiff hitboxes
	    if (grabbedid == noone){
		    set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 22);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction)
			
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -36 + fspec_yoff);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -35 + fspec_yoff/2);
			
						
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 61 + fspec_xoff);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 26 + fspec_xoff);
	    }
	}
	
	// Resetting things
	if(window_timer == 1 && window == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	{
		grabbedProj = noone;
		grabbedid = noone;
		prev_hsp = 0;
		prev_hsp = 0;
		caught_projectile = false;
		grabbed_solid = false;
		KRAGG = false;
		ignoring_projectiles = false;
	}
	can_fast_fall = false;
	can_move = true;
	
	// Weird momentum bug
	if(window == 5 && hitpause == false && caught_projectile == true)
	{
		hsp = prev_hsp;
		vsp = 0;
		
		if((spr_dir == 1 && prev_hsp > 0) || (spr_dir == -1 && prev_hsp < 0))
		{
			prev_hsp-=0.5*spr_dir;
		}

	}
	
	// Deleting hitboxes when triggered
	if(hitpause)
	{
		// Delete hitbox
		with(pHitBox)
		{
			if(player_id == other.id && (attack == AT_FSPECIAL))
			{
				hitbox_timer = 30;
			}
		}
	}

	
	// Ground attributes
	if(state == PS_ATTACK_GROUND && window_timer <= 1 && window == 1)
	{
		hsp += 6*spr_dir;
	}
	else if(state == PS_ATTACK_GROUND && window == 1 && window_timer = 6)
	{
		sound_play(asset_get("sfx_land_light"));
	}

	// Grabbing projectile
	if(hitpause == false && grabbedid == noone && grabbedProj == noone && (window == 3 || window == 4) && !grabbed_solid && !ignoring_projectiles)
	{
		var FSpecGrabRadius = 55;
		
		// First, get nearby hitboxes
		var tempProj = collision_circle(
		x+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X)*spr_dir),
		y+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y)), 
		FSpecGrabRadius, //70
		pHitBox, 
		true,
		true );
		
		// Player check
		var tempPlayer = collision_circle(
		x+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X)*spr_dir),
		y+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y)), 
		FSpecGrabRadius * 0.7, //70
		oPlayer, 
		true,
		true );
	
	// Kragg pillar crash
	if(tempProj != noone)
	{
		if(tempProj.player_id.url == CH_KRAGG)
		{
			if(tempProj.player_id.attack == AT_USPECIAL)
			{
				tempProj = noone;
			}
			
		}
		
		
		// If its my own firecracker
		if(tempProj.player_id.is_tenru)
		{
			if(!tempProj.transcendent) tempProj.bounced = false;
			tempProj.set_transcendent = true;
		}
		
	}
	
 
	
		// Then, check if its a projectile
		if(tempProj != noone && (tempPlayer == noone))
		{
			var is_bashable = 0;
			var is_transcendent = 0;
			var has_hsp = 0;
			var has_vsp = 0;

			
			// Then, check if it can be bashed (love you ori)
			with(tempProj)
			{
				if(type == 2)
				{
					with(player_id)
					{
						is_bashable = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_UNBASHABLE);
						is_transcendent = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_IS_TRANSCENDENT);
						has_vsp = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_VSPEED);
						has_hsp = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_HSPEED);
					}
					
					set_transcendent = true;
					hitbox_timer = 0;
		
					// Toon link jank
					if("player_id" in self)
					if(player_id.url == 2164231403) num = 3
				}
				else
				{
					is_bashable = 1;
					is_transcendent = 1;
				}
			}

			
			// Can only grab own projectiles. Leaving code here to make it a rune later.
			if (tempProj.player_id.is_tenru && (tempProj.attack == AT_NSPECIAL) && tempProj.hbox_num == 1) 
			{
				if((is_bashable == 0 && is_transcendent == 0 && (has_hsp != 0 || has_vsp != 0)) || tempProj.player_id.url == CH_WRASTOR)
				{

								
					// I wish I could delete these but this move is so jank
					prev_hsp = hsp;
					prev_vsp = vsp;
					caught_projectile = true;
					
					// Set grabbed projectile properties
					grabbedProj = tempProj;
					
					// Temp properties while grabbed
					SetTempFirecrackerVariables(grabbedProj,false);
					
					var yoff = get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y) - 5;	
					
					// Increase firecracker charge
					IncreaseCharge(grabbedProj);
					
					with(grabbedProj)
					{
						if(orig_player != other.player)
						{
							was_parried = true;
						}
						player = other.player;
						
						//can_hit_self = true;
						//can_hit[other.player] = false;
			
						hsp = 0;
						vsp = 0;
						hitbox_timer = 0;
						damage = min(damage,5);
						


						
						// Grabbing projectiles
						grabbed = 1;
						x = other.x + (other.spr_dir * 80);
							
						y = other.y + yoff;
						
						// Elliana specific stuff
						if("player_id" in self)
						{
							if(player_id.url == CH_ELLIANA)
							{
				                //can_hit_self = true;
			                    //can_hit[other.player] = false;
				                if (attack == 16) {
			                        owner = other.id
			                    }
				                hitbox_timer = 0;
							}
							else if(player_id.url == 1905208125) hsp = 1; // hime
						}
					}
			    		
			    	grabbedid = grabbedProj;
			    	last_grabbedid = grabbedProj;
			    	
					
					with(grabbedid)
					{
						ungrab = 0;
					}
					
	
					 // Play sound and hitpause
					 sound_play(sound_get("tenru_grab"));
					 hitstop_full = 6;
			    	 hitstop = 6;
			    	 hitpause = true;
					 
					 // Set window
					 window = 5;
					 window_timer = 1;
					 

				}
			}
		}
		if(tempProj != noone && tempProj.type == 1)
		{
			tempProj = noone;
		}
	}

	if(grabbedProj != noone && caught_projectile)
	{
		
		if((shield_down || special_down ) && !hitpause)
		 {
		 	// Temp properties while grabbed
			SetTempFirecrackerVariables(grabbedProj,true);
		 	
			//grabbedid = tempProj;
			//grabbedProj = tempProj;
			grabbed_solid = true;
			caught_projectile = false;
			//can_grab_solid_fspec = false;
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
			clear_button_buffer(PC_SHIELD_PRESSED);
		    
		   	spawn_hit_fx(x+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X)*spr_dir)
		   	, y+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y))
		   	, 19 );
		   	
		   	free = true;
		}
	}
   
   



	
	// Getting projectile variables
	// if(grabbedProj != noone)
	// {
	// 	var temp = grabbedProj;
		
		
		
	// 	if(temp.orig_player == player)
	// 	{
	// 		grabbedTimer = get_hitbox_value( temp.attack, temp.hbox_num, HG_LIFETIME  );
	// 	}
	// 	else
	// 	{
	// 		with(temp.orig_player)
	// 		{
	// 			grabbedTimer = get_hitbox_value( temp.attack, temp.hbox_num, HG_LIFETIME  );
	// 		}
	// 	}
		
	// 	print_debug(string(grabbedTimer))
		
	// 	if(grabbedTimer-1 == grabbedProj.hitbox_timer)
	// 	{
	// 		grabbedProj = noone;
	// 		grabbedid = noone;
	// 		break_grab = true;
	// 	}
		

	// }

	// Swap direction back throw
    if(window == 5 
    && window_timer == 24
    && throw_dir == "back_whiff")
    {
    	throw_dir = "whiff";
    	spr_dir = spr_dir * -1;
    }
    
    // Swap direcion up throw
    if(window == 5 
    && window_timer == 20
    && throw_dir == "up_whiff")
    {
    	throw_dir = "whiff";
    	spr_dir = spr_dir * -1;
    }
    
    
    // Grabbing Platforms
	if((can_grab_solid_fspec || can_grab_plat_fspec) && !grabbed_solid && grabbedid == noone && (window == 3|| window ==4 || (window == 5 && window_timer < 8)) && !shield_down && !special_down)
	{
		var can_grab = false;
		
		// First, get nearby hitboxes
		var tempPlat = collision_circle(
		x+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X)*spr_dir),
		y+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y)), 
		5, 
		asset_get("par_jumpthrough"), 
		true,
		true );
		
		var tempSolid = collision_circle(
		x+((get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X))*spr_dir),
		y+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y)), 
		25, 
		asset_get("par_block"), 
		true,
		true );
		
		// Handle plat/solid grab vars
		if(tempSolid == noone)
		{
			if(can_grab_plat_fspec)
			{
				tempSolid = tempPlat;
				can_grab_plat_fspec = true; // was !freeyea
				can_grab = true;
			}
		}
		else
		{
			if(can_grab_solid_fspec)
			{
				can_grab_solid_fspec = !free;
				can_grab = true;
			}
		}
		
		
		// Then, check if a collision is found
		if(hitpause == false && grabbedid == noone && tempSolid != noone && can_grab)
		{
			grabbedid = tempSolid;
			grabbed_solid = true;
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
			
			 // Play sound and hitpause
			sound_play(sound_get("tenru_grab"));
			hitstop_full = stage_grab_hitpause;
		    hitstop = stage_grab_hitpause;
		    hitpause = true;
		    
			// Delete hitbox
			with(pHitBox)
			{
				if(player_id == other.id && (attack == AT_FSPECIAL))
				{
					hitbox_timer = 30;
					destroyed = true;
				}
			}
			
			KRAGG = true;

		   	spawn_hit_fx(x+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X)*spr_dir*2.4 - fspec_xoff)
		   	, y+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y))
		   	, 19 );	
		}
	}
	
	
	// Custom hitbox creation
	if(!hitpause && grabbedid == noone && grabbedProj == noone && window >= 3 && window <= 5 && !KRAGG)
	{
		if(window_timer <= 1 && window == 3)
		{
			create_hitbox(AT_FSPECIAL,1,x,y);
			//create_hitbox(AT_FSPECIAL,2,x,y);
		}
			
	}

}
#endregion

// Fspecial Grab

#region Fspecial Grab
if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (grabbedid != noone){
    	// CAUTION - JANK WARNING
    	// "with" is used a stupidly large amount of times here.
    	// this is because for some reason, if I just use "." annotation,
    	// the game throws a million error messages when a hitbox that is grabbed
    	// is destroyed. So, I'd rather have an ugly back end than an ugly front end.
    	
    	
    	
    	// Variables needed for grabs
    	break_grab = false;
    	whiff_dir = "whiff";
    	whiff = false;
    	var proj_strength = 2.4;
    	var vertical_strength = 9.5;
    	
    	// Grabbed player properties
    	if(!grabbed_solid)
    	with(grabbedid)
    	{
			ungrab = 0;
        	invincible = false;
    	}
     

        
        
		//print_debug(string(joy_dir))
		//print_debug(string(throw_dir))
	
		// Set projectile variables
		if(grabbedProj != noone)
		{
			with(grabbedProj)
			{
				set_transcendent = true;
				vsp = 0;
				hsp = 0;
				is_spin = false;
				img_spd = 1;
				sprite_index = num_fc == 1 ? sprite_get("firecracker_single") : num_fc == 2 ? sprite_get("firecracker_double") : sprite_get("firecracker_triple");
				
				if("player_id" in self) if(player_id.url == 1905208125)
				{
					// hime
					hsp = 1; 
					proj_angle = 180;
				}
				
				in_hitpause = other.hitpause;
				hitbox_timer = 0;
			}
			grabbedid = grabbedProj;
			//print_debug(string(grabbedProj.grav));
		}
		
        // Pick direction
        if(hitpause == true && window == 5 && window_timer < 2)
        {
 
        	
        	if(throw_dir == "whiff" || joy_pad_idle)
        	{
        		throw_dir = "front";
        	}
        	else
        	{
        	
        	
	        	if(joy_dir >= 225 && joy_dir <= 315)
	        	{
	        		throw_dir = "down";
	        	}
	        	if(joy_dir >= 45 && joy_dir <= 135)
	        	{
	        		throw_dir = "up";
	        	}
	
				if(spr_dir == 1 && (joy_dir >= 315 || joy_dir <= 45)
	        	|| (spr_dir == -1 && (joy_dir >= 135 && joy_dir <= 225)))
	        	{
	        		throw_dir = "front";
	        	}
				
	
	        	if((spr_dir == 1 && (joy_dir >= 135 && joy_dir <= 225))
	        	|| (spr_dir == -1 && (joy_dir >= 315 || joy_dir <= 45)))
	        	{
	        		throw_dir = "back";
	        	}
        	}

        }
        else if(window < 5)
        {
        	throw_dir = "front";
        }
        
        
        // Using whiff sprite for wallgrabs
        if(grabbed_solid)
        {
        	throw_dir = "whiff";
        	if(!hitpause)
        		break_grab = true;
        }
		
		// Down throw
		if(throw_dir == "down")
		{
	    set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 22);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 12);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.0)
			
		if(hitpause == false && window == 5)
		{
        	if(window_timer <= 7)
        	{
        		with(grabbedid)
					x-=26*other.spr_dir;
        	}
        	else if(window_timer > 7 && window_timer < 12)
        	{
        		with(grabbedid)
        		{
	        		y-=17;
	        		x-=3*other.spr_dir;
        		}
        		if(window_timer == 10)
					sound_play(asset_get("sfx_may_whip1"));
        	}
        	else if(window_timer >= 12 && window_timer < 14)
        	{
        		with(grabbedid)
        		{
        			y-=10;
        			x+=34*other.spr_dir;
        		}	
        	}
        	else if(window_timer >= 14)
        	{
        		with(grabbedid)
        		{
        			y+=22;
        			x+=24*other.spr_dir;
        		}
        	}
        	if(window_timer == 17)
        	{
        		create_hitbox( AT_FSPECIAL, 3, x, y );
        		grabbedid.x = x + get_hitbox_value( AT_FSPECIAL, 3, HG_HITBOX_X ) * spr_dir;
        		grabbedid.y = y + get_hitbox_value( AT_FSPECIAL, 3, HG_HITBOX_Y );
        		break_grab = true;
        		
        		// Projectile
        		if(grabbedProj != noone)
        		{
        			// Artificial hit
        			sound_play( asset_get("sfx_blow_heavy1") );
        			
        			// Elliana jank
        			if("player_id" in self)
        				if(player_id.url == CH_ELLIANA) rocket_angle = 270;
        			
        			var new_vsp = proj_strength*get_hitbox_value( AT_FSPECIAL, 3, HG_BASE_KNOCKBACK )*1.5;
        			with(grabbedid)
        			{
        			vsp = new_vsp/1.5;
        			hsp = other.spr_dir * 3;
        			
        			through_platforms = other.fc_lifetime * 0.1;
        			//vsp += grav * vertical_strength/2;
        			spawn_hit_fx( x, y, 301 );
        			}
        			SetTempFirecrackerVariables(grabbedProj,true);
        		}
        	}

        	
		}
		}
		
		
		// Back throw
		if(throw_dir == "back")
		{
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 12);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 28);
		
			if(hitpause == false && window == 5)
			{
				if(window_timer <= 6)
				{
					with(grabbedid){
						x-=10*other.spr_dir;
						if(other.fspec_yoff == -22) y += 6;
						if(other.fspec_yoff == 30) y -= 6;
					}
				}
				else if(window_timer > 6 && window_timer <= 9)
	        	{
	        		with(grabbedid)
	        		{
						x-=36*other.spr_dir;
						y-=2;
	        		}
					if(window_timer == 8)
						sound_play(asset_get("sfx_may_whip2"));
	        	}
	        	else if(window_timer > 9 && window_timer <= 10)
	        	{
	        		with(grabbedid)
	        		{
	        			x-=22*other.spr_dir;
	        	 		y-=5;
	        		}
	        	}
	        	if(window_timer == 11)
	        	{
	        	    create_hitbox( AT_FSPECIAL, 4, x, y );
	        	    grabbedid.x = x + get_hitbox_value( AT_FSPECIAL, 4, HG_HITBOX_X ) * spr_dir;
        			grabbedid.y = y + get_hitbox_value( AT_FSPECIAL, 4, HG_HITBOX_Y ) + 20;
        			break_grab = true;	
        			whiff_dir = "back_whiff";
        			
        			// Projectile
	        		if(grabbedProj != noone)
	        		{
	        			// Artificial hit
	        			sound_play( asset_get("sfx_blow_medium2") );
	        			
	        			// Elliana jank
	        			if("player_id" in self)
        					if(player_id.url == CH_ELLIANA) rocket_angle = other.spr_dir == 1 ? 180 : 0;
	        			
	        			var new_hsp = spr_dir * -proj_strength*get_hitbox_value( AT_FSPECIAL, 4, HG_BASE_KNOCKBACK );
        				with(grabbedid)
        				{
        				hsp = new_hsp;
        				vsp -= grav * vertical_strength * 0.7;
        				spawn_hit_fx( x, y, 301 );
        				}
        				SetTempFirecrackerVariables(grabbedProj,true);
	        		}
	        	}
				
			}
		}
		
		
		// Front throw
		if(throw_dir == "front")
		{
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 11);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 40);
		
			if(hitpause == false && window == 5)
			{
				if(window_timer <= 4)
				{
					with(grabbedid){
						x-=8*other.spr_dir;
						if(other.fspec_yoff == -22) y += 8;
						if(other.fspec_yoff == 30) y -= 8;
					}
				}
				else if(window_timer <= 8 && window_timer > 4)
				{
					with(grabbedid)
						x-=5 *other.spr_dir;
				}
			    if(window_timer == 8)
	        	{
	        	    create_hitbox( AT_FSPECIAL, 5, x, y );
	        	    grabbedid.x = x + (get_hitbox_value( AT_FSPECIAL, 5, HG_HITBOX_X )+20) * spr_dir;
        			grabbedid.y = y + get_hitbox_value( AT_FSPECIAL, 5, HG_HITBOX_Y ) + 30;
        			break_grab = true;	
        			
        			// Projectile
        			if(grabbedProj != noone)
        			{
        				sound_play( asset_get("sfx_blow_medium2") );
        				
						// Artificial hit
			        	var new_hsp = spr_dir * 2*get_hitbox_value( AT_FSPECIAL, 5, HG_BASE_KNOCKBACK );
        				with(grabbedid)
        				{
        				// Batter jank
        				if("player_id" in self)
        					if(player_id.url == 2162809940) x+=12*other.spr_dir
        				
        				// Elliana jank
        				if("player_id" in self)
        					if(player_id.url == CH_ELLIANA) rocket_angle = other.spr_dir == 1 ? 0 : 180;
        				
        				
        				hsp = new_hsp;
        				vsp -= grav * vertical_strength * 0.9;
        				spawn_hit_fx( x, y, 301 );
        				}
        				SetTempFirecrackerVariables(grabbedProj,true);

        			}
	        	}
				
			}
		}
		
		// Up throw
		if(throw_dir == "up")
		{
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 20);
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 12);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 51);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
		
			if(hitpause == false && window == 5)
			{
				if(window_timer <= 4)
				{
					with(grabbedid)
						x-=28*other.spr_dir;
				}
				else if(window_timer <= 8 && window_timer > 4)
				{
					with(grabbedid)
						x-=18*other.spr_dir;
				}
				else if(window_timer <= 10 && window_timer > 8)
				{
					with(grabbedid)
					{
						x-=2*other.spr_dir;
						y-=3;
					}
					if(window_timer == 9)
					sound_play(asset_get("sfx_may_whip2"));
				}
				else if(window_timer <= 13 && window_timer > 10)
				{
					with(grabbedid)
					{
						y-=32;
						x+=24*other.spr_dir;
					}

				}
			    if(window_timer == 14)
	        	{
	        	    create_hitbox( AT_FSPECIAL, 6, x, y );
	        	    grabbedid.x = x + get_hitbox_value( AT_FSPECIAL, 6, HG_HITBOX_X ) * spr_dir;
        			grabbedid.y = y + get_hitbox_value( AT_FSPECIAL, 6, HG_HITBOX_Y ) + 20;
        			break_grab = true;	
        			whiff_dir = "up_whiff";
        			
        			// Projectile
	        		if(grabbedProj != noone)
	        		{
	        			// Artificial hit
	        			sound_play( asset_get("sfx_blow_medium1") );
	        			
	        			// Elliana jank
	        			if("player_id" in self)
        					if(player_id.url == CH_ELLIANA) rocket_angle = 90;
	        			
	        			var new_vsp = -proj_strength*get_hitbox_value( AT_FSPECIAL, 6, HG_BASE_KNOCKBACK );
        				with(grabbedid)
        				{
	        				vsp = new_vsp;
	        				vsp -= grav * vertical_strength;
	        				spawn_hit_fx( x, y, 301 );
        				}
        				SetTempFirecrackerVariables(grabbedProj,true);
	        		}
	        	}
				
			}
		}
		if(!grabbed_solid)
		with(grabbedid)
		{
			x += other.hsp;
        	y += other.vsp;
        	
        	// Super weird jankfest invisible grab meme fix
        	x = floor(x);
        	if(x >= (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE))
        	{
        		x = (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE) + 1;
        		other.break_grab = true;
        	}
        	if(x <= get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE))
        	{
        		x = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE) - 1;
        		other.break_grab = true;
        	}
        	
        	
        	y = floor(y);
        	if(y >= get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE))
        	{
        		y = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) + 1;
        		other.break_grab = true;
        	}
        	if(y <= get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE))
        	{
        		y = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE) - 1;
        		other.break_grab = true;
        	}
        	
        	spr_dir = -other.spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        	wrap_time = 6000;
        	state = PS_WRAPPED;
		}
		

        if(break_grab){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
        	if(!grabbed_solid)
        	with(grabbedid)
        	{
	            state = PS_TUMBLE;
        	}
	        grabbedid = noone;
	        last_grabbedid = noone;
            throw_dir = whiff_dir;
            
            // Wall/platform code
            if(grabbed_solid)
            {
            	free = true;
            	
            	should_set_sprite_to_spin = true;
            	
            	hsp = (fspec_yoff < 0) ? 6.5*spr_dir : 10.5*spr_dir;
            	vsp = (fspec_yoff < 0) ? -10 : -6;
            		
            	// Hijacking this for firecracker launch code
            	if(grabbedProj != noone)
            	{
            		grabbedProj.in_hitpause = false;
            		grabbedProj.hsp = -13.5*spr_dir;
            		grabbedProj.vsp = -6;
            		vsp = (fspec_yoff < 0) ? -11.5 : -7.5;
            		hsp = (fspec_yoff < 0) ? 8*spr_dir : 12*spr_dir;
					
            		grabbedProj = noone;
            	}
            		
            	sound_play(asset_get("sfx_may_whip2"));
            }
            
            // Artificial hit
            if(grabbedProj != noone && !grabbed_solid)
            {
	    		hitstop_full = 8;
	    		hitstop = 8;
	    		hitpause = true;
	    		grabbedProj = noone;
	    		vsp = 0;
	    		hsp = 0;
            }
        }
        
        if(!hitpause && should_set_sprite_to_spin && grabbedProj == noone)
        {
        	should_set_sprite_to_spin = false;
        	
    	    set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_air_spin"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air_spin"));
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);
    		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 11);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 40);
		
		   	with(pHurtBox) 
				if(other.player == player && !other.free) sprite_index = sprite_get("fspecial_air_spin_hurt");
				else if(other.player == player && other.free) sprite_index = sprite_get("fspecial_air_spin_hurt");
        }
    }
}
#endregion


#region Uspecial Main
// Uspecial main
if (attack == AT_USPECIAL){
	
    // Ground attributes
	if(state == PS_ATTACK_GROUND && window_timer == 1 && window == 2)
	{
		vsp = -2;
	}
	else if(state == PS_ATTACK_GROUND && window == 8 && window_timer == 1)
	{
		vsp = -2;
	}
	
	if(grabbedid == noone && !hitpause && state == PS_ATTACK_GROUND && ((window == 4 && window_timer == 1)))
	{
		sound_play(asset_get("sfx_land_light"));
	}
	
	// Air attributes
	if(state == PS_ATTACK_AIR && window_timer == 1 && window == 2)
	{
		vsp = varying_uspecial_vsp;
		
		if(varying_uspecial_vsp < 0)
			varying_uspecial_vsp += 3;
	}
    
    // Freeze if in hitpause (bugfix?)
    if(hitpause)
    {
    	vsp = 0;
    	hsp = 0;
    }
    
    // Resetting things
	if(window_timer == 1 && window == 1)
	{
		grabbedProj = noone;
		grabbedid = noone;
		prev_hsp = 0;
		prev_hsp = 0;
		caught_projectile = false;
		grabbed_solid = false;
		KRAGG = false;
		dspec_buffer = false;
		uspecial_ground = state == PS_ATTACK_GROUND;
		first_uspec = !used_uspec;
		used_uspec = !uspecial_ground;
		ignoring_projectiles = false;
	}
	can_fast_fall = false;
	
	// Upspecial leniancy thing
	// (can get double jump back once when using the leniancy boost)
    if(free && jump_pressed && window_timer == 1 && window == 1)
    {
    	if(!leniancy_recovery)
    	{
    		djumps = 0;
    		leniancy_recovery = true;
    	}
    	else
    	{
    		djumps = 1;
    	}
    }
    
    // Walljump cancel
	can_wall_jump = true;
	
    // Whiff attributes
    if (grabbedid == noone && window_timer == 1 && window == 1){
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, uspecial_ground || first_uspec ? 4 : 20);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, 0);
		
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

		whiff = true;
    }
    
    if(whiff == false && window == 8 && window_timer == get_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH))
    {
    	spr_dir *= -1;
    }
    
	// Dspec buffer
    if(has_hit_player && special_pressed && joy_dir >= 225 && joy_dir <= 315) dspec_buffer = true;
    
    // // Cancel into dspecial
    // if(window >= 8  && window_timer > 4 && ( (special_pressed && joy_dir >= 225 && joy_dir <= 315) || dspec_buffer)  ) {
    // 	set_state(PS_IDLE_AIR);
    // 	set_attack(AT_DSPECIAL);
    // 	from_uspecial = true;
    // 	dspec_buffer = false;
    // }
    
    // Grabbing projectile
	if(grabbedProj == noone && (window < 7 && window > 2) && !grabbed_solid && !ignoring_projectiles)
	{
		var USpecGrabRadius = 65;
		
		// First, get nearby hitboxes
		var tempProj = collision_circle(
		x+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_X)*spr_dir),
		y+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_Y)), 
		USpecGrabRadius, 
		pHitBox, 
		true,
		true );
		
		// Player check
		var tempPlayer = collision_circle(
		x+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X)*spr_dir),
		y+(get_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y)), 
		USpecGrabRadius * 0.7, //70
		oPlayer, 
		true,
		true );
	

		
		// Kragg pillar crash
		if(tempProj != noone && tempPlayer == noone)
		{
			if(tempProj.player_id.url == CH_KRAGG)
			{
				if(tempProj.player_id.attack == AT_USPECIAL)
				{
					tempProj = noone;
				}
				
				KRAGG = true;
			}
			// If its my own firecracker
			if(tempProj.player_id.is_tenru)
			{
				tempProj.set_transcendent = true;
			}
		}
		
		// Then, check if its a projectile
		if(hitpause == false && grabbedid == noone && tempProj != noone && tempProj.type == 2)
		{
			var is_bashable = 0;
			var is_transcendent = 0;
			var has_hsp = 0;
			var has_vsp = 0;

			// Then, check if it can be bashed (love you ori)
			with(tempProj)
			{
				if(type == 2)
				{
					with(player_id)
					{
						is_bashable = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_UNBASHABLE);
						is_transcendent = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_IS_TRANSCENDENT);
						has_vsp = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_VSPEED);
						has_hsp = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_HSPEED);
					}
					
					set_transcendent = true;
					hitbox_timer = 0;
					
					// Toon link jank
					if("player_id" in self)
						if(player_id.url == 2164231403) num = 3
				}
				else
				{
					is_bashable = 1;
					is_transcendent = 1;
				}
			}

			// Wrastor is weird, sometimes his slipstream is bashable and
			// sometimes it's not, depending on whether you reloaded or not.
			// this is a workaround.
			
			// Can only grab own projectiles. Leaving code here to make it a rune later.
			if (tempProj.player_id.is_tenru && (tempProj.attack == AT_NSPECIAL) && tempProj.hbox_num == 1) 
			if((is_bashable == 0 && is_transcendent == 0 && (has_hsp != 0 || has_vsp != 0)) || tempProj.player_id.url == CH_WRASTOR)
			{
				
							
				caught_projectile = true;
				
				// Set grabbed projectile properties
				grabbedProj = tempProj;
				
				// Temp properties while grabbed
				SetTempFirecrackerVariables(grabbedProj,false);
				
				var yoff = get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_Y)-20;	
				var xoff = get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_X)*spr_dir;
				
				IncreaseCharge(grabbedProj);
				with(grabbedProj)
				{
					if(orig_player != other.player)
					{
						was_parried = true;
					}
					player = other.player;
					
					//can_hit_self = true;
					//can_hit[other.player] = false;
		
					hsp = 0;
					vsp = 0;
					hitbox_timer = 0;
					damage = min(damage,5);
					
					// Grabbing projectiles
					grabbed = 1;
					x = other.x + xoff;
						
					y = other.y + yoff;
					
					// Elliana specific stuff
					if("player_id" in self)
					{
						if(player_id.url == CH_ELLIANA)
						{
			                //can_hit_self = true;
		                    //can_hit[other.player] = false;
			                if (attack == 16) {
		                        owner = other.id
		                    }
			                hitbox_timer = 0;
			                rocket_angle = other.spr_dir == 1 ? 280 : 270;
						}
						else if(player_id.url == 1905208125) hsp = 1; // hime
					}
					
				}
		    		
		    	grabbedid = grabbedProj;
		    	last_grabbedid = grabbedProj;
				
				with(grabbedid)
				{
					ungrab = 0;
				}
				 
			
				 // Play sound and hitpause
				 sound_play(sound_get("tenru_grab"));
				 hitstop_full = 6;
		    	 hitstop = 6;
		    	 hitpause = true;
		    	 
		    	 
		    	 
		    	 with(grabbedid)
		    		spawn_hit_fx( x, y, 19 );
				 
			}
		}
		if(tempProj != noone && tempProj.type == 1)
		{
			tempProj = noone;
		}
	}

	
	// Grabbing Platforms
	if((can_grab_solid_uspec || can_grab_plat_uspec) && grabbedid == noone && (window < 7 && window > 2) && !shield_down && !special_down)
	{
		var extension_x = 15;
		var extension_y = 10;
		var can_grab = false;
		
		// First, get nearby hitboxes
		var tempPlat = collision_ellipse(
		x+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_X)*spr_dir) - (extension_x + get_hitbox_value(AT_USPECIAL, window-2, HG_WIDTH)/2),
		y+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_Y) - (extension_y + get_hitbox_value(AT_USPECIAL, window-2, HG_HEIGHT)/2)), 
		x+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_X)*spr_dir) + (extension_x + get_hitbox_value(AT_USPECIAL, window-2, HG_WIDTH)/2), 
		y+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_Y)) + (extension_y + get_hitbox_value(AT_USPECIAL, window-2, HG_HEIGHT)),
		asset_get("par_jumpthrough"), 
		true,
		true );
		
		var tempSolid = collision_ellipse(
		x+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_X)*spr_dir) - (extension_x + get_hitbox_value(AT_USPECIAL, window-2, HG_WIDTH)/2),
		y+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_Y) - (extension_y + get_hitbox_value(AT_USPECIAL, window-2, HG_HEIGHT)/2)), 
		x+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_X)*spr_dir) + (extension_x + get_hitbox_value(AT_USPECIAL, window-2, HG_WIDTH)/2), 
		y+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_Y)) + (extension_y + get_hitbox_value(AT_USPECIAL, window-2, HG_HEIGHT)),
		asset_get("par_block"), 
		true,
		true );
		
		// Handle plat/solid grab vars
		if(tempSolid == noone)
		{
			if(can_grab_plat_uspec)
			{
				tempSolid = tempPlat;
				can_grab_plat_uspec = !free;
				can_grab = true;
			}
		}
		else
		{
			if(can_grab_solid_uspec)
			{
				can_grab_solid_uspec = !free;
				can_grab = true;
			}
		}
		
		// Then, check if a collision is found
		if(hitpause == false && grabbedid == noone && tempSolid != noone && can_grab)
		{
			grabbedid = tempSolid;
			grabbed_solid = true;
			
			 // Play sound and hitpause
			sound_play(sound_get("tenru_grab"));
			hitstop_full = stage_grab_hitpause;
		    hitstop = stage_grab_hitpause;
		    hitpause = true;
		    
		    		    
			// Delete hitbox
			with(pHitBox)
			{
				if(player_id == other.id && (attack == AT_USPECIAL))
				{
					hitbox_timer = 30;
					destroyed = true;
				}
			}
			
			KRAGG = true;
		    
		    
		   	spawn_hit_fx(x+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_X)*spr_dir)
		   	, y+(get_hitbox_value(AT_USPECIAL, window-2, HG_HITBOX_Y) - (extension_y + get_hitbox_value(AT_USPECIAL, window-2, HG_HEIGHT)/2))
		   	, 19 );	
		}
	}
	
	// Pop hit
    if(window == 2 && window_timer == 4 && hitpause == false && !KRAGG) 
    {

    	var tempSolid = collision_ellipse(
		x+(60*spr_dir),
		y, 
		x, 
		y-10,
		asset_get("par_block"), 
		true,
		true );
		
    	if(tempSolid == noone || (special_down || shield_down)) 
    	{
    		create_hitbox( AT_USPECIAL, 5, floor(x), floor(y));
    		create_hitbox( AT_USPECIAL, 7, floor(x), floor(y));
    	}
    }
	
	// Custom hitbox creation
	if(!hitpause && grabbedid == noone && grabbedProj == noone && window >= 3 && window <= 7 && !KRAGG)
		if(window_timer == get_window_value(AT_USPECIAL,window,AG_WINDOW_LENGTH) && window < 6)
			create_hitbox(AT_USPECIAL,window-1,x,y);
	
	// Pratfall on whiff
    if(window == 7 && window_timer == get_window_value(AT_USPECIAL,window,AG_WINDOW_LENGTH) && free && whiff && !first_uspec)
    {
    	set_state(PS_PRATFALL);
    }
    
    // Land anim on whiff
    if((window == 7 || (window == 8 && window_timer < 10)) && whiff && !free && !uspecial_ground && !first_uspec)
    {
    	window = 8;
    	window_timer = 10;
    }
}
#endregion

// Reset uspec cooldown when doing a different move
if(attack != AT_USPECIAL)
{
	uspec_grab_cooldown = 0;
}

#region Uspecial Grab
// Uspecial Grab
if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (grabbedid != noone){
    	
    	// Basic grab stuff
    	break_grab = false;
    	whiff_dir = "whiff";
    	whiff = false;
    	can_move = false;
    	can_air_dspecial = true;
    	used_uspec = false;
    	var proj_strength = 1.5;
    	
    	

    	
    	set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_WHIFFLAG, 0);
    	
    	// Double jump
    	if(!grabbed_solid)
    		djumps = 0;
    	
	    // Grabbed player properties
	    if(!grabbed_solid)
    	with(grabbedid)
    	{
			ungrab = 0;
        	invincible = false;
    	}
     
     	// Set projectile variables
		if(grabbedProj != noone)
		{
			with(grabbedProj)
			{
				through_platforms = other.fc_lifetime * 0.15;
				set_transcendent = true;
				if(in_hitpause)
				{
					vsp = 0;
					hsp = 0;
					is_spin = false;
					img_spd = 1;
					sprite_index = num_fc == 1 ? sprite_get("firecracker_single") : num_fc == 2 ? sprite_get("firecracker_double") : sprite_get("firecracker_triple");
				
					
					if("player_id" in self) if(player_id.url == 1905208125)
					{
						// hime
						hsp = 1; 
						proj_angle = 180;
					}
				}
				else
				{
					vsp = -other.vsp;
	            	hsp = -other.hsp;
				}
				
				in_hitpause = other.hitpause;
				hitbox_timer = 0;
			}
			grabbedid = grabbedProj;
			//print_debug(string(grabbedProj.grav));
		}
    	
    	if(window_timer == 2 && window == 7)
    		sound_play(asset_get("sfx_may_whip2"));
     
    	if(((window == 7 && window_timer == 1) || (window < 7 && window > 3)) && hitpause == false)
    		{
    			window = 7;
    			window_timer = 1;
    			vsp = -15;
    			hsp = 2.2*spr_dir;
    		}
    	
    	if(window == 3 && grabbedProj == noone) break_grab = true;
    	
    	// Window stuff for grab
    	set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 21);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, -10);
		
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 26);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, 0);
     
     
    	if(window == 8 && window_timer == 2 && !grabbed_solid)
    	{
    		if(grabbedid != noone) 
    		{
    			create_hitbox( AT_USPECIAL, 6, floor(grabbedid.x), floor(grabbedid.y) );
    			grabbedid.x = x + get_hitbox_value(AT_USPECIAL,6,HG_HITBOX_X) * spr_dir;
    			grabbedid.y = y + get_hitbox_value(AT_USPECIAL,6,HG_HITBOX_Y) + 20;
    		}
    		break_grab = true;
    	}
    	
    	if(!grabbed_solid)
    	with(grabbedid)
    	{
        	if(other.grabbedProj == noone ? !other.hitpause : !hitpause)
        	{
	    		//x += -other.hsp;
	        	//y += -other.vsp;
	        	
	        	var xoff = other.window >= 7 ? -30 : 15;
				var yoff = other.window >= 7 ? 86 : -86;
				
				var easetime = other.window >= 7 ? 1*60 : 5;


	            // Uses an easing function to move them over a period of frames. Set this to whatever looks good.
	            x = ease_cubeOut( round(x), round(other.x + (xoff * other.spr_dir)), other.GrabEasingTimer, easetime ); // Changes the hit player's x location over time
	            y = ease_cubeOut( round(y), round(other.y + yoff), other.GrabEasingTimer, easetime ); // Changes the hit player's y location over time
	            other.GrabEasingTimer += 1; // Timer

		        // No movement so that the changes in position don't become jank
		        hsp = 0; 
		        vsp = 0;
	        	
	        	// Super weird jankfest invisible grab meme fix
	        	x = floor(x);
	        	if(x >= (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE))
	        	{
	        		x = (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE) + 1;
	        		other.break_grab = true;
	        	}
	        	if(x <= get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE))
	        	{
	        		x = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE) - 1;
	        		other.break_grab = true;
	        	}
	        	
	        	
	        	y = floor(y);
	        	if(y >= get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE))
	        	{
	        		y = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) + 1;
	        		other.break_grab = true;
	        	}
	        	if(y <= get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE))
	        	{
	        		y = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE) - 1;
	        		other.break_grab = true;
	        	}
        	}
        	
        	spr_dir = -other.spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        	wrap_time = 6000;
        	state = PS_WRAPPED;
    	}
        if(break_grab && !grabbed_solid){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
        	with(grabbedid)
        	{
	            state = PS_TUMBLE;
        	}
            grabbedid = noone;
            last_grabbedid = noone;
            throw_dir = whiff_dir;
            
            if(grabbedProj != noone)
            {
            	with(grabbedProj)
            	{
	            	vsp = -other.vsp;
	            	hsp = -other.hsp;
            	}
            	 
            	// Temp properties while grabbed
				SetTempFirecrackerVariables(grabbedProj,true);
				
            	grabbedProj = noone;
            }
        }

	}
	else
	{
		can_move = true;
	}
}
#endregion



#region Dspecial Ground Main
// Dspecial ground
if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 10;
	
	
	from_dspecial = true;
	//can_move = true;
	
	var normal_height = -12;
	var big_height = -12;
	
	if(window_timer == 1 && window == 1)
	{
		set_window_value(AT_DSPECIAL,2,AG_WINDOW_VSPEED,normal_height);
		dspec_big_flip = 0;
	}
	
	// Drifting
	if(window < 3 && dspec_big_flip > 0 && window_timer == 1)
	{
		// Convert joy dir to radians
		var rad_joy_dir = joy_dir;
		var turning_speed = .3;
		var move_speed = 18;
		
		if(spr_dir == 1) 
		{
			if(rad_joy_dir > 180) rad_joy_dir = 35;
			rad_joy_dir = clamp(rad_joy_dir,35,90);
		}
		else rad_joy_dir = clamp(rad_joy_dir,90,145);
		
		rad_joy_dir = degtorad(rad_joy_dir);
		
		if(!joy_pad_idle)
		{
			// Set speed to stick dir
			hsp = cos(rad_joy_dir) * move_speed * 0.65;
			vsp = sin(rad_joy_dir) * -move_speed;
		}
		
		// if(!joy_pad_idle)
		// {
		// 	// Teleport in direction of stick
		// 	var targethsp = cos(rad_joy_dir) * move_speed;
		// 	var targetvsp = sin(rad_joy_dir) * -move_speed;
		
		
		// 	if(hsp > targethsp) hsp -= turning_speed else hsp += turning_speed;
		// 	if(vsp > targetvsp) vsp -= turning_speed else vsp += turning_speed;
		// }
	}

	
	if(window == 1 && window_timer == 4)
	{
		land_dust_timer = 24;
		whiffspin = false;
		
		if(dspec_big_flip == 1){ set_window_value(AT_DSPECIAL,2,AG_WINDOW_VSPEED,big_height); set_window_value(AT_DSPECIAL,2,AG_WINDOW_SFX,asset_get("sfx_ori_bash_projectile")); dspec_big_flip = 2;}
		else {	set_window_value(AT_DSPECIAL,2,AG_WINDOW_VSPEED,normal_height); set_window_value(AT_DSPECIAL,2,AG_WINDOW_SFX,asset_get("sfx_ori_stomp_spin")); dspec_big_flip = 0;}
		
	}
	
	// // Throwing firecracker
	// if(window == 2 && window_timer == 3)
	// {
	// 	// Set firecracker speed
	// 	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
	// 	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
		
	// 	// Set firecracker sprite
	// 	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("firecracker_double"));
		
	// 	create_hitbox( AT_NSPECIAL, 1, x+20*spr_dir, y-20 );
	// }
	
	// Fall through platforms
	fall_through = down_down && special_down;
	if(joy_pad_idle) fall_through = true;
	if(dspec_big_flip > 0) fall_through = false;

 
	// Reverse direction at the end
	if(window == 4 && (  (whiffspin && window_timer == get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH)) || (!whiffspin && window_timer == get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH)*1.5)   )    )
	{
		spr_dir *= -1;
		whiffspin = false;
	}
	
	// Switch to air dspecial
	var cancelwindow = has_hit_player ? 4 : 6;
	var jumpdodgecancelwindow = 1;
	if((window > 2 || (window == 2 && window_timer > cancelwindow)) && special_pressed)
	{
		window = 4;
		window_timer = 99;
	}
	if((window > 2 || (window == 2 && window_timer > jumpdodgecancelwindow)) && ((shield_pressed && has_airdodge) || jump_pressed))
	{
		clear_button_buffer(PC_SPECIAL_PRESSED);
		window = 4;
		window_timer = 99;
		
		wave_land_adj = 1.8;
		air_dodge_speed = 9;
		
		// Reduce hsp on djump cancel
		hsp *= 0.5;
		djump_speed = original_djump_speed * 1.2;
	}
	if((window > 2 || (window == 2 && window_timer > cancelwindow)) && (attack_pressed || down_stick_down || up_stick_down || right_stick_down || left_stick_down))
	{
		window = 4;
		window_timer = 99;
	}
	
	
	// Test for ground
	if(!free && window == 3)
    {
    	window = 4;
    	window_timer = 1;
    }
	
	// Landing particles and sound
	if (window == 4 && window_timer == 1 && !free){
        land_dust_started = true;
        land_dust_timer = 0;
        sound_play( asset_get( "sfx_land" ) );
    }
    
    // Double hop
	if(!free && window > 2 && special_down && dspec_big_flip == 0)
	{	
		// Reverse
		if(left_down) spr_dir = -1;
		if(right_down) spr_dir = 1;
		
		// Reverse w/ joystick
		if(!joy_pad_idle)
		{
			if(joy_dir > 90 && joy_dir < 270) spr_dir = -1;
			if(joy_dir < 90 || joy_dir > 270) spr_dir = 1;
		}
		
		move_cooldown[AT_DSPECIAL] = 0;
		dspec_big_flip = 1;
		window = 1;
		window_timer = get_window_value(AT_DSPECIAL,1,AG_WINDOW_LENGTH)-3;
	}
    
    // // Super armor
    // if(window == 2 && window_timer <= 5)
    // {
    // 	super_armor = true;
    // }
    // else
    // {
    // 	super_armor = false;
    // }
}
#endregion

#region Air Dspecial Main
// Air DSpecial code Main
if (attack == AT_AIR_DSPECIAL){
	
	// Resetting things
	if(window_timer == 1 && window == 1)
	{
		grabbedProj = noone;
		grabbedid = noone;
		prev_hsp = 0;
		prev_hsp = 0;
		caught_projectile = false;
		throw_dir = "whiff";
		//can_air_dspecial = false;
		
		if(!from_dspecial) set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_LENGTH, 11);
		else set_window_value(AT_AIR_DSPECIAL, 1, AG_WINDOW_LENGTH, 9);
		

		hsp /= 1.3;
		vsp /= 1.3;
		
		ignoring_projectiles = false;
	}
	
	
	// Wrastor momentum stop
	if(window == 2 && window_timer == 1 || (window == 1 && (from_dspecial || from_uspecial)))
	{
		hsp = 0;
		
	}
	if(window == 2 && window_timer == 1)
	{
		vsp = 0;
	}
	
	// // Stop in place
	// if(window == 1 && window_timer == 1)
	// {
	// 	vsp = 0;
	// 	hsp = 0;
	// }
	
	
	// Generic variables
	can_fast_fall = false;
	
	// Fall through platforms if special is held
	if(special_down)
		fall_through = true;
	else
		fall_through = false;
	
	
	// Landing	
	if(!free && window < 3 || (!free && window == 3 && window_timer > 1 && land_dust_started == false))
	{
		set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_LENGTH, landing_time);
		set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 16);
		
		window = 3;
		window_timer = 1;
		
		// Delete falling hitbox
		with(pHitBox)
		{
			if(player_id == other.id && (attack == 30))
			{
				hitbox_timer = 99;
			}
		}
		// FX
	    land_dust_started = true;
	    land_dust_timer = 0;
	    sound_play( asset_get( "sfx_land_heavy" ) );
	    sound_play( asset_get( "sfx_land" ) );
	}
	else if(window == 1)
	{
		set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_AIR_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 13);
	}
	
	
	// Breaking out with button presses
	if((jump_pressed && djumps == 0) && window == 1)
	{
		jump_queue = 1;
	}
	
	var CancelWindow = 10;
	
	can_wall_jump = (window == 2 && window_timer >= CancelWindow);
	
	if ((((jump_pressed && djumps == 0) || jump_queue == 1 || (shield_pressed)) || (special_pressed && !(down_down))) && (window == 2 && window_timer >= CancelWindow))
	{
		if(shield_pressed && !has_airdodge)
		{
			set_state(PS_PRATFALL);
		}
		else
		{
			// Set jump is queued
			if(jump_queue == 1)
			{
				jump_pressed = true;
				set_state(PS_IDLE_AIR);
			}
	
			jump_queue = 0;
			window = 3;
			window_timer = 6;
			vsp = 8;
			
			wave_land_adj = 2;
			air_dodge_speed = 9;
		}
	}
	
	
	 // Grabbing projectile
	if(grabbedProj == noone && (window == 2) && !shield_down && !ignoring_projectiles)
	{
		
		// First, get nearby hitboxes
		var tempProj = collision_ellipse(
		x+((get_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_X))*spr_dir) * 3,
		y+(get_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_Y)), 
		x+(-(get_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_X))*spr_dir) * 3,
		y+(-get_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_Y)*3), 
		pHitBox, 
		true,
		true );
		
	
		// Kragg pillar crash
		if(tempProj != noone)
		{
			if(tempProj.player_id.url == CH_KRAGG)
			{
				if(tempProj.player_id.attack == AT_USPECIAL)
				{
					tempProj = noone;
				}
			}
			// If its my own firecracker
			if(tempProj.player_id.is_tenru)
			{
				tempProj.set_transcendent = true;
			}
		}
		
		// Then, check if its a projectile
		if(hitpause == false && grabbedid == noone && tempProj != noone && tempProj.type == 2)
		{
			var is_bashable = 0;
			var is_transcendent = 0;
			var has_hsp = 0;
			var has_vsp = 0;

			
			// Then, check if it can be bashed (love you ori)
			with(tempProj)
			{
				if(type == 2)
				{
					with(player_id)
					{
						is_bashable = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_UNBASHABLE);
						is_transcendent = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_IS_TRANSCENDENT);
						has_vsp = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_VSPEED);
						has_hsp = get_hitbox_value( other.attack, other.hbox_num, HG_PROJECTILE_HSPEED);
					}
					
					set_transcendent = true;
					hitbox_timer = 0;
					
					// Toon link jank
					if("player_id" in self)
						if(player_id.url == 2164231403) num = 3
				}
				else
				{
					is_bashable = 1;
					is_transcendent = 1;
				}
			}

			
			// Can only grab own projectiles. Leaving code here to make it a rune later.
			if (tempProj.player_id.is_tenru && (tempProj.attack == AT_NSPECIAL) && tempProj.hbox_num == 1) 
			if((is_bashable == 0 && is_transcendent == 0 && (has_hsp != 0 || has_vsp != 0)) || tempProj.player_id.url == CH_WRASTOR)
			{
				window = 4;
	    		window_timer = 1;
							
				caught_projectile = true;
				
				// Set grabbed projectile properties
				grabbedProj = tempProj;
				
				// Temp properties while grabbed
				SetTempFirecrackerVariables(grabbedProj,false);
				
				var yoff = get_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_Y);
				var xoff = get_hitbox_value(AT_AIR_DSPECIAL, 2, HG_HITBOX_X)*spr_dir;
				
				IncreaseCharge(grabbedProj);
				with(grabbedProj)
				{
					if(orig_player != other.player)
					{
						was_parried = true;
					}
					player = other.player;
					
					//can_hit_self = true;
					//can_hit[other.player] = false;
		
					hsp = 0;
					vsp = 0;
					hitbox_timer = 0;
					damage = min(damage,5);
					
					// Grabbing projectiles
					grabbed = 1;
					x = other.x + xoff;
						
					y = other.y + yoff;
					
					// Elliana specific stuff
					if("player_id" in self)
					{
						if(player_id.url == CH_ELLIANA)
						{
			                //can_hit_self = true;
		                    //can_hit[other.player] = false;
			                if (attack == 16) {
		                        owner = other.id
		                    }
			                hitbox_timer = 0;
			                rocket_angle = 270;
						}
						else if(player_id.url == 1905208125) hsp = 1; // hime
					}
					
				}
		    		
		    	grabbedid = grabbedProj;
		    	last_grabbedid = grabbedid;
				
				with(grabbedid)
				{
					ungrab = 0;
				}
				 
				

				

				 // Play sound and hitpause
				 hitstop_full = 6;
		    	 hitstop = 6;
		    	 hitpause = true;
				 sound_play(asset_get("sfx_blow_medium1"));
			}
		}
		if(tempProj != noone && tempProj.type == 1)
		{
			tempProj = noone;
		}
	}
}
#endregion


#region Dspecial grab

// Dspecial Grab
if (attack == AT_AIR_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (grabbedid != noone){
    	// Basic grab stuff
    	break_grab = false;
    	whiff_dir = "whiff";
    	whiff = false;
    	can_move = false;
    	var proj_strength = 1.5;
    	djumps = 0;
    	can_air_dspecial = true;


    	// Pick direction
        if(hitpause == true && window == 4)
        {
 
        	
        	if(throw_dir == "whiff" || joy_pad_idle)
        	{
        		throw_dir = "up";
        	}
        	else
        	{
        	
        	
	        	if(joy_dir >= 225 && joy_dir <= 315)
	        	{
	        		throw_dir = "up";
	        	}
	        	if(joy_dir >= 45 && joy_dir <= 135)
	        	{
	        		throw_dir = "up";
	        	}
	
				if(spr_dir == 1 && (joy_dir >= 315 || joy_dir <= 45)
	        	|| (spr_dir == -1 && (joy_dir >= 135 && joy_dir <= 225)))
	        	{
	        		throw_dir = "front";
	        	}
				
	
	        	if((spr_dir == 1 && (joy_dir >= 135 && joy_dir <= 225))
	        	|| (spr_dir == -1 && (joy_dir >= 315 || joy_dir <= 45)))
	        	{
	        		throw_dir = "back";
	        	}
        	}

        }

    	
    	
	    // Grabbed player properties
    	with(grabbedid)
    	{
			ungrab = 0;
        	invincible = false;
    	}
     
     	// Set projectile variables
		if(grabbedProj != noone)
		{
			with(grabbedProj)
			{
				set_transcendent = true;
				hsp = 0;
				vsp = 0;
				is_spin = false;
				img_spd = 1;
				sprite_index = num_fc == 1 ? sprite_get("firecracker_single") : num_fc == 2 ? sprite_get("firecracker_double") : sprite_get("firecracker_triple");
				
				
				if("player_id" in self) if(player_id.url == 1905208125)
				{
					// hime
					hsp = 1; 
					proj_angle = 180;
				}
				
				in_hitpause = other.hitpause;
				hitbox_timer = 0;
			}
			grabbedid = grabbedProj;
			//print_debug(string(grabbedProj.grav));
		}
    	
    	// Up flip
    	if(throw_dir == "up" && hitpause == false && window != 5)
    	{
    		
    		if((from_dspecial || from_uspecial))
    		{
	    		vsp = -4;
	    		hsp = 0;
    			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_LENGTH, 15);
    			set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
    		}
    		else
    		{
	    		vsp = -10;
	    		hsp = 0;
    			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_LENGTH, 25);
    			set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
    		}

    		window = 5;
    		break_grab = true;
    		set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_ANGLE, 270);
    		
    		
			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 22);
			
    		create_hitbox( AT_AIR_DSPECIAL, 2, x, y );
    		
    		
    		
    		// Projectile
        	if(grabbedProj != noone)
        	{
        		// Artificial hit
        		sound_play( asset_get("sfx_blow_heavy1") );
        		spawn_hit_fx( grabbedid.x, grabbedid.y, 301 );
        		
        		var new_vsp = proj_strength*get_hitbox_value( AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK );
        		with(grabbedid)
        		{
        		vsp = new_vsp;
        		vsp -= grav * vertical_strength;
        		}
        		
        		// Temp properties while grabbed
				SetTempFirecrackerVariables(grabbedProj,true);
        	}
    	}
    	
    	// Left flip
    	if(throw_dir == "back" && hitpause == false && window != 5)
    	{
    		if((from_dspecial || from_uspecial))
    		{
    			vsp = -3;
    			hsp = -7*spr_dir;
    			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_LENGTH, 19);
    			set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
    		}
    		else
    		{
    			hsp = -6*spr_dir;
    			vsp = -8;
    			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_LENGTH, 29);
    			set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
    		}
    		
    		window = 5;
    		break_grab = true;
    		
    		set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_ANGLE, 285);
    		
    		
			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 10);
			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 31);
    		
    		create_hitbox( AT_AIR_DSPECIAL, 2, x, y );
    		
    		// Projectile
        	if(grabbedProj != noone)
        	{
        		// Artificial hit
        		sound_play( asset_get("sfx_blow_heavy1") );
        		spawn_hit_fx( grabbedid.x, grabbedid.y, 301 );
        		
        		var new_vsp = proj_strength*get_hitbox_value( AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK );
        		with(grabbedid)
        		{
        		vsp = new_vsp;
        		vsp -= grav * vertical_strength;
        		hsp = -6*spr_dir;
        		}
        		
        		// Temp properties while grabbed
				SetTempFirecrackerVariables(grabbedProj,true);
        	}
    	}
     
    	// Right flip
    	if(throw_dir == "front" && hitpause == false && window != 5)
    	{
    		
    		// Grounded ver
    		if((from_dspecial || from_uspecial))
    		{
	    		vsp = -3;
	    		hsp = 7*spr_dir;
    			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_LENGTH, 11);
    			set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
    		}
    		else
    		{
	    		vsp = -8;
	    		hsp = 6*spr_dir;
    			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_LENGTH, 21);
    			set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
    		}
    		
    		
    		
    		window = 5;
    		break_grab = true;
    		
    		set_hitbox_value(AT_AIR_DSPECIAL, 2, HG_ANGLE, 245);
    		
    		
			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
			set_window_value(AT_AIR_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 41);
    		
    		create_hitbox( AT_AIR_DSPECIAL, 2, x, y );
    		
    		 // Projectile
        	if(grabbedProj != noone)
        	{
        		// Artificial hit
        		sound_play( asset_get("sfx_blow_heavy1") );
        		spawn_hit_fx( grabbedid.x, grabbedid.y, 301 );
        		
        		var new_vsp = proj_strength*get_hitbox_value( AT_AIR_DSPECIAL, 2, HG_BASE_KNOCKBACK );
        		with(grabbedid)
        		{
        		vsp = new_vsp;
        		vsp -= grav * vertical_strength;
        		hsp = 6*spr_dir;
        		}
        		
        		// Temp properties while grabbed
				SetTempFirecrackerVariables(grabbedProj,true);
        	}
    	}
    	
    	
    	with(grabbedid)
    	{
    		x += -other.hsp;
        	y += -other.vsp;
        	
        	// Super weird jankfest invisible grab meme fix
        	x = floor(x);
        	if(x >= (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE))
        	{
        		x = (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE) + 1;
        		other.break_grab = true;
        	}
        	if(x <= get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE))
        	{
        		x = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE) - 1;
        		other.break_grab = true;
        	}
        	
        	
        	y = floor(y);
        	if(y >= get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE))
        	{
        		y = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) + 1;
        		other.break_grab = true;
        	}
        	if(y <= get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE))
        	{
        		y = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE) - 1;
        		other.break_grab = true;
        	}
        	
        	spr_dir = -other.spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        	wrap_time = 6000;
        	state = PS_WRAPPED;
    	}
        if(break_grab){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
        	with(grabbedid)
        	{
	            state = PS_TUMBLE;
        	}
            grabbedid = noone;
            last_grabbedid = noone;
            throw_dir = whiff_dir;
        	
            
            if(grabbedProj != noone)
            {
            	with(grabbedProj)
            	{
	            	vsp = -other.vsp;
	            	hsp = -other.hsp;
            	}
            	grabbedProj = noone;
            }
        }

	}
	else
	{
		can_move = (window > 1 || window_timer > 10);
	}
}

#endregion

#region Taunt
//Taunt code
if(attack == AT_TAUNT){
	var laughtime = 980;
	var taunt_volume = 2.75;
	
	// Reset timer and play ha
	if(window == 1 && window_timer == 1)
	{
		laugh_timer = laughtime;
		sound_play( sound_get( "tenru_ha" ),false,false,taunt_volume );
	}
	
	// Sound
	if(window == 2 || (window == 1 && window_timer > 35))
		if(laugh_timer == laughtime) {
			sound_play( sound_get( "tenru_laugh" ),false,false,taunt_volume );
			laugh_timer = 0; }
		else laugh_timer += 1;
		
	if(window == 2 && (window_timer == 34 || window_timer == 14)) sound_play( sound_get( "tenru_tailthump" ) );
	
	
	
	if(window == 3 && taunt_stall == 0){
		window = 2;
	}
	else if (window == 2 && taunt_stall == 1)
	{
	    window = 3;
	    window_timer = 0;
	}
	
	
	
	if(window == 3) sound_stop( sound_get( "tenru_laugh" ));
	

}
#endregion

#region Taunt2
// Taunt 2 code
if(attack == AT_TAUNT_2)
{
	if(state == PS_ATTACK_GROUND && window == 2 && (window_timer == 1 || window_timer == 5 || window_timer == 10 || window_timer == 15 || window_timer == 19 ))
	{
		sound_play(sound_get("tenru_small_firecracker"));
	}
}
#endregion

#region Dtilt
//Dtilt code
if(attack == AT_DTILT){
	
	
	// if(was_parried == false && window == 3 and window_timer == get_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH))
	// {
	// 	set_state( PS_CROUCH );
	// 	state_timer = 4;
	// }
	
}
#endregion

#region Utilt
//Utilt code
if(attack == AT_UTILT){
	// if(window == 1 && window_timer == 1)
	// {
	// 	jump_queue = 0;
	// }
	
	// if((window == 2 || window == 1 )&& jump_pressed)
	// {
	// 	jump_queue = 1;
	// }
	
	// if(window == 2 && (jump_pressed || jump_queue == 1) && has_hit_player)
	// {
	// 	hitpause =false;
	// 	jump_pressed = true;
	// 	set_state(PS_IDLE_AIR);
	// 	clear_button_buffer( PC_ATTACK_PRESSED );
		
	// }
	// else if(((window > 3 && window < 10)||(window == 3 && window_timer >= 6 ))&& (jump_down ||special_down || strong_down || attack_down ||shield_down) )
	// {
	// 	shield_down = false;
	// 	shield_pressed = false;
	// 	window = 10;
	// 	window_timer = 0;
		
	// }
	
	// SFX
	if(window == 10 && window_timer == 3)
	{
		sound_play(asset_get("sfx_birdclap"));
	}

	
	// Raise height a bit
	hud_offset = lerp(hud_offset, char_height, 0.5);
	
	// Compensate for whifflag
	var whifflag_offset = 1.0;
	if(has_hit_player)
		whifflag_offset = 0.5;
		

	
	
	// Mash stuff
	// if(window == 1 && window_timer == 1)
	// {
	// 	spin_timer = 0;
	// }
	

	// // Spin timer
	// if(window > 3 && window < 8 && !hitpause)
	// {
	// 	spin_timer++;
	// }
	
	// // Keep spin going by mashing
	// if(window > 3 && window < 8 && attack_pressed)
	// {
	// 	spin_timer = 0;
	// 	hitpause = false;
	// 	hitstop = false;
	// 	clear_button_buffer( PC_ATTACK_PRESSED );
	// }
	
	// // If you stop mashing, skip to end of spin
	// if(spin_timer == 5 && window < 8)
	// {
	// 	window = 8;
	// 	window_timer = 0;
	// }
	
	if(window == 1 && window_timer == 1)
	{
		spins = 0;
	}
	
	// 1st cancel
	if((window == 3 || (window == 2 && window_timer == 4)) && (attack_down || up_stick_down) && window_timer < 6 && !was_parried)
	{
		window = 4;
		window_timer = 0;
		clear_button_buffer( PC_ATTACK_PRESSED );
		has_hit = 0;
		jump_queue = 0;
	}
	
	// Loop spin
	if(window == 8 && (attack_down || up_stick_down) && window_timer > 0 && has_hit == false && !was_parried)
	{
		window = 6;
		window_timer = 0;
		uptilt_loop = true;
		spins++;
	}
	
	// Loop finisher
	if(uptilt_loop && has_hit)
	{
		uptilt_loop = false;
		window = 6;
		window_timer = 0;
	}
	
	// 2nd cancel
	if((!hitpause && window < 10 && window > 3 && (attack_pressed || (!utilt_stick && up_stick_down) ) && window_timer < 15) || (has_hit != false && window == 9 && window_timer > 0))
	{
		window = 10;
		window_timer = 0;
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	
	if(window >= 9 && window <= 10 && has_hit && jump_queue)
	{
		jump_pressed = true;
		jump_down = true;
		set_state(PS_JUMPSQUAT);
	}
	
	// Jump cancel
	if(has_hit && jump_pressed && window > 3)
	{
		jump_queue = 1;
		if(window < 9)
		{
			window = 9;
			window_timer = 1;
			create_hitbox(AT_UTILT,9,x,y);
		}
	}
	

	

	
	// 1st reset
	if(window == 3 && window_timer == get_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH) * whifflag_offset)
	{
		window = 12;
		window_timer = 99;
	}
	
	// 2nd reset
	if(window == 9 && window_timer == get_window_value(AT_UTILT, 9, AG_WINDOW_LENGTH) * whifflag_offset)
	{
		window = 12;
		window_timer = 99;
	}
	
	// Stick storage
	utilt_stick = up_stick_down;
}
#endregion


#region Dair
//Dair code
if(attack == AT_DAIR){

	fall_through = from_dspecial;

	if(window == 1)
		bounce = 1;
	
	// if(window == 2 && has_hit_player)
	// {
	// 	vsp = 0;
	// }
	
	if(window == 2 && has_hit_player && bounce == 1)
	{
		bounce = 0;
	}
	
	
	// if(window == 3 && bounce == 0 && window_timer == 1)
	// {
	// 	//vsp = -11;
	// 	djumps = 0;
	// }

	
}
#endregion

#region Ustrong
//Ustrong code
if(attack == AT_USTRONG){

	// Raise height a bit
	if(window > 2 && window < 8) hud_offset = lerp(hud_offset, char_height, 0.5);
	
}
#endregion

#region Uair
//Uair code
if(attack == AT_UAIR){
	fall_through = from_dspecial && window < 5;
	
	// Wall jump
	can_wall_jump = window == 5 || window == 3;
	
	// Raise height a bit
	hud_offset = lerp(hud_offset, char_height*.5, 0.5);
	
	// Landing lag
	if(window < 3 && has_hit_player) set_attack_value(AT_UAIR, AG_LANDING_LAG, 0);
	else reset_attack_value(AT_UAIR, AG_LANDING_LAG);
	
	if(window == 3 && jump_pressed && djumps == 0)
	{
		window = 5;
		window_timer = 99;
	}
}
#endregion

#region Bair
//Bair code
if(attack == AT_BAIR){

	fall_through = from_dspecial && window < 7;

	can_wall_jump = window == 3 || window == 5 || window == 7;
	
	// Landing lag
	if(window < 6 && has_hit_player) set_attack_value(AT_BAIR, AG_LANDING_LAG, 0);
	else reset_attack_value(AT_BAIR, AG_LANDING_LAG);
}
#endregion

#region Nair

if(attack == AT_NAIR)
{
	fall_through = from_dspecial && window < 5;
}

#endregion

#region Fair

if(attack == AT_FAIR)
{
	fall_through = from_dspecial && window < 4;
}

#endregion



#region Ftilt
//Ftilt code
if(attack == AT_FTILT){

	// if(has_hit_player && window == 2)
	// {
	// 	hsp = 0;
	// }
}
#endregion

//Bair code
// if(attack == AT_BAIR){

// 	if((window == 2 || window == 4 || window == 6) && has_hit_player && hsp < 0)
// 	{
// 		hsp = hsp + 1;
// 	}
	
// }

// //Fair code
// if(attack == AT_FAIR){

// 	// Make the end of djump cancellable (animation looks better)
// 	if(window == 4 && ((jump_pressed  && djumps == 0) || attack_pressed) && window_timer > 11)
// 	{
// 		set_state( PS_IDLE_AIR );
// 	}
	
// }


#region FStrong
//FStrong code
if(attack == AT_FSTRONG){

	can_fast_fall = false;
	can_wall_jump = window >= 5;

	// Init
	if(window == 1 && window_timer == 1){
		reset_attack_value(AT_FSTRONG, AG_SPRITE);
		reset_attack_value(AT_FSTRONG, AG_AIR_SPRITE);
		reset_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE);
		reset_attack_value(AT_FSTRONG, AG_HURTBOX_AIR_SPRITE);
		reset_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES);
		reset_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START);
		reset_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION);
		reset_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH);
		
		with(pHurtBox) 
			if(other.player == player && !other.free) sprite_index = sprite_get("fstrong_hurt");
			else if(other.player == player && other.free) sprite_index = sprite_get("fstrong_air_recover_hurt");
	}

	// Basic hsp boost
	if(window == 3 && window_timer == 1) hsp = max(abs(hsp),12) * spr_dir;

	// if( (window == 3 || window == 4) && !was_parried)
	// {
	// if(left_down && spr_dir == 1)
	// 	hsp -= 1;
	// if(right_down && spr_dir == -1)
	// 	hsp += 1;
	// }
	
	// Endlag movement
	if(!free)
	{
		if(((window == 5 && window_timer > 10) || window > 5))
		{
			if(left_down ) hsp = -7.8 + (window > 5 ? window_timer/2.5 : 0);
			else if(right_down) hsp = 7.8 - (window > 5 ? window_timer/2.5 : 0);
		}
	}
	
	// Air ver
	if(free)
	{
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_air"));
		set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, sprite_get("fstrong_air"));
		set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_air_hurt"));
		set_attack_value(AT_FSTRONG, AG_HURTBOX_AIR_SPRITE, sprite_get("fstrong_air_hurt"));
		
		with(pHurtBox) 
			if(other.player == player && !other.free) sprite_index = sprite_get("fstrong_air_hurt");
			else if(other.player == player && other.free) sprite_index = sprite_get("fstrong_air_hurt");
			
					
		set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
		set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
		set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 12);
		
		if(window >= 3 && window <= 5 && down_down)
		{
			vsp += 0.3;
			vsp = min(vsp,max_fall);
		}
	}
	
	if(window == 4 && window_timer == phone_window_end && free){
		window = 6;
		window_timer = 1;
	}
	

	// Experemental weird feature
	//if(window == 2 && shield_pressed) set_state(PS_IDLE);
}
#endregion


#region Jab
// Jab Code
if(attack == AT_JAB){

	// Allow tilt cancels in either direction
	if((((left_down || left_stick_down || down_down) && spr_dir == 1) || ((down_down || right_down || right_stick_down) && spr_dir == -1))  && (special_pressed || attack_pressed || down_stick_down || up_stick_down || right_stick_down || left_stick_down) && ((window == 3 && window_timer >= 5) || (window == 6 && window_timer >= 4)))
	{
		// if(!special_pressed)
		// {
		// 	spr_dir *= -1;
		// }
		clear_button_buffer(PC_LEFT_HARD_PRESSED);
		clear_button_buffer(PC_RIGHT_HARD_PRESSED);
		set_state(PS_IDLE);
	}
	
	// Little backwards hsp
	if(window == 9 && window_timer == 7) hsp -= 2*spr_dir;
	
	// // Stop on jab2 connect
	// if(window == 5 && has_hit_player)
	// {
	// 	hsp *=.7;
	// }
}
#endregion


#region Dattack
//Dattack code
if(attack == AT_DATTACK){
	if((right_strong_pressed || left_strong_pressed) && (window == 1 && window_timer <= 3))
	{
		set_attack(AT_FSTRONG);
		hsp *=1.05;
	}
	can_wall_jump = window == 9;
	

}
#endregion

#region Dtilt
if(attack == AT_DTILT)
{
	if(down_down) {
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_crouch"));
		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_crouch_hurt"));
	}
	else{
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"))
	}
}

#endregion

#define IncreaseCharge(firecracker)
{
	var fcnum = 0;
	
	with(firecracker)
	{
		num_fc = min(3,num_fc+1);
		if(sprite_index == sprite_get("firecracker_double_spin")) sprite_index = sprite_get("firecracker_triple_spin"); 
		if(sprite_index == sprite_get("firecracker_double_bunt")) sprite_index = sprite_get("firecracker_triple_bunt");
		if(sprite_index == sprite_get("firecracker_double")) sprite_index = sprite_get("firecracker_triple"); 
		if(sprite_index == sprite_get("firecracker_single_bunt")) sprite_index = sprite_get("firecracker_double_bunt");
		if(sprite_index == sprite_get("firecracker_single_spin")) sprite_index = sprite_get("firecracker_double_spin");
		if(sprite_index == sprite_get("firecracker_single")) sprite_index = sprite_get("firecracker_double");
		
		fcnum = num_fc-1;
		
		//hitbox_timer -= 10;
	}
	
	//sound_play( sound_get( "tenru_fc" + string(fcnum) ) );
}

#define SetTempFirecrackerVariables(firecracker, doReset)
{
	// Reset temp properties
	with(firecracker)
	{
		transcendent = doReset ? false : true;
		priority = doReset ? 0 : 3;
		proj_break = doReset ? 0 : 1;
	}
}

// NO-INJECT
// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion

