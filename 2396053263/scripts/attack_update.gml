// attack_update

//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_NSPECIAL){
    trigger_b_reverse();
}

//V-Braking

if (attack == AT_TAUNT){
	if (state_timer >= 3){
		if (window < 4 && ((left_down && spr_dir == -1) || (right_down && spr_dir == 1))){ //forwards input
			has_brake = 0;
			spawn_hit_fx(x, y, hit_gbrake);
			y -= 20;
			free = true;
			vsp -= 2;
			set_attack(AT_EXTRA_1);
			window = 4;
			window_timer = 0;
		} else if (window < 4 && ((left_down && spr_dir == 1) || (right_down && spr_dir == -1))){ //backwards input
			has_brake = 0;
			spawn_hit_fx(x, y, hit_gbrake);
			y -= 20;
			free = true;
			vsp -= 2;
			set_attack(AT_EXTRA_1);
			window = 5;
			window_timer = 0;
		} else if (window_timer >= 26 && taunt_down){
			window_timer = 25;
		}
		
		if (!free && (attack_pressed || down_strong_pressed || up_strong_pressed || left_strong_pressed || right_strong_pressed)){
			spawn_hit_fx(x, y, hit_gbrake);
			y -= 20;
			free = true;
			vsp = -2;
			sound_play(sound_get("vbrake"));
		}
	}
}

if (attack == AT_EXTRA_1){
	can_attack = true;
	can_special = true;
	can_shield = true;
	can_jump = true;
	
	if (state_timer mod 8 == 1 && window < 4){
		spawn_hit_fx(x, y, hit_vbraking);
	}
	
	if (window < 3){
		vsp = 0;
	}
	
	if (window < 4 && ((left_down && spr_dir == -1) || (right_down && spr_dir == 1))){ //forwards input
		window = 4;
		window_timer = 0;
	} else if (window < 4 && ((left_down && spr_dir == 1) || (right_down && spr_dir == -1))){ //backwards input
		window = 5;
		window_timer = 0;
	}
	
	if (down_hard_pressed){
		set_state(PS_IDLE_AIR);
	}
	
	if (window == 4){
		if (window_timer == 1){
			vsp = -1.5;
			hsp = 6*spr_dir;
			spawn_hit_fx(x, y+4, hit_vbrake);
			sound_play(sound_get("vbrake"));
		}
	}
	
	if (window == 5){
		if (window_timer == 1){
			vsp = -1.5;
			hsp = -6*spr_dir;
			spawn_hit_fx(x, y+4, hit_vbrake);
			sound_play(sound_get("vbrake"));
		}
	}
}

//Specials

if (attack == AT_USPECIAL){
	if (window == 1 && window_timer < get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)){
		vsp = 0;
		hsp *= 0.9;
		
		uspecial_loops = 0;
	} else if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)){
		free = true;
		vsp = -12;
		hsp = 2.5*spr_dir;
	}
	
	if (window == 2 && window_timer == 1){
		if (!hitpause && uspecial_loops == 0){
			free = true;
			vsp = -12;
			hsp = 2.5*spr_dir;
		}
		
		uspecial_loops += 1;
		
		if (uspecial_loops >= uspecial_max_loops - 1){
			window = 3;
			window_timer = 0;
		}
	}
	
	if (window >= 3){
		can_wall_jump = true;
	}
	
	if (window == 4 && window_timer == 1 && !hitpause && vsp < 0){
		vsp = -6;
	}
	
	if (((window == 2 && window_timer > 1) || window >= 3) && !free){
		if (was_parried){
			set_state(PS_PRATLAND);
			landing_lag = 60;
		} else {
			set_state(PS_LANDING_LAG);
			landing_lag = 4;
		}
	}
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = fspecial_cooldown;
	if (window == 1 && vsp > 3){
		//vsp = 3;
	}
	
	if (window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)){
		for (var i = 0; i < 3; i++) {
			if (!free){
				hbox = create_hitbox(AT_FSPECIAL, 1, x+8*spr_dir, y-26);
				var movement_angle = ((i * 4) - 4)*spr_dir;
				hbox.proj_angle = movement_angle;
				hbox.y = hbox.y - i*4;
				hbox.vsp = lengthdir_y(18*spr_dir, movement_angle);
				hbox.hsp = lengthdir_x(18*spr_dir, movement_angle);
			} else {
				hbox = create_hitbox(AT_FSPECIAL, 1, x+8*spr_dir, y-8);
				var movement_angle = (((i * 9) - 9)*spr_dir) + -45*spr_dir;
				hbox.proj_angle = movement_angle;
				hbox.y = hbox.y - i*4;
				hbox.x = hbox.x + i*4*spr_dir;
				hbox.vsp = lengthdir_y(18*spr_dir, movement_angle);
				hbox.hsp = lengthdir_x(18*spr_dir, movement_angle);
			}
			fspecial_needles[i] = hbox;
		}
	}
	
	if (window == 3 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) || window == 4){
		iasa_script();
	}
}

//NSPECIAL GRAB FUNCTIONALITY (ATTACK_UPDATE)
//Edited by: Delta Parallax

//Goes through all windows and performs grab functionality accordingly.

if (attack == AT_NSPECIAL)
{
	if (window > 4 and instance_exists(nspecial_target)) nspecial_target.y = y-4;
	
	//can_fast_fall = false;
	// Stop yourself at the beginning, reset variables.
	if (window <= 2)
	{
		hsp = lerp(hsp, 0, 0.1);
		vsp = lerp(vsp, 0, 0.1);
		
		nspecial_timer = 0;
		nspecial_slide_timer = 0;
		nspecial_bslide_timer = 0;
		nspecial_ease_timer[0] = 0;
		
		//Window stuff
		if (has_hit_player && !hitpause)
		{
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
			window = 4;
			window_timer = 0;
		}
		else
		{
			reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
		}
	}
	else if (window == 4)
	{
		//if you're actually holding the opponent, stop yourself.
		vsp = 0;
		hsp = 0;
		
		//Make sure you're holding a player, then ease the opponent into the grab
		if (nspecial_target != noone)
		{
			var next_x, next_y;
			next_x = ease_cubeOut( nspecial_pos[0], x  + (53*spr_dir), clamp(nspecial_ease_timer[0],0,10), nspecial_ease_timer[1] );
			next_y = ease_cubeOut( nspecial_pos[1], y-4, nspecial_ease_timer[0], nspecial_ease_timer[1] );
			
			with (nspecial_target)
			{
			    if !place_meeting(next_x,next_y, asset_get("par_block"))
			    {
			        x = next_x;
			        y = next_y;
			    }
			}
        	
        	nspecial_ease_timer[0] = min(nspecial_ease_timer[0]+1,nspecial_ease_timer[1]);
		}
		
		//Throw stuff
		if (nspecial_timer >= 5)
		{
			if ((((left_down || left_pressed) && spr_dir == -1) || ((right_down || right_pressed) && spr_dir == 1)) || nspecial_timer > 30)
			{
				set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
				nspecial_timer = 0;
				window = 5;
				window_timer = 0;
			}
			else if ((((left_down || left_pressed) && spr_dir == 1) || ((right_down || right_pressed) && spr_dir == -1)))
			{
				set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 10);
				nspecial_timer = 0;
				window = 8;
				window_timer = 0;
			}
			
			//If a throw has been executed, save the original position in a variable.
			nspecial_pos = [floor(nspecial_target.x), floor(nspecial_target.y)]
		}
		
		//Increase the timer
		nspecial_timer += 1;
		
	}
	else if (clamp(window, 6, 8) == window) //If you are in a throw
	{
		//Check to see if you're holding anyone (just to be sure)
		if nspecial_target != noone
		{
			//Stop yourself.
			vsp = 0;
			hsp = 0;
			
			//Calculate the slide distance and ease the opponent into it
			var throw_type, next_x;
			throw_type = get_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS) == 7 ? 2 : 0;
			next_x = ease_cubeOut( nspecial_pos[0], nspecial_pos[0]  + (nspecial_hdisp[throw_type] * spr_dir), nspecial_slide_timer, nspecial_max_slide[1] );
			//next_y = ease_cubeOut( nspecial_pos[1], nspecial_pos[1] - nspecial_vdisp[throw_type], nspecial_slide_timer, nspecial_max_slide[1] );
			
			//Apply calculated distances to grabbed opponent's position
			with (nspecial_target)
			{
				if !place_meeting(next_x,y, asset_get("par_block")) 
				{
					x = next_x;
				}
				else
				{
					other.nspecial_slide_timer--;
				}
			}
			//Increase the slide timer until you get to nspecial_max_slide[1]
			nspecial_slide_timer = min(nspecial_slide_timer+1,nspecial_max_slide[1])
		}
		
		if (window == 7 and window_timer == nspecial_max_slide[1]-3) //End of a forward throw 
		{
			//Dereference the object in nspecial_target.
			nspecial_target = noone;
		}
		else if (window == 8 and nspecial_slide_timer >= nspecial_max_slide[1]-5) //Beginning of a backward throw
		{
			//Save the grabbed opponent's position in a variable to ease over.
			nspecial_pos = [floor(nspecial_target.x), floor(nspecial_target.y)]
		}
	} 
	else if (window >= 9) //If you are in the second part of the backwards throw
	{
		//Stop yourself.
		vsp = 0;
		hsp = 0;
		
		//Calculate the slide distance and ease the opponent into it
		var throw_type, next_x;
		throw_type = 1
		next_x = ease_cubeOut( nspecial_pos[0], nspecial_pos[0]  + (nspecial_hdisp[throw_type] * spr_dir), nspecial_bslide_timer, nspecial_max_slide[0] );
		//next_y = ease_cubeOut( nspecial_pos[1], nspecial_pos[1], nspecial_bslide_timer, nspecial_max_slide[0] );
		
		//Apply calculated distances to grabbed opponent's position
		with (nspecial_target)
		{
			if !place_meeting(next_x,y, asset_get("par_block")) x = next_x;
		}
		//nspecial_target.y = y;	
		
		//Increase the slide timer until you get to nspecial_max_slide[0]
		nspecial_bslide_timer = min(nspecial_bslide_timer+1,nspecial_max_slide[0])
		
		//If you just finished a back throw, turn around / dereference the object in nspecial_target.
		if (window == 10 and window_timer == get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH))
		{
			spr_dir *= -1;
			nspecial_target = noone;
		}
	}

	//Check to see if there is a target
	if ( nspecial_target != noone )
	{
		//Keeps the opponent in hitstop
		nspecial_target.can_fast_fall = false;
		nspecial_target.hitpause = true;
		nspecial_target.hitstop = 5;
		nspecial_target.hitstop_full = 5;
		
		//Is it time to create a particle?
		if (get_gameplay_time() mod nspecial_pfrequency == 0)
		{
			//Calculate the next available position by looping through the particle array
			var position, len;
			len = array_length_1d(nspecial_particles);
			position = len;
			
			if (len != 0)
			{
				for (var i = 0; i < len; i++)
				{
					if nspecial_particles[i] == -1
					{
						position = i;
						break;
					}
				}
			}
			
			//Update the particles that already exist
			updateParticles()
			
			//Create the particle!
			nspecial_particles[@ position] = {
				sprite: nspecial_target.sprite_index,
				frame: nspecial_target.image_index,
				position: [nspecial_target.x + nspecial_poffset[@ 0],nspecial_target.y + nspecial_poffset[@ 1]],
				position_c: nspecial_poffset_change,
				scale: [nspecial_target.image_xscale,nspecial_target.image_yscale],
				alpha: nspecial_palpha,
				alpha_decay: nspecial_palpha_change,
				color: [nspecial_pcol[0], nspecial_pcol[1], nspecial_pcol[2]],
				color_c: nspecial_pcol_change
			}
		}
		
	}
	
}



if (attack == AT_DSPECIAL){
	vsp = 0;
	hsp = 0;
	move_cooldown[AT_DSPECIAL] = 60;
	if (window == 3 && window_timer >= get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH) && !was_parried){
		iasa_script();
	}
}

//Normals

if (attack == AT_FSTRONG){
	if (window == 5){
		if (has_hit){
			hsp = -3*spr_dir;
		} else {
			hsp = -2*spr_dir;
		}
	}
}

if (attack == AT_USTRONG){
	if (window == 2){
		//hud_offset_dest = ease_linear(54, 106, window_timer, 3);
	}
	
	if (window == 5 && window_timer >= 6){
		//hud_offset_dest = lerp(hud_offset_dest, 54, 0.3);
	}
}

if (attack == AT_DSTRONG){
	if (window == 1 && window_timer == 1){
		hsp -= 2.5*spr_dir;
	}
	
	if (window == 3){
		vsp = 0;
		if (window_timer == 1 && !hitpause){
			hsp += 2.5*spr_dir;
		}
	}
}

if (attack == AT_DAIR){
	switch (window)
	{
		case 1:
			var len;
			len = get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH);
			if (window_timer == clamp(window_timer, len-3 , len-1))
			{
				//print_debug("slowdown startup")
				vsp *= dairMultiplier[0] + ((1-dairMultiplier[0])*dairFastFall);
			}
			else if (window_timer >= len)
			{
				vsp = 13;
			}
		case 2:
			if (fast_falling) dairFastFall = true;
		break;
		case 3:
		case 4:
			vsp *= dairMultiplier[1] + ((1-dairMultiplier[1])*dairFastFall);
			//print_debug("slowdown endlag, window "+string(window))
		break;
		case 5:
			iasa_script();
			dairFastFall = false;
		break;
	}
}

#define updateParticles

//Make sure there are particles to loop over, otherwise don't do anything.
var len;
len = array_length_1d(nspecial_particles);

if (len != 0)
{
	//Loop over all the particles.
	for (var i = 0; i < len; i++)
	{
		var n;
		n = nspecial_particles[@ i]
		
		//-1 indicates that a particle was created but has since been destroyed, skip it if encountered 
		if n != -1
		{
			//Update particle properties.
			n.position[@ 0] += n.position_c[0];
			n.position[@ 1] += n.position_c[1];
			
			n.color[@ 0] += n.color_c[0];
			n.color[@ 1] += n.color_c[1];
			n.color[@ 2] += n.color_c[2];
			
			n.alpha -= n.alpha_decay;
			//Destroy the particle if it has fully faded out.
			if n.alpha <= 0
			{
				nspecial_particles[@ i] = -1;
			}
		}
	}
}