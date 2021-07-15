//Reached Max Charge
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL 
&& window == 2 && turbine_cont == 69){
	turbine_cont = 70;
	spawn_hit_fx( x, y-20, 196);
    sound_play(asset_get("mfx_player_ready"));	
}

//Changes the Punch hitbox depending on the charge
if (turbine_cont >= 0){
	if (turbine_cont >= 0 && turbine_cont < 10){
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 25);
    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
}

if (turbine_cont >= 10 && turbine_cont < 30){
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 20);
    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
}

if (turbine_cont >= 30 && turbine_cont < 50){
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 15);
    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
}

if (turbine_cont >= 50 && turbine_cont < 70){
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 10);
    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
}

if (turbine_cont >= 70){
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 3);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 10);

}
}

//Stops charging
if (jump_pressed || shield_pressed){
	turbine_counting = false;
}

//If the Whirlwind Effect is active or not
if (whirlwind_punch == true){
	if (hit_player_obj.state == PS_HITSTUN){
		whirlwind_punch_active = true;
		hit_player_obj.whirlwind_effect = true;
	}
	else {
		whirlwind_punch = false;
		whirlwind_punch_active = false;
		hit_player_obj.whirlwind_effect = false;
	}
}

//Resets the DSpecial Cooldown
if (state == PS_WALL_JUMP || state == PS_HITSTUN || !free){
	move_cooldown[AT_DSPECIAL] = 0;
}

//Counts down the Whirlwind Cooldown
if (whirlwind_cooldown > 0){
	whirlwind_hud = 1;
	if (free){
		whirlwind_cooldown -= .5;	
	}
	if (!free){
		whirlwind_cooldown--;	
	}
	if (whirlwind_cooldown < 2){
		whirlwind_cooldown = 0;
		whirlwind_hud = 0;
	}
}

//If there are 2 Whirlwinds active
if (whirlwind_first && whirlwind_second){
	whirlwind_off = true;
}
else {
	whirlwind_off = false;
}

//Pulls the target into the Whirlwind
if (whirlwind_hit == true){
	hit_player_obj.x = lerp(hit_player_obj.x, whirlwind.x+whirlwind.whirlwind_x_hitbox, 0.2);
	hit_player_obj.y = lerp(hit_player_obj.y, whirlwind.y+whirlwind.whirlwind_y_hitbox, 0.2);
}
if (whirlwind2_hit == true){
	hit_player_obj.x = lerp(hit_player_obj.x, whirlwind2.x+whirlwind2.whirlwind_x_hitbox, 0.2);
	hit_player_obj.y = lerp(hit_player_obj.y, whirlwind2.y+whirlwind2.whirlwind_y_hitbox, 0.2);
}

//Pulls the target into the Grab
if (cargo_hit_right == true){
	hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.1);
	hit_player_obj.y = lerp(hit_player_obj.y, y, 0.1);
}
if (cargo_hit_left == true){
	hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.1);
	hit_player_obj.y = lerp(hit_player_obj.y, y, 0.1);
}

// Grabbing state
if (cargo_grab == true && grab_timer >= 0){
	can_wall_jump = false;
	hit_player_obj.x = x+40*spr_dir;
	hit_player_obj.y = y;
	hit_player_obj.spr_dir = spr_dir;
	hit_player_obj.hitstop = 1;
	grab_timer --;
	
	hit_player_obj.depth = -6;
	
	initial_dash_speed  = 3;
	dash_speed          = 3;
	dash_turn_time      = 6;
	depth = -1;
	
	if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		hit_player_obj.x = x-40*spr_dir;
		hit_player_obj.y = y-30;
	}
		
	if (state == PS_WALL_JUMP){
		cargo_grab = false;
	}
	
	
	// Moving opponent when turning
	if (state == PS_WALK_TURN || state == PS_DASH_TURN){
		if (state_timer < 3){
			hit_player_obj.x = x+40*spr_dir;
			hit_player_obj.y = y-20;
		}
		if (state_timer == 3){
			hit_player_obj.x = x;
			hit_player_obj.y = y-20;
		}
		if (state_timer > 3){
			hit_player_obj.x = x-40*spr_dir;
			hit_player_obj.y = y-20;
		}
	}
	
	
	djumps = 1;
	
	
	if (state == PS_CROUCH){
		state = PS_IDLE;
	}
	
	// Moving opponent when getting ready to launch
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		if (attack == AT_NSPECIAL_2){
			if (window == 1){
			hit_player_obj.x = x-40*spr_dir;
			hit_player_obj.y = y-25;	
		}
			if (window == 2){
			if (cargo_up == false){
				hit_player_obj.x = x+60*spr_dir;
				hit_player_obj.y = y;		
			}
			else {
				hit_player_obj.x = x+1*spr_dir;
				hit_player_obj.y = y-60;		
			}
		}	
		}
		if (attack == AT_TAUNT){
			if (window == 1 && window_timer < 15){
				hit_player_obj.x = x-30*spr_dir;
				hit_player_obj.y = y-30;	
			}
			else {
				hit_player_obj.x = x-40*spr_dir;
				hit_player_obj.y = y-30;
			}
			
		}
		
	}
	if(has_hit_player &&  attack != AT_NSPECIAL){
		cargo_grab = false;
	}
	
	if (shield_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		cargo_grab = false;
		move_cooldown[AT_NSPECIAL] = 60;
	}
}

// Grab timer ended
if (grab_timer < 0){
	cargo_grab = false;
	hsp -= -5*spr_dir;
	vsp -= 3;
	spr_dir *= -1;
	state = PS_LANDING_LAG;
	djumps = 0;
	grab_timer = 0;
	
	can_wall_jump = true;
	initial_dash_speed  = 6.5;
	dash_speed          = 6;
	dash_turn_time      = 10;	
	dash_turn_accel     = 0.5;
	depth = -4;
}
if (cargo_grab == false){
	can_wall_jump = true;
	initial_dash_speed  = 6.5;
	dash_speed          = 6;
	dash_turn_time      = 10;	
	dash_turn_accel     = 0.5;
	depth = -4;
}

//Makes sure the Whirlwind Effect is active if so
if (whirlwind_punch_effect == true){
	whirlwind_player.whirlwind_effect = true;
	whirlwind_punch_active = true;
}

//Resets the Whirlwind Effect if the opponent dies with it
if (whirlwind_player.state == PS_RESPAWN){
	whirlwind_player.whirlwind_effect = false;
	whirlwind_punch_active = false;
	whirlwind_punch_effect = false;
}