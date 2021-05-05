//B - Reversals
if (attack == AT_DSPECIAL){
    trigger_b_reverse();
}



//#region NSpecial
if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	var _speed = 20;
	
	// Set beam sprite
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, blue ? sprite_get("beam") : sprite_get("beamr"));
	
	// Pick direction
	if(window == 1)
	{
		if(!is_spin)
		{
			if(joy_pad_idle && (!down_stick_down && !right_stick_down && !left_stick_down && !up_stick_down))
			{
				// Default
				throw_dir = "front";
				set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, _speed);
				set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
				
				set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_front"));
				set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_front_air"));
				set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt_front"));
				
				with(pHurtBox) 
					if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_hurt_front");
					else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_hurt_front_air");
				
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, free ? -30 : -34);
				
				// Windbox
				set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
				set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -20);
				set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
				set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 50);
				set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 0);
			}
			else
			{
				// Down
				if(down_down || down_stick_down)
				   {
				   	throw_dir = "down";
				   	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
				   	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, _speed);
				   	
				   	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_down"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_down_air"));
					set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt_down"));
					set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt_down_air"));
					
					with(pHurtBox) 
						if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_hurt_down");
						else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_hurt_down_air");
					
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, spr_dir == 1 ? 10 : 5);
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 60);
					
					// Windbox
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 5);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 30);
					set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 50);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
					set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 270);
				   }
				   
				//Up
				if(up_down || up_stick_down)
				   {
				   	throw_dir = "up";
				    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
				   	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -_speed);
				   	
				   	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_up"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_up_air"));
					set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt_up"));
					
					with(pHurtBox) 
						if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_hurt_up");
						else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_hurt_up_air");
					
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 14);
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -90);
					
									
					// Windbox
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 10);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -90);
					set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 50);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
					set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
				   }
				// Front
				else if (spr_dir == 1 && (right_down || right_stick_down) || spr_dir == -1 && (left_down || left_stick_down))
				   {
				   	throw_dir = "front";
				    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, _speed);
				   	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
				   	
				   	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_front"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_front_air"));
					set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt_front"));
					
					with(pHurtBox) 
						if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_hurt_front");
						else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_hurt_front_air");
						
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, free ? -30 : -34);
					
					// Windbox
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -20);
					set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 50);
					set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 0);
				   }
			
				// Back
				else if (spr_dir == 1 && (left_down || left_stick_down) || spr_dir == -1 && (right_down || right_stick_down))
				   {
				   	throw_dir = "back";
				    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, -_speed);
				   	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
				   	
				   	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_back"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_back_air"));
					set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt_back"));
	
					with(pHurtBox) 
						if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_hurt_back");
						else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_hurt_back_air");
					
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -50);
					set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, (free ? -46 : -42));
					
					// Windbox
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -62);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -25);
					set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
					set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 50);
					set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 180);
				   }
			}
		}
		
		// Portal clear
		if(shield_down)
		{
			
			is_spin = true;
			

		}
	}
	

	// Down shot jump
	if(window == 2 && throw_dir == "down" && window_timer == 1 && !free)
	{
		vsp -= 6;
	}
	
	// Spin sprite
	if(window <= 2 && is_spin)
	{
		throw_dir = "spin"
		
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
			
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_spin"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_spin_air"));
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt_spin"));
			
		with(pHurtBox) 
			if(other.player == player && !other.free) sprite_index = sprite_get("nspecial_hurt_spin");
			else if(other.player == player && other.free) sprite_index = sprite_get("nspecial_hurt_spin_air");
	}
	
	// Red gun toggling
	if(window < 2 && window_timer < get_window_value(AT_NSPECIAL,1,AG_WINDOW_LENGTH)-2 && special_down && !is_spin)
	{
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_red_ground"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_red_air"));
		
		blue = false;
	} else if(window < 2 && window_timer < get_window_value(AT_NSPECIAL,1,AG_WINDOW_LENGTH)-2) blue = true;
	
	// Beam drawing
	
	// Counter
	var i = 0;
	
	// Shot window
	if(window == 2 && window_timer == get_window_value(AT_NSPECIAL,2,AG_WINDOW_LENGTH) && !is_spin)
	{
		// Portal shot fx
		var pshot = noone;
		
		switch(throw_dir) {
			case "front": pshot = spawn_hit_fx(x-dir(24),y-(free ? 74 : 76),	blue ? pshot_front : pshotr_front); if(blue) butterflyFX(100,40,6,dir(50),-30) else butterflyFXr(100,40,6,dir(50),-30,false); break;
			case "back": pshot = spawn_hit_fx(x-dir(130),y-(free ? 90 : 84),	blue ? pshot_back : pshotr_back); if(blue) butterflyFX(100,40,6,dir(-80),-40) else butterflyFXr(100,40,6,dir(-80),-40,false); break;
			case "up": pshot = spawn_hit_fx(x-dir(70),y-178,					blue ? pshot_up : pshotr_up); if(blue) butterflyFX(40,100,6,dir(5),-120) else butterflyFXr(40,100,6,dir(5),-120,false); break;
			case "down": pshot = spawn_hit_fx(x-dir(74),y-(free ? 44 : 56), 	blue ? pshot_down : pshotr_down); if(blue) butterflyFX(40,100,6,dir(5),60) else butterflyFXr(40,100,6,dir(5),60,false); break;
		}
		pshot.depth	= depth - 100;
		
		// Draw beam horizontal
		if(throw_dir == "front" || throw_dir == "back")
		{
			
			
			// Offsets
			var yoff = throw_dir == "front" ? 24 : (free ? 40 : 32);
			if(free) yoff -= 2;
			var xoff = throw_dir == "front" ? dir(60) : dir(-80);
			var tempSolid = noone;
			
			// Loop
			do
			{
				// Check for solid wall
				tempSolid = collision_ellipse(
				x+dir(i)-35 + xoff + 15,y-5-yoff,x+dir(i)+5 + xoff + 15,y+5-yoff,
				asset_get("solid_32_obj"), 
				true,
				true );
				
	
				
				// // If nothing, check for platform
				// if(tempSolid == noone )
				// {
				// 	tempSolid = collision_ellipse(
				// 	x+dir(i)-5 + xoff + 15,y-5-yoff,x+dir(i)+5 + xoff + 15,y+5-yoff,
				// 	asset_get("par_jumpthrough"), 
				// 	true,
				// 	true );
				
				// }
				
				// If still nothing, draw a beam segment
				if (tempSolid == noone)
				{
					spawn_hit_fx(x+ dir(i) + xoff,y - yoff, blue ? beamfx : beamfxr);
				}
				
				i+= throw_dir == "front" ? 5 : -5;
				
				// Loop until hit something or reached a cap
			} 
			until(tempSolid != noone || i > 1000 || i < -1000)
			
			// Create projectile
  
			create_hitbox(AT_NSPECIAL,1,x+dir(i)+xoff-dir((throw_dir == "back") ? -44 : 44),y-yoff);
			special_held = special_down;
		}
		else // Draw beam vertical
		{
			// Offsets
			var yoff = throw_dir == "up" ? 104 : 40;
			var xoff = throw_dir == "up" ? dir(6) : dir(4);
			var tempSolid = noone;
			var up = throw_dir == "up" ? -1 : 1;
			var uoff = throw_dir == "up" ? 22 : 18;
			
			// Loop
			do
			{
				// Check for solid wall
				tempSolid = collision_ellipse(
				x-5 + xoff,y-5-yoff+(i*up)+uoff,x+5 + xoff,y+5-yoff+(i*up)+uoff,
				asset_get("solid_32_obj"), 
				true,
				true );
				
				// If nothing, check for platform
				if(tempSolid == noone )
				{
					tempSolid = collision_ellipse(
					x-5 + xoff,y-5-yoff+(i*up)+uoff,x+5 + xoff,y+5-yoff+(i*up)+uoff,
					asset_get("jumpthrough_32_obj"), 
					true,
					true );
				
				}
				

				
				// If still nothing, draw a beam segment
				if (tempSolid == noone)
				{
					spawn_hit_fx(x + xoff,y - yoff+(i*up),blue ? beamfx_rot : beamfxr_rot);
				}
				
				i+=5;
				
				// Loop until hit something or reached a cap
			} 
			until(tempSolid != noone || i > 1000 || i < -1000)
			
			// Create projectile
			create_hitbox(AT_NSPECIAL,1,x+xoff + dir(8) + (throw_dir == "up" ? 0 : 0),y+(i*up) - 34);
			special_held = special_down;
		}
	}
	else if(window == 2 && window_timer == get_window_value(AT_NSPECIAL,2,AG_WINDOW_LENGTH) && is_spin) // clear portals
	{
		charges = 0;
		sound_play(sound_get("monarch_gunspin"));
		sound_stop(sound_get("monarch_shootportal"));
	}
	

}
//#endregion

//#region FSpecial
if (attack == AT_FSPECIAL){
	can_move = false;
	
	// Spawn thingy
	if(window == 1)
	{
		if(window_timer == get_window_value(AT_FSPECIAL,1,AG_WINDOW_LENGTH)) swap = instance_create(x + dir(35), y-45, "obj_article2")
	}
}
//#endregion

//#region USpecial
if (attack == AT_USPECIAL){
	if(window < 3) portal_white+=2;
	if(window == 3 && window_timer == 1) portal_white = 10;
	
	can_move = true;
	
	// Spawn fx
	// if(window == 1 && window_timer == 1)
	// {
	// 	var tstart = spawn_hit_fx( x + (20 * spr_dir), y - 20, teleport_start );
	// 	tstart.depth = -100;
	// }

	// Charged
	if(teleported) {
		if(!uspec_charged)  sound_play(sound_get("monarch_zap"),false,0,0.5);
		uspec_charged = true;
	}
	
	// Track hitfx on you
	if("treturn" in self) {
	with(treturn){ x = other.x; y = other.y;}
	with(treturn2){ x = other.x; y = other.y;}
	with(treturn3){ x = other.x; y = other.y-30;}
	}

	// Pratfall buffer
	if(window == 1 && window_timer == 1) {
		if(free){
			uspecial_buffer = true;
		}
		
		uspec_charged = false;
	}
	
	if(window == 1 && window_timer == get_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH))
	{
		tmid = spawn_hit_fx( x, y, newtpstart );
		tmid.depth = depth-1;
		

	}
	
	// End of blink
	if(window == 3 && window_timer == 1)
	{

		treturn2 = spawn_hit_fx( x+hsp, y+vsp, newtpreturn2 );
		treturn2.depth = depth+2;
		
		treturn = spawn_hit_fx( x+hsp, y+vsp, newtpreturn );
		treturn.depth = depth-1;
		
		treturn3 = spawn_hit_fx(x,y-(char_height/1.5),newtprings);

		
		// gravity
		if(vsp > 0) set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY,0); else set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY,abs(vsp/8));
		
		// Blink flag
		if(state == PS_ATTACK_AIR) can_blink = false;
		
		hsp*=.5;
		vsp*=.5;
		
		// Charged box
		if(uspec_charged){
			set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
			set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 8);
			
			create_hitbox(AT_DSPECIAL,2,ceil(x),ceil(y)-15);
			
			reset_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE);
			reset_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE);
			
			
			sound_play(sound_get("monarch_gunhit2"),false,0,0.8,1.1);
			
			spawn_hit_fx(x,y,hitfx12);
		}
	}

	if(window == 3){
		if(attack_down) attack_pressed = true;
		jump_pressed = false;
		shield_pressed = false;
		
		if(attack_pressed && window_timer > 2) window_timer = windowend(3);
	}
	

	if(window > 1 && get_gameplay_time()%2 ==0 ) butterflyFX(50,50,1,0,-40);
	
	if(window == 2)
	{
		draw_indicator = false;
		//visible = false;
		//invincible = true;
		
		// Convert joy dir to radians
		var rad_joy_dir = degtorad(joy_dir);
		var teleport_distance = 12;
		var turning_speed = 2;
		
		if(!joy_pad_idle)
		{
			// Teleport in direction of stick
			var targethsp = cos(rad_joy_dir) * teleport_distance;
			var targetvsp = sin(rad_joy_dir) * -teleport_distance;
			
			if(window_timer == 1) {
				hsp = targethsp;
				vsp = targetvsp;
			}
			else {
				if(hsp > targethsp) hsp -= turning_speed else hsp += turning_speed;
				if(vsp > targetvsp) vsp -= turning_speed else vsp += turning_speed;
			}
		}
		

		
		//if(window_timer % 3 == 0) spawn_hit_fx( x, y, teleport_lite_butterflies );
	}
	else
	{
		draw_indicator = true;
		invincible = false;
	}
	
	can_fast_fall = false;
	

}
//#endregion

//#region DSpecial

// Blink
if (attack == AT_DSPECIAL){
	// Raise height a bit
	if(window < 3) hud_offset = lerp(hud_offset, original_char_height*1.05, 0.5);
	
	// Spawn knife
	if(window == 4 && window_timer == 1){
		time_knife = instance_create(x+dir(30), y-25, "obj_article3");
		

		// Set angle to joystick
		knife_angle = joy_dir;
		if(joy_pad_idle) knife_angle = spr_dir == 1 ? default_knife_angle : 180 - default_knife_angle;
		  
		if(spr_dir == 1)
		{
			if(knife_angle >=80 && knife_angle < 270) knife_angle = 80
			if(knife_angle > 90 && knife_angle < 290) knife_angle = 290
		}
		
		if(spr_dir == -1)
		{
			if(knife_angle < 100 && knife_angle < 270) knife_angle = 100
			if(knife_angle >=270) knife_angle = 270
		}

		
		// Set knife speed
		time_knife.vsp = (knife_speed * (-dsin(knife_angle)*1.3));
		time_knife.hsp = (knife_speed * dcos(knife_angle));
		
		time_knife.y -= time_knife.vsp;
		
		time_knife.image_index = (360-knife_angle-45) * 32 / 360 
		
	}
}
//#endregion

//#region DSpecial_2

// Blink
if (attack == AT_DSPECIAL_2){
	// Raise height a bit
	if(window < 4) hud_offset = lerp(hud_offset, original_char_height*1.5, 0.5);
	
	// Movement
	if(window > 2) can_move = false;
	if(window == 5) can_move = true;
	
	// Spawn fx
	if(window == 2 && window_timer == get_window_value(AT_DSPECIAL_2,2,AG_WINDOW_LENGTH)){ circ = spawn_hit_fx(x,y,dspec_circle); circ.depth = depth-1; }
	
	// Trigger teleport
	if(window == 4 && window_timer == 1 && time_knife != noone){time_knife.early_trigger = true; sound_stop(sound_get("monarch_countdown"))}
}
//#endregion


//#region Ftilt
if(attack == AT_FTILT)
{
	var ttime = 1;
	
	// FX
	
	if(window == 1 && window_timer == get_window_value(AT_FTILT,1,AG_WINDOW_LENGTH)-1) sound_play(sound_get("monarch_smallblink2"),false,0,.7,1)
	
	// Start teleport
	if(window == 2 && window_timer == ttime){
		
		tmid = spawn_hit_fx( x, y, teleport_lite_start );
		tmid.depth = -100;	
		
		// Move forward
		teleport(100 * spr_dir);
		
		// Spawn effect
		treturn = spawn_hit_fx( x, y, teleport_lite_return );
		treturn.depth = -100;
		

		
		// Flip direction
		spr_dir *= -1;
	}
	
	// Butterfly FX
	if(window == 2 && window_timer == ttime + 2)
	{
		var tbutterflies1 = spawn_hit_fx( x + (spr_dir*100), y, teleport_lite_butterflies );
	}
	
	if(window == 3 && window_timer ==3) butterflyFX(40,80,5,dir(30),-40)
	
	if(window == 2 && window_timer == ttime + 3)
	{
		var tbutterflies2 = spawn_hit_fx( x, y, teleport_lite_butterflies2 );
		tbutterflies2.image_xscale *= -1;
	}
}


//#endregion

//#region Fstrong
if(attack == AT_FSTRONG)
{
	
	var tdistance = 145;
	
	// Make % thing dissapear
	if(window == 6) draw_indicator = false;
	else draw_indicator = true;

	// Shift position on return
	if(window == 6 && window_timer == get_window_value(AT_FSTRONG,6,AG_WINDOW_LENGTH)) x+= 60*spr_dir;
	
	// Teleport
	if(window == 2 && window_timer == get_window_value(AT_FSTRONG,2,AG_WINDOW_LENGTH)){
		tmid = spawn_hit_fx( x, y, teleport_lite_start );
		tmid.depth = -100;	
		
		portal_afterimage.timer = 15;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index;
	    portal_afterimage.x = x;
	    portal_afterimage.y = y;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 1;
		
		// Move Backward
		teleport(-(tdistance * spr_dir));
		
		// Spawn effect
		spr_dir *= -1;
		treturn = spawn_hit_fx( x - (5*spr_dir), y, teleport_lite_return );
		spr_dir *= -1;
		treturn.depth = -100;
	}
	
	// Butterfly FX
	
	// tp1
	if(window == 3 && window_timer == 1)
	{
		var tbutterflies1 = spawn_hit_fx( x + (spr_dir*tdistance), y, teleport_lite_butterflies );
	}
	
	// tp2
	if(window == 3 && window_timer == 2)
	{
		var tbutterflies2 = spawn_hit_fx( x, y, teleport_lite_butterflies2 );
		tbutterflies2.image_xscale *= -1;
	}
	
	if(window == 6 && window_timer == 8){
		in_portal = false;
		portal_timer = max(portal_timer,20);
	}
	
	// Return
	if(window == 7 && window_timer == 2)
	{
		var tbutterflies3 = spawn_hit_fx( x-(10*spr_dir), y, teleport_lite_butterflies_right );
		black_screen = false;
	}
}
//#endregion

//#region Ustrong

if(attack == AT_USTRONG)
{
	// Raise height a bit
	if(window < 6) hud_offset = lerp(hud_offset, original_char_height*2, 0.5);
	
	//SFX
	if(window == 4 && has_hit_player && hitpause && hitstop == hitstop_full-1){
		var strike = "monarch_smallhit" + string(1+window_timer*4/12);
		sound_play(sound_get(strike),false,(1+window_timer*4/12) % 2 == 1 ? 1 : -1);
	}
	
	//FX
	if(has_hit_player && hitpause && hitstop == hitstop_full-1){
		if(window == 4)
		{
			var h1 = spawn_hit_fx(hit_player_obj.x-dir(80),hit_player_obj.y-80,hitfx9short);
			h1.depth+=window_timer;
		} else if (window == 5){
			starburst(6,starsmall,hit_player_obj.x-dir(20),hit_player_obj.y-30,80,40,0,false);
			starburst(2,star,hit_player_obj.x-dir(20),hit_player_obj.y-30,80,40,0,false);
		}
	}
	// Butterflies
	if(window == 3)
		switch(window_timer){
			case 1: butterflyFX(90,20,5,dir(20),-15); break;
			case 2: butterflyFX(40,90,4,dir(40),-55); break;
		}
	
	if(window == 4 && window_timer % 3 == 0) butterflyFX(40,40,1,dir(-8),-105);
	if(window == 5 && window_timer == 1) {
		butterflyFX(50,70,5,dir(-12),-110);
		gunTrail(x - dir(10),y-90,-20,dir(2),15,true) // trail fx
	}
	
	// Spark
	if(has_hit_player && window == 4 && spark == noone){
		spark = spawn_hit_fx(hit_player_obj.x-dir(5),hit_player_obj.y-55,sparkinstant);
		sound_play(sound_get("monarch_zap"))
	}
	
	if(window == 6) spark = noone;
	
}

//#endregion

//#region Dair
if (attack == AT_DAIR){
	if(has_hit_player && hitpause && hitstop == hitstop_full-1 && window <= 3){
		var h1 = spawn_hit_fx(hit_player_obj.x-dir(80),hit_player_obj.y-80,window == 3 ? hitfx6 : hitfx5);
 	}
 	
 	if(has_hit_player && hitpause && hitstop == hitstop_full-1 && my_hitboxID.hbox_num == 3){
		starburst(4,starsmall,hit_player_obj.x-dir(20),hit_player_obj.y-30,80,40,spr_dir,false);
		starburst(1,star,hit_player_obj.x-dir(20),hit_player_obj.y-30,80,40,spr_dir,false);
	}
	
	if(window == 5 && window_timer == 1) gunTrail(x + dir(20),y+10,-10,dir(5),10,true) // trail fx
	
	// Butterfly FX
	if(window == 2 && window_timer == 1) butterflyFX(20,20,1,dir(0),-65);
	if(window == 2 && window_timer == 2) butterflyFX(40,20,1,dir(15),-5);
	if(window == 2 && window_timer == 3) butterflyFX(20,20,1,dir(-5),-65);
	if(window == 3 && window_timer == 1) butterflyFX(40,20,1,dir(15),-5);
	if(window == 4 && window_timer == 1) butterflyFX(20,20,1,dir(-5),-65);
	if(window == 5 && window_timer == 1) butterflyFX(40,40,3,dir(30),25);
}
//#endregion

//#region Dtilt
if (attack == AT_DTILT){
 	if(has_hit_player && hitpause && hitstop == hitstop_full-1){
		starburst(3,starsmall,hit_player_obj.x-20,hit_player_obj.y-50,80,40,0,false);
	}
	
	if(window == 2 && window_timer == 3)butterflyFX(20,60,4,dir(80),-40);
	if(window == 2 && window_timer == 1) gunTrail(x + dir(76),y-15,-4,0,8,true) // trail fx
	

}


//#endregion

//#region Dattack
if (attack == AT_DATTACK){
	
	if (has_hit_player && (window == 2 && window_timer < 6 ) && phone_cheats[canGatle] == 1)
	{
		can_ustrong = true;
		set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3);
	}
	
 	if(has_hit_player && hitpause && hitstop == hitstop_full-1 && my_hitboxID.hbox_num == 3){
		starburst(4,starsmall,hit_player_obj.x-20,hit_player_obj.y-10,80,40,spr_dir,false);
	}
	
	// if(window == 1 && window_timer < 3 && down_strong_pressed){
	// 	set_state(PS_ATTACK_GROUND);
	// 	attack = AT_DSTRONG;
	// }
	
	if(window == 3 && window_timer == 1) gunTrail(x + dir(60),y-30,dir(2),-10,10,true) // trail fx
	
	// Butterfly FX
	if(window == 2 && window_timer == 3) butterflyFX(80,60,6,dir(40),-50)
	if(window == 3 && window_timer == 1) butterflyFX(50,30,3,dir(90),-30);
}

//#endregion


//#region UTilt
if (attack == AT_UTILT){

	// Spark
	//if(has_hit_player && spark == noone && window > 2 && hitpause) spark = spawn_hit_fx(hit_player_obj.x-dir(5),hit_player_obj.y-55,sparkinstant);
	
	// Move position at end
	if(window == 4 && window_timer == get_window_value(AT_UTILT,4,AG_WINDOW_LENGTH)*(has_hit_player ? 1 : 1.5)) {
		spark = noone;
	}
	
	if(vsp == 0 && !hitpause && window >=2) vsp = vsp_prev;
	
	// Movement
	if(window == 2 && window_timer == get_window_value(AT_UTILT,2,AG_WINDOW_LENGTH) && !hitpause){
		hsp_prev = hsp;
		vsp_prev = vsp;
		
		old_hsp = hsp;
    	old_vsp = vsp;
		
		rift_location.x = x-dir(58);
		rift_location.y = y-97;
		
		x-=dir(10)
		y-=60;
	}
	
	var xoff = rift_location.x + dir(50);
	var yoff = rift_location.y + 90;
	
	var i = 1;
	
	// Hitboxes
	if(!hitpause)
	if(window_timer == 3 || window_timer == 5 || window_timer == 9)
		{
			if(window_timer == 5) i++;
		switch(window)
		{
			case 3:
				repeat(3)
				{
					create_hitbox(AT_UTILT,i+window_timer-3,xoff + dir(get_hitbox_value(AT_UTILT,i+window_timer-3,HG_HITBOX_X)),yoff + get_hitbox_value(AT_UTILT,i+window_timer-3,HG_HITBOX_Y))
					i++;
				}
	
			break;
		}
	}
	
	if(window == 1 && window_timer == 6 && hitpause = false){
		create_hitbox(AT_UTILT,10,x+ get_hitbox_value(AT_UTILT,10,HG_HITBOX_X),y+ get_hitbox_value(AT_UTILT,10,HG_HITBOX_Y));
		butterflyFX(50,50,4, dir(get_hitbox_value(AT_UTILT,10,HG_HITBOX_X)),get_hitbox_value(AT_UTILT,10,HG_HITBOX_Y));
	}
	
	// Prevent falling off ledges
	if(collision_line(x,y,x,y+80,asset_get("par_block"),false,true) == noone && collision_line(x,y,x,y+80,asset_get("par_jumpthrough"),false,true) == noone && teleported = false)
	{
		hsp = 0;
		x = xprevious;
		
	} else if(window == 3 && !hitpause) hsp = dir(-2);
	
	
	//FX
	if(has_hit_player && hitpause && hitstop == hitstop_full-1){
		if(window < 4)
		{
			var h1 = spawn_hit_fx(hit_player_obj.x-dir(80),hit_player_obj.y-80,hitfx9);
			h1.depth+=window_timer;
		} else if (window == 4){
			starburst(4,starsmall,hit_player_obj.x-40,hit_player_obj.y-30,80,40,0,false);
		}
	}
	
	if(window == 4)
	{
		if(window_timer == 1)butterflyFXr(40,40,3,dir(50),-70,false);
		else if(window_timer == 2) butterflyFXr(30,30,2,dir(30),-110,false);
		else if(window_timer == 3) butterflyFXr(30,30,2,dir(80),-20,false);
	}
	
	// Shake a li'l
	if(window == 1 && window_timer == get_window_value(AT_UTILT,1,AG_WINDOW_LENGTH)-4) shake_camera(1,2)
	
	if(window == 4 && window_timer == 1 && !free){
		var s = spawn_hit_fx(x-5,y-20,land_dust);
		s.depth = depth-1;
	}
}


//#endregion

//#region DStrong
if (attack == AT_DSTRONG){
	can_move = true;
	
	// check ground
	if((collision_line( x, y, x, y+95, asset_get("par_block"), false, true ) == noone) && (collision_line( x, y, x, y+95, asset_get("par_jumpthrough"), false, true ) == noone) && teleported = false){
		x = (xprevious-sign(hsp));
		hsp = 0;
		can_move = false;
	}
	
	// Teleport
	if(window == 2){
		tmid = spawn_hit_fx( x+dir(2), y+10, teleport_lite_start_smaller );
		tmid.depth = -100;	
		
		
		sound_play(sound_get("monarch_smallblink1"),false,0,.5,.98)
		
		butterflyFX(80,80,3,0,-20);
		
	    portal_afterimage.timer = 20;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index;
	    portal_afterimage.x = x;
	    portal_afterimage.y = y;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 1;
		
		
		// Teleport
		y-=90;
		
		in_portal = false;
		portal_cooldown = 0;
		
		// Spawn end fx
		treturn = spawn_hit_fx(x, y-10, teleport_lite_return );
		treturn.depth = -100;
		
		butterflyFX(80,80,3,0,-40);
	}
	if(window == 4 && window_timer == get_window_value(AT_DSTRONG,4,AG_WINDOW_LENGTH)) y+=45;
	
	// Butterflies
	if(window_timer % 2 == 0) with(pHitBox) if(orig_player == other.player) with(other) butterflyFX(floor(get_hitbox_value(AT_DSTRONG,other.hbox_num,HG_WIDTH)*1.2),floor(get_hitbox_value(AT_DSTRONG,other.hbox_num,HG_HEIGHT)*1.2),1,other.x-x,other.y-y);
	
	if(window == 5 && window_timer == 4 && !free){
		var s = spawn_hit_fx(x-5,y-20,land_dust);
		s.depth = depth-1;
	}
}


//#endregion

//#region Jab
if (attack == AT_JAB){
	
	if(has_hit_player && hitpause && hitstop == hitstop_full-1 && my_hitboxID.hbox_num == 3){
		starburst(3,starsmall,my_hitboxID.x-dir(10),my_hitboxID.y-30,80,40,spr_dir,false);
		starburst(2,star,my_hitboxID.x-dir(10),my_hitboxID.y-30,80,40,spr_dir,false);
		

	}
	
	// if(has_hit_player && hitpause && hitstop == hitstop_full-1){
	// 	var h1 = spawn_hit_fx(my_hitboxID.x,my_hitboxID.y,hitfx1);
	// 	h1.depth = depth-1;
	// }
	
	// Trail fx
	if(window == 8 && window_timer == 1) gunTrail(x + dir(60),y-40,0,-8,10,true)
	
	//  Butterfly FX
	if(window == 2 && window_timer == 5) butterflyFX(60,20,3,dir(50),-30);
	if(window == 5 && window_timer == 5) {butterflyFX(90,20,3,dir(20),-60); butterflyFX(30,40,2,dir(-20),-40);}
	if(window == 8 && window_timer == 1) butterflyFX(50,30,3,dir(80),-40);
	
	// Tilt cancel
	if((((left_down || left_stick_down)&& spr_dir == 1) || ((right_down || right_stick_down)&& spr_dir == -1))  &&
	(attack_pressed|| down_stick_down || up_stick_down || right_stick_down || left_stick_down)&& 
	((window == 3 && window_timer >= 6) || (window == 6 && window_timer >= 2)))
    {
        spr_dir *= -1;
        clear_button_buffer(PC_LEFT_HARD_PRESSED);
        clear_button_buffer(PC_RIGHT_HARD_PRESSED);
        set_state(PS_IDLE);
    }
}
//#endregion


//#region Fair
if (attack == AT_FAIR){
	// if(window == 7 || window == 4) clear_button_buffer(PC_ATTACK_PRESSED);
	

	// if(window == 6 && window_timer > 1 && attack_pressed)
	// {
	// 	clear_button_buffer(PC_ATTACK_PRESSED);
	// 	window = 10;
	// 	window_timer = 0;
	// }
	
	// Muno stall code
	if(window == 1 && window_timer == 1) fastfall_check = 0;

	// Stall
	if free && hitpause{
	    if !fastfall_check{
	        if old_vsp == fast_fall old_vsp += 0.01;
	        fastfall_check = true;
	    }
	    if old_vsp != fast_fall{
	        old_vsp -= 0.05;
	        if down_pressed{
	            do_a_fast_fall = true;
	            old_vsp = fast_fall;
	        }
	    }
	}

	// Stick inputs
	var stickPressed = spr_dir == 1 ? right_stick_pressed : left_stick_pressed
	var stickDown = spr_dir == 1 ? right_stick_down : left_stick_down

	
	if(window == 1) shot_queued = true;
	if(window >= 4 && window <= 6 && (!attack_down && !stickDown)) shot_queued = false;
	

	
	//Cancels
	
	// First
	if(window == 3 && window_timer >= 4 && (stickPressed || attack_pressed)){
		window = 4;
		window_timer = 0;
	}
	
	
	if(window == 6 && window_timer >= 2 && (attack_pressed || stickPressed))
	{
		clear_button_buffer(PC_ATTACK_PRESSED);
		clear_button_buffer(PC_RIGHT_STICK_PRESSED);
		clear_button_buffer(PC_LEFT_STICK_PRESSED);
		
	 	window = 10;
	 	window_timer = 0;
	}
	
	if((window == 6 || (window == 5 && window_timer >=5)) && shot_queued)
	{
		clear_button_buffer(PC_ATTACK_PRESSED);
		clear_button_buffer(PC_RIGHT_STICK_PRESSED);
		clear_button_buffer(PC_LEFT_STICK_PRESSED);
		
		if(attack_down || stickDown){
			window = 7;
			window_timer = 0;
		}
	}
	
	//landing lag
	if (window > 3) {
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
	}else{
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
	}
	
	// FX
	if(window == 2 && window_timer == 3) butterflyFX(140,40,4,dir(20),-60);
	if(window == 5 && window_timer == 2) butterflyFX(80,40,3,dir(10),-60);
	if(window == 8 && window_timer == 1) butterflyFX(60,30,3,dir(80),-30);
	if(window == 11 && window_timer == 4) butterflyFX(60,100,6,dir(30),-30);
}
//#endregion

//#region Nair
if (attack == AT_NAIR){
	
	// Dissapear fx
	if(window == 1 && window_timer == get_window_value(AT_NAIR,1,AG_WINDOW_LENGTH))
	{
		// FX

		// tmid = spawn_hit_fx( x-dir(2), y-10, teleport_lite_start_smaller );
		// tmid.depth = -100;	
		
		butterflyFX(70,70,6,0,-40);
		
		portal_afterimage.timer = 15;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index;
	    portal_afterimage.x = x;
	    portal_afterimage.y = y;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 1;

	}
	
	// Intangible segment
	if(window == 3){
		
		// Invisible
		draw_indicator = true;
	}
	else draw_indicator = false;
	
	// Reappear fx
	if(window == 2 && window_timer == get_window_value(AT_NAIR,2,AG_WINDOW_LENGTH)-1){
		// Spawn end fx
		portal_afterimage.timer = 8;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index+1;
	    portal_afterimage.x = x+hsp;
	    portal_afterimage.y = y+vsp;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 2;
	}
	
	if(window == 4 && window_timer == 2)
	{
		butterflyFX(100,100,8,hsp,-40+vsp);
	}
}
//#endregion

//#region Bair
if(attack == AT_BAIR)
{
	 if(has_hit_player && hitpause && hitstop == hitstop_full-1){
	 	if(my_hitboxID.hbox_num == 2)
	 	{
			starburst(4,starsmall,hit_player_obj.x-dir(20),hit_player_obj.y-30,80,40,0,false);
			starburst(1,star,hit_player_obj.x-dir(20),hit_player_obj.y-30,80,40,0,false);
	 	}
	 	else
	 	{
	 		var h1 = spawn_hit_fx(hit_player_obj.x-dir(80),hit_player_obj.y-80,hitfx9);
	 	}
	}
	
	if(window == 6) bair_tp_queue = false;
	
	if(window > 3) fall_through = true;
	
	if(window == 3 && window_timer == windowend(3)) set_state(PS_IDLE_AIR);
	
	// FX
	if(window == 2 && window_timer == 2) butterflyFX(50,30,3,dir(-50),-40);
	if(window == 5 && window_timer == 1) butterflyFX(30,50,3,dir(5),20);
}
//#endregion

//#region Uair
if(attack == AT_UAIR)
{
	
	// Raise height a bit
	if(window < 3) hud_offset = lerp(hud_offset, original_char_height*1.2, 0.5);
	
	// Teleport hit
	if(has_hit_player && window < 4 && window > 2){
		portal_afterimage.timer = 15;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index;
	    portal_afterimage.x = x;
	    portal_afterimage.y = y;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 1;
		
		
		window = 4;
		window_timer = 0;
	
		invincible = true;
		
		draw_indicator = false;
		
		// Freeze movement
		hsp = 0;
		vsp = -4;
		
		sound_play(sound_get("monarch_twinkle"));
		sound_play(sound_get("monarch_smallblink1"))
	}
	
	if(window == 4) draw_indicator = false;
	
	if(window == 5 && window_timer <= 1)
	{
		invincible = false;
		draw_indicator = true;
		can_fast_fall = true;
		
		// Teleport to guy
		x = hit_player_obj.x;
		y = hit_player_obj.y + hit_player_obj.char_height*.9;
		
		// Freeze movement
		hsp = 0;
		vsp = -6;
		
		// FX
		treturn = spawn_hit_fx(x,y,teleport_lite_return_smaller);
		treturn.depth = depth-1;
    	butterflyFX(70,70,4,-10*spr_dir,-40);	
    	
    	sound_play(sound_get("monarch_smallblink2"))
	}
	if(window == 3 && window_timer == windowend(3)+10) set_state(PS_IDLE_AIR);
	
	
	// FX
	if(window == 2 && window_timer == 1) butterflyFX(30,50,2,dir(15),-40);
	if(window == 6 && window_timer == 4) butterflyFX(80,30,4,dir(5),-90)
}
//#endregion

//#region Taunt
if(attack == AT_TAUNT)
{
	// Hud offset
	if(window == 2 && window_timer > 12 && window_timer < 25) hud_offset = lerp(hud_offset, original_char_height*1.2, 0.5);
	if(window == 3 || (window == 2 && window_timer > 24)) hud_offset = lerp(hud_offset, original_char_height*1.4, 0.5);
	
	// FX
	if(window == 3 && window_timer == 4){
		starburst(2,starsmall,x-60,y-110,80,100,-1,true);
		starburst(1,star,x-60,y-110,80,100,-1,false);
		
		starburst(2,starsmall,x-20,y-110,80,100,1,true);
		starburst(1,star,x-20,y-110,80,100,1,false);
		
		var s = spawn_hit_fx(x,y-40,newtpreturn);
		spark = spawn_hit_fx(x,y-70,sparkfx)
		s.depth = depth -1;
	}
	
	// Butterflies
	if(window == 3 && window_timer >= 4) butterflyFX(230,150,1,0,-80);
}

//#endregion

//#region Phone
if(attack == AT_PHONE)
{
	array_cleared = false;
}
//#endregion

#define dir(_x)
return(_x*spr_dir);

#define teleport(_dist)
	repeat(abs(_dist))
		if(!place_meeting(x, y, asset_get("par_block")))
		if((place_meeting(x + (sign(_dist) * 25), y+15, asset_get("par_block")) || place_meeting(x + (sign(_dist) * 25), y+15, asset_get("par_jumpthrough")))) {
			
			var collidedport = collision_rectangle(x-5 + (hsp/2), y-65, x+5 + (hsp/2), y-5, asset_get("obj_article1"), false, true);
			if(collidedport != noone) with(collidedport) user_event(0);
			
			x+=sign(_dist);
		}


#define butterflyFX(_xrange,_yrange,_density,_xoff,_yoff)
{
	if(lite) return;
	
	// Save original direction
	var dir_storage = spr_dir;
	var i = 0;
	
	// Define furthest left top point
	_xoff -= _xrange/2;
	_yoff -= _yrange/2;
	
	// Cap density
	_density = min(_density,200);
	
	// Loop for as many bugs need spawning
	repeat(_density)
	{
		// Set spr dir to random direction
		spr_dir = random_func(i % 24,2,true) == 0 ? 1 : -1;
		
		// Funky math
		spawn_hit_fx( x + _xoff + random_func_2(i,_xrange,true), y + _yoff + random_func_2(i+1,_yrange,true), butterflies[random_func_2(i+2,7,true)+1]);
		
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}
#define butterflyFXr(_xrange,_yrange,_density,_xoff,_yoff, _infront)
{
	if(lite) return;
	
	// Save original direction
	var dir_storage = spr_dir;
	var i = 0;
	
	// Define furthest left top point
	_xoff -= _xrange/2;
	_yoff -= _yrange/2;
	
	// Cap density
	_density = min(_density,200);
	
	// Loop for as many bugs need spawning
	repeat(_density)
	{
		// Set spr dir to random direction
		spr_dir = random_func(i % 24,2,true) == 0 ? 1 : -1;
		
		// Funky math
		var part = spawn_hit_fx( x + _xoff + random_func_2(i,_xrange,true), y + _yoff + random_func_2(i+1,_yrange,true), butterfliesr[random_func_2(i+2,7,true)+1]);
		if(_infront) part.depth = -100;
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}

#define starburst(_amount,_fx,_x,_y,_xrange,_yrange,_bias, _infront)
{
	if(lite) return;
	
	var i = staramount;
	starcounter = 20;
	staramount += _amount;
	
	repeat(_amount)
	{
		starArray[i] = spawn_hit_fx(_x + random_func_2(i,_xrange,true),_y + random_func_2(i+1,_yrange,true),_fx);
		starArray[i].vsp = random_func(i,15,true)+5;
		if(_infront) starArray[i].depth = depth-1;
		
		switch(_bias)
		{
			case 0 : starArray[i].hsp = random_func(i,10,true) - 5; break;
			case 1 : starArray[i].hsp = random_func(i,10,true)+5; break;
			case -1 : starArray[i].hsp = random_func(i,5,true) - 10; break;
		}
		
		
		i++;
	}
}
#define gunTrail(_x,_y,_hsp,_vsp,_lifetime,_two)
{
	if(lite) return;
	
	var i = 0;
	
	repeat(_two ? 2 : 1)
	{
		trailfx[i].x = _x + (_hsp * (i == 1 ? -1 : 1));
		trailfx[i].y = _y + (_vsp * (i == 1 ? -1 : 1));
		
		trailfx[i].lifetime = _lifetime;
		trailfx[i].vsp = _vsp * (i == 1 ? -1 : 1);
		trailfx[i].hsp = _hsp * (i == 1 ? -1 : 1);
		
		i++;
	}
	
}

#define windowend(_window)
return(get_window_value(attack,_window,AG_WINDOW_LENGTH))

// Old uspecial storage
/*
	// Reset angle
	if(window == 1 && window_timer == 1)
	{
		throw_angle = default_throw_angle;
	}
	
	// Setting angle
	if(!joy_pad_idle)
	{
		// Set angle to joystick
		throw_angle = joy_dir;
	   
	   // Manage facing left and pulling back
		if(throw_angle > 80 && throw_angle < 270 && spr_dir == -1)
		{
	   		throw_angle = 180 - throw_angle;
		}
		else if(spr_dir == -1)
		{
			throw_angle = 102;
		}
		else if(throw_angle > 90 && throw_angle < 270 && spr_dir == 1)
		{
			throw_angle = 102;
		}
		

		
		if(spr_dir = -1)
		{

			if(throw_angle > 90 && throw_angle < -90)
				throw_angle = 90;
		}
	}
	
	if(window == 1)
	{
		
		// Set throw speed
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, throw_speed * -dsin(throw_angle));
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, throw_speed * dcos(throw_angle));
	}
*/