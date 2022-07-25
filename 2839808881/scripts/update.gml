//update.gml

//
if (abilityStolenTracker != 0){
	if (!hitpause){
		abilityStolenTracker--;
		if (abilityStolenTracker == 2){
			TCG_Kirby_Copy = 0;
		}
	}
}
//parry sound
if(state == PS_PARRY && state_timer == 0){
	sound_play(sound_get("sfx_parry"));
}
if (!free || state == PS_WALL_JUMP){
	move_cooldown[AT_COPY_FIRE] = 0;
	move_cooldown[AT_COPY_DRILL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

if (attack == AT_FSPECIAL && (window == 6 || window == 7 || window == 2)){
	move_cooldown[AT_FSPECIAL] = 40;
}

// Grab timer ended
if (grab_timer < 0){
	nspec_grabbed = false;
	hsp -= 5*spr_dir;
	vsp -= 3;
	spr_dir *= 1;
	state = PS_LANDING_LAG;
	djumps = 0;
	grab_timer = 0;
	
	can_wall_jump = true;
	initial_dash_speed  = 7;
	dash_speed          = 6.5;
	dash_turn_time      = 10;	
	dash_turn_accel     =10.5;
	depth = -4;
	consumed_proj = false;
	if(instance_exists(grabbedtarget))
		grabbedtarget.visible = true;
	grabbedtarget = noone;
	max_djumps = 3;
}
if (nspec_grabbed == false){
	if(state_timer ==1){
		inhale_sound_timer = 0;
	}
	can_wall_jump = true;
	initial_dash_speed  = 7;
	dash_speed          = 6.5;
	dash_turn_time      = 10;	
	dash_turn_accel     = 1.5;
	depth = -4;
	max_djumps = 3;
	consumed_proj = false;
	if(instance_exists(grabbedtarget))
		grabbedtarget.visible = true;
	grabbedtarget = noone;
}

// Grabbing state
if (nspec_grabbed == true && grab_timer >= 0){
	can_wall_jump = false;
	grab_par = grab_timer%2;
	grab_tres = grab_timer%3;
	
	if (instance_exists(grabbedtarget)) {
	 //		if (grab_timer > 15.5){
				grabbedtarget.x = x;
				grabbedtarget.y = y;
				
		//	}
		grabbedtarget.visible = false;
		grabbedtarget.hitstop = 1;
	
		grabbedtarget.depth = -6;
	}
	
	if (free){
		if (grab_timer > 15){
			grab_timer -= 1;	
		}
		else {
			grab_timer -=.5;
		}
	}
	else {
		grab_timer -=.5;
	}
	/*
	if (grab_timer <= 15.5){
		if (grab_par == 1){
			grabbedtarget.x = x-35*spr_dir;
		}
		if (grab_par == 0){
			grabbedtarget.x = x-45*spr_dir;
			
		}
		if (grab_tres == 0){
			grabbedtarget.y = y-35;
		}
		if (grab_tres == 1){
			grabbedtarget.y = y-30;
		}
		if (grab_tres == 2){
			grabbedtarget.y = y-25;
		}
	}
	*/
	
	initial_dash_speed  = 3;
	dash_speed          = 3;
	dash_turn_time      = 6;
	depth = -1;
	
	if (instance_exists(grabbedtarget)) {
		if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && grab_timer > 15.5){
			grabbedtarget.x = x;
			grabbedtarget.y = y;
		}
	}
	
	if (state == PS_WALL_JUMP){
		nspec_grabbed = false;
	}
	
	
	max_djumps = 0;
	
	
	if (state == PS_CROUCH){
		state = PS_IDLE;
	}
	
	if(down_pressed&&kirby_nspec_swallowed_yet == false){
		kirby_nspec_swallowed_yet = true;
        set_attack(AT_NSPECIAL);
        window = !consumed_proj ? 6 : 8;
        window_timer = 0;
        if (consumed_proj) nspec_grabbed = false;
	}
	
	if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		hurtboxID.sprite_index = sprite_get("chunky_hurtbox");	
	}else{
		CorrectHurtboxes();
	}
	
	if(has_hit_player &&  attack != AT_NSPECIAL){
		nspec_grabbed = false;
	}
	
	if (shield_pressed && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		nspec_grabbed = false;
		move_cooldown[AT_NSPECIAL] = 60;
	}
	
	
	
	if (y > get_stage_data(SD_Y_POS) + 230){
	    nspec_grabbed = false;
	}
	if(state == PS_DASH){
		set_state(PS_WALK);
	}
}

switch(state){
    case PS_CROUCH:
        if(state_timer == 0){
            sound_play(sound_get("sfx_crouch"));
        }
    break;
    case PS_WALK:
		/*
        if(state_timer % 30 == 0){
            sound_play(sound_get("sfx_step"));
        }
		*/
		if(state_timer == 50){
			state_timer = 0;
		}
		if (state_timer == 10
		|| state_timer == 35){
			sound_play(sound_get("sfx_step"));
		}
    break;
    case PS_DASH:
		/*
        if(state_timer % 17 == 0){
            sound_play(sound_get("sfx_step"));
        }
		*/
		if(state_timer == 40){
			state_timer = 0;
		}
		if (state_timer == 10
		|| state_timer == 30){
			sound_play(sound_get("sfx_step"));
		}
    break;
}

if (state == PS_DOUBLE_JUMP && state_timer == 0) {
	if (spr_dir == 1 && (left_down || (left_pressed && !right_down))) {
		spr_dir = -1;
	} else if (right_down || (right_pressed && !left_down)) {
		spr_dir = 1;
	}
}

//Trail stuff
if (draw1 > 0){
    draw1 -= 0.08;
}
if (draw2 > 0){
    draw2 -= 0.08;
}
if (draw3 > 0){
    draw3 -= 0.08;
}
if (draw4 > 0){
    draw4 -= 0.08;
}
if (draw5 > 0){
    draw5 -= 0.08;
}

//Ranger Stuff
if (sprite_index == sprite_get("ability_ranger") && image_index == 4){
	if (!joy_pad_idle){
		if (joy_dir > 90 && joy_dir < 181){
			dir_joy = abs((joy_dir-90)-90);
			dir_joy_direction = -1;
			dir_joy_direction_vert = -1;
		} else if (joy_dir > 180 && joy_dir < 271){
			dir_joy = abs(joy_dir-180);
			dir_joy_direction = -1;
			dir_joy_direction_vert = 1;
		} else if (joy_dir > 270){
			dir_joy = abs((joy_dir-270)-90);
			dir_joy_direction = 1;
			dir_joy_direction_vert = 1;
		} else {
			dir_joy = abs(joy_dir);
			dir_joy_direction = 1;
			dir_joy_direction_vert = -1;
		}
		dir_joy_remember = dir_joy;
		dir_joy_remember_direction_vert = dir_joy_direction_vert;
	} else {
		dir_joy = dir_joy_remember;
		dir_joy_direction = spr_dir;
		dir_joy_direction_vert = dir_joy_remember_direction_vert;
	}

	dir_actual = (radtodeg(dir_joy))/57.29577778; //don't ask why i chose 57.29577778
	dir_sin = dir_actual/90;
	dir_cos = abs(1 - dir_sin);
} else {
	dir_joy_remember = 0;
	dir_joy_remember_direction_vert = -1;
}

if (bomb_timer >= 0){
	bomb_timer++
}

if (bomb_timer >= 11){
	create_hitbox(AT_COPY_BOMB, 2, bomb_x, bomb_y);
	bomb_timer = -1;
}

//Resetting Mike uses if not in use
if (TCG_Kirby_Copy != 11){
	if(attack != AT_COPY_MIKE){
		mike_level = 1;
		set_attack_value(AT_COPY_MIKE, AG_SPRITE, sprite_get("ability_mike1"));
		set_attack_value(AT_COPY_MIKE, AG_HURTBOX_SPRITE, sprite_get("ability_mike1_hurt"));
	}
}

//Dropping ability on air

if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) {

	if (taunt_pressed) {air_drop_ability = 0;}

	if (taunt_down) {air_drop_ability++;}

	if (air_drop_ability == 2*((get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH)) + (get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH)))){
		if (taunt_down && TCG_Kirby_Copy != 0){
			TCG_Kirby_Copy = 0;
			sound_play(sound_get("sfx_krdl_ability_drop"));
			spawn_hit_fx(x, y - 14, ability_get_fx_fast);
		}
	}
} else air_drop_ability = 0;

if get_player_color(player) = 19 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
 
color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 19, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

init_shader();
}

#define window_time_is_div(modulo) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer % modulo == 0 and !hitpause
#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}