//#region Local Variables
in_battle = get_training_cpu_action() == CPU_FIGHT;
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1)) - 1;
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}
else
{
    if (my_grab_id != noone) my_grab_id = noone; //if the player isn't attacking, we don't need the grab_id to stay

    if (state_timer == 0)
    {
        //force reset spr_angle and draw offsets on the start of every state
        //normally we put this sort of stuff in animation.gml, but update.gml runs before animation.gml
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}


//grab logic
if (my_grab_id != noone) //if you have grabbed someone
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe

		if (last_player_hit_me != other.player) //if another player hits the grabbed player stop the grab sequence
		{
			hitstop = 0;
			with (other)
			{
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6; //push back for some extra effect (ground only)
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;
custom_attack_grid();
//#endregion

//Update wait animation
if (state == PS_IDLE) {
	if (state_timer == WAIT_MAX_TIME) {
		var num = ceil(random_func_2(0, array_length(mako_wait_attacks), true));
		set_attack(mako_wait_attacks[num])
	}
}
//Glow
if (get_player_color(player) == 29) {
	init_shader();
}

//Cooldowns
if (move_cooldown[AT_FSPECIAL] > 12 && !free) {
	move_cooldown[AT_FSPECIAL] = 12;
}

//Debug
if (!in_battle) {
	if (taunt_pressed && shield_down) {
		clear_button_buffer(PC_TAUNT_PRESSED);
		sound_play(asset_get("mfx_forward"));
		tension_amount = (tension_level+1) * TENSION_LEVEL_THRESHOLD;
		tension_amount %= TENSION_MAX + 1;
	}
}

//Update tension
tension_update();
//Update voice
voice_update();
//Update shockwaves
for (var i = 0; i <= 1; i++) {
    if (shock[i].timer >= 0) {
        shock[i].timer++;
	    if (shock[i].timer % 9 == 0) {
            sound_stop(asset_get("sfx_kragg_spike"));
            sound_play(asset_get("sfx_kragg_spike"));
            var hbox = create_hitbox(AT_DSPECIAL, shock[i].hbox_num, round(shock[i].xstart + shock[i].x ), round(shock[i].ystart));
            shock[i].x += 48 * shock[i].dir;
            
	        shock[i].times++;
	        
	        var x_test = shock[i].xstart + shock[i].x;
            if ((!collision_rectangle(x_test - 16, hbox.y, x_test + 16, hbox.y+2, asset_get("par_block"), 1, 1) 
            	&& !collision_rectangle(x_test - 16, hbox.y, x_test + 16, hbox.y+2, asset_get("par_jumpthrough"), 1, 1)) || shock[i].times >= shock[i].times_max)
                shock[i].timer = -1;
	    }
    }
    else {
        shock[i].times = 0;
        shock[i].x = 0;
    }
}

#define custom_attack_grid()
//looping window for X times
var window_loop_value;
window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);

if (!hitpause && is_attacking)
{
    if (window == 1 && window_timer == 0 && !hitpause) {
        window_loops = 0;
    }
        
    //loop window
    if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9) //this will make it so it only works if the window type is 9
    {
        if (window_timer == window_end-1) //checks almost the end of the window
        {
            attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
            if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
        }

        if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
        {
            if (window_timer == 0) window_loops ++; //at the start of the window, count a loop up

            if (window_loops > window_loop_value) //when all the loops are over, go to the next window and reset the loop value
            {
                destroy_hitboxes();
                window += 1;
                window_timer = 0;
                window_loops = 0;
            }
        }
    }
}

if (!is_attacking) window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)

#define tension_update()

//Whiff penalty
var window_tension_whiff = get_window_value(attack, window, AG_WINDOW_TENSION_WHIFF_PENALTY);

if (!hitpause) {
	if (is_attacking)
	{
	    if (window_tension_whiff > 0 && !has_hit) //checks almost the end of the window
	    {
	    	if (window_timer == 1) {
	    		//tension_whiffed_air = true;
	        	tension_add(-ceil(window_tension_whiff * TENSION_DAMAGE_RATIO))
	    	}
	    }
	}
	// else if (state == PS_LANDING_LAG) {
 //       if (get_attack_value(attack, AG_CATEGORY) == 1) {
	// 	    if (!tension_whiffed_air && !free && !has_hit) //checks the start of landing lag. This time the landing lag value is used.
	// 	    {
	// 	        tension_add(-ceil(get_attack_value(attack, AG_LANDING_LAG) * TENSION_DAMAGE_RATIO))
	// 	        tension_whiffed_air = true;
	// 	    }
 //       }
	// }
	// else {
	// 	tension_whiffed_air = false;
	// }
}

//Variable updates
tension_amount = clamp(tension_amount, 0, TENSION_MAX);
tension_level = max(ceil(tension_amount / TENSION_LEVEL_THRESHOLD), 1); //An easy way to keep track of tension level.

tension_mult = 0; //Affects the stat changes 
if (tension_level > floor(TENSION_LEVEL_AMOUNT-2)) {
	tension_mult += TENSION_MULTIPIER_ADD * (tension_level-2)
} 

if (tension_level_prev != tension_level) {
	if (tension_level_prev < tension_level) {
		sound_play(sound_get("sfx_powerup"));
		if (visible) {
			var fx = spawn_hit_fx(round(x), round(y), fx_powerup);
			fx.depth = depth - 1;
			fx.spr_dir = 1;
		}
	}
	else {
		sound_play(sound_get("sfx_powerdown"));
		if (visible) {
			var fx = spawn_hit_fx(round(x), round(y), fx_powerdown);
			fx.depth = depth - 1;
			fx.spr_dir = 1;
		}
	}
	tension_level_prev = tension_level;
	
	//Stat changes
	if (tension_level == 1) {
		stat_change_set_multilpier("walk_speed", 0.8);
		stat_change_set_multilpier("walk_accel",  0.8);
		stat_change_set_multilpier("initial_dash_speed",  0.8);
		stat_change_set_multilpier("dash_speed", 0.7);
		stat_change_set_multilpier("ground_friction", 0.9);
		stat_change_set_multilpier("air_accel", 0.8);
		stat_change_set_multilpier("air_friction", 0.9);
		stat_change_set_multilpier("air_max_speed", 0.8);
		stat_change_set_multilpier("gravity_speed", 0.95);
		stat_change_set_multilpier("max_fall", 0.8);
		stat_change_set_multilpier("fast_fall", 0.8);
	}
	else if (tension_level > floor(TENSION_LEVEL_AMOUNT-2))  {
		stat_change_set_multilpier("walk_speed", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("walk_accel", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("initial_dash_speed", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("dash_speed", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("ground_friction", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("air_accel", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("air_friction", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("air_max_speed", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("gravity_speed", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("max_fall", 1 + (0.2 * tension_mult));
		stat_change_set_multilpier("fast_fall", 1 + (0.2 * tension_mult));
		
		//Empower hitboxes
		with (pHitBox) {
			if (player_id == other.id && type != 2) {
				if (hitbox_timer == 0) {
					damage_original = damage;
					damage *= 1 + (0.3 * other.tension_mult);
					damage = ceil(damage);
				}
			}
		}
	}
	else {
		stat_change_reset("walk_speed");
		stat_change_reset("walk_accel");
		stat_change_reset("initial_dash_speed")
		stat_change_reset("dash_speed")
		stat_change_reset("ground_friction")
		stat_change_reset("air_accel")
		stat_change_reset("air_friction")
		stat_change_reset("air_max_speed")
		stat_change_reset("gravity_speed")
		stat_change_reset("max_fall")
		stat_change_reset("fast_fall")
	}
}

with (hit_fx_obj) {
	if (player_id == other.id) {
		if (hit_fx == other.fx_powerup || hit_fx == other.fx_powerdown) {
			x = other.x;
			y = other.y - 52;
		}
	}
}

// //Empower hitboxes
// if (tension_level > floor(TENSION_LEVEL_AMOUNT-2))  {
// 	with (pHitBox) {
// 		if (player_id == other.id) {
// 			if (hitbox_timer == 0) {
// 				damage_original = damage;
// 				damage *= 1 + (0.3 * other.tension_mult);
// 				damage = ceil(damage);
// 			}
// 		}
// 	}
// }


if (tension_level == TENSION_LEVEL_AMOUNT) { //Fully charged
	tension_animation_timer ++;
	var colorOut = merge_color(c_black, /*#*/$2d1773, pingpong(0, 1, tension_animation_timer, 120));
	outline_color = [ color_get_red(colorOut), color_get_green(colorOut), color_get_blue(colorOut) ];
	init_shader();
	outline_color = [ 0, 0, 0 ];
} else if (tension_level == 1) { //Fully charged
	tension_animation_timer ++;
	var colorOut = merge_color(c_black, /*#*/$3b5224, pingpong(0, 1, tension_animation_timer, 120));
	outline_color = [ color_get_red(colorOut), color_get_green(colorOut), color_get_blue(colorOut) ];
	init_shader();
	outline_color = [ 0, 0, 0 ];
} else {
	tension_animation_timer = 0
	outline_color = [ 0, 0, 0 ];
}

#define tension_add(_change)
tension_amount += _change;
tension_amount = clamp(tension_amount, 0, TENSION_MAX);

#define stat_change_reset(_stat)
if (!is_string(_stat)) return;
variable_instance_set(id, _stat, variable_instance_get(id, _stat + "_def", 1));

#define stat_change_set_multilpier(_stat, _multiplier)
if (!is_string(_stat)) return;
variable_instance_set(id, _stat, variable_instance_get(id, _stat + "_def", 1) * _multiplier);

#define voice_update()
	
//voice acting
if (lang != 0)
{
    if (voice_cooldown > 0 && !hitpause) voice_cooldown--;
    if (!hitpause)
    {
        var should_speak = 1; //0-1
        if (should_speak == 1)
        {
            switch (state)
            {
                case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE:
                case PS_WAVELAND:
                    //if (state_timer == 1) voice_array(0);
                    break;
                case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
                    if (state_timer == 1 && voice_cooldown <= 0) {
                    	stop_voice();
                    }
                    if (!hitpause) //attacks
                    {
                        switch (attack)
                        {
                        	/*
                            case AT_JAB: //jab is special, it has multiple windows
                                switch (window)
                                {
                                    case 1: case 4: case 7: case 11:
                                        voice_array(1);
                                        break;
                                    case 14:
                                        voice_array(2);
                                        break;
                                }
                                break;
                            case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG: //stongs play sounds only on window 4
                                if (window == 4) voice_array(3);
                                break;
                            case AT_UTILT: case AT_FTILT: case AT_DTILT: case AT_DSPECIAL:
                                if (window == 1) voice_array(1);
                                break;
                            case AT_DATTACK: case AT_NAIR: case AT_FAIR: case AT_UAIR: case AT_DSPECIAL_2:
                                if (window == 1) voice_array(2);
                                break;
                            case AT_DAIR: case AT_BAIR: case AT_NSPECIAL_2:
                                if (window == 1) voice_array(3);
                                break;
                            case AT_FSPECIAL:
                                if (window == 1) voice_array(0);
                                if (window == 3) voice_array(3);
                                break;
                            case AT_USPECIAL:
                                if (window == 1) voice_array(2);
                                break;
                               */
                            case AT_JAB: //jab is special, it has multiple windows 
                            	if (window_timer == 0) {
	                                switch (window)
	                                {
	                                    case 1: case 4:
	                                    	play_voice(["attack_l1","attack_l2","attack_l3","attack_l4","attack_l5","attack_l6"], voice_cooldown_set);
	                                        break;
	                                    case 7:
	                                         play_voice(["attack_m1","attack_m2"], voice_cooldown_set);
	                                        break;
	                                }
                            	}
                            break;
                            case AT_UTILT: case AT_FTILT: case AT_DTILT: case AT_NAIR: case AT_BAIR: case AT_UAIR: case AT_DAIR:
                                if (window == 1 && window_timer == 0) play_voice(["attack_l1","attack_l2","attack_l3","attack_l4","attack_l5","attack_l6"], voice_cooldown_set);
                            break;
                            case AT_FAIR:
                                if (window == 1 && window_timer == 0) play_voice(["attack_m1","attack_m2"], voice_cooldown_set);
                            break;
                            case AT_DATTACK:
                                if (window == 1 && window_timer == 0 && random_func(1, 100, true) <= 25) play_voice("dattack1", voice_cooldown_set);
                            break;
                            case AT_NSPECIAL:
                                if (window == 9 && window_timer == 0) play_voice(["nspecial1","nspecial2"], 120);
                            break;
                            case AT_USPECIAL:
                                if (window == 1 && window_timer == 0) play_voice(["uspecial1","uspecial2"], 180);
                            break;
                            case AT_FSPECIAL:
                                if (window == 1 && window_timer == 0) play_voice(["fspecial1","fspecial2"], 30);
                            break;
                            case AT_DSPECIAL:
                            case AT_DSPECIAL_AIR:
                                if (window == 1 && window_timer == 0) {
                                	if (tension_level == 4) {
                                		voice_cooldown = 0;
                                		play_voice(["select","dspecial3"], 180);
                                	}
                                	else
                                		play_voice(["dspecial1","dspecial2"], voice_cooldown_set);
                                }
                            break;
                            case AT_FSTRONG: case AT_USTRONG: case AT_DSTRONG:
                                if (window == 2 && window_timer == 0) play_voice(["attack_h1","attack_h2","attack_h3","attack_h4","attack_h5","attack_h6"], voice_cooldown_set);
                            break;
                            case AT_TAUNT:
                                if (window == 2 && window_timer == 0) {
                            		voice_cooldown = 0;
                            		play_voice("taunt1", 120);
                                }
                            break;
                            case AT_EXTRA_1:
                                if (window == 2 && window_timer == 0) play_voice("wait1", 0);
                            break;
                            case AT_EXTRA_2:
                                if (window == 2 && mako_wait_timer % 160 == 0) play_voice("sleep", 0);
                                if (window == 3 && window_timer == 0) play_voice("sleep_awake", 0);
                            break;
                            case 49:
                                if (window == 4) {
                                	if (fs_window == 2 && fs_window_timer == 1) {
	                            		voice_cooldown = 0;
	                            		play_voice("final_smash_c1", 1);
                                	}
                                	if (fs_window == 3 && fs_window_timer == 100) {
	                            		voice_cooldown = 0;
	                            		play_voice("final_smash_c2", 1);
                                	}
                                }
                            break;
                        }
                    }
                    break;
                case PS_HITSTUN:
                    if (state_timer == 1)
                    {
       					stop_voice();
                        var dist = point_distance(0, 0, old_hsp, old_vsp);
                        
                        if (dist > 17) play_voice(["hurt_h1", "hurt_h2"], voice_cooldown_set);
                        else if (dist > 10) play_voice(["hurt_l1", "hurt_l2", "hurt_l3"], voice_cooldown_set);
                    }
                    break;
                case PS_RESPAWN:
                case PS_DEAD:
                    if (state_timer == 1)
                    {
       					stop_voice();
                		voice_cooldown = 0;
                        play_voice(["death1", "death2"], 0);
                    }
                    break;
                   default:
                   break;
            }
        }
        
        //if a new voiceclip is playing, cut the old one
        if (cur_voiceclip[0] != cur_voiceclip[1])
        {
            sound_stop(cur_voiceclip[1]);
            cur_voiceclip[1] = cur_voiceclip[0];
        }
    }
}


#define play_voice (_string_array, _cooldown)
var arr = _string_array;
if (!is_array(arr)) arr = [_string_array];

if (lang != 0)
{
	if (voice_cooldown <= 0) {
		var num = floor(random_func(6, array_length(arr), false));
	    cur_voiceclip[0] = sound_play(sound_get("vfx_" + string(arr[num]) + "_" + string(lang)));
	    voice_cooldown = _cooldown;
	}
}

#define stop_voice()
sound_stop(cur_voiceclip[1]);

#define pingpong(_s, _e, _time, _time_max)
var dir = 1
if (_time % _time_max >= _time_max / 2)
	dir = -1;
return lerp(_s, _e, (dir == 1 ? (_time % _time_max) / (_time_max / 2) : (_time_max - (_time % _time_max))/ (_time_max / 2)))
