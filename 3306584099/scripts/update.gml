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

//play intro
if (get_gameplay_time() == 4 && has_intro) set_attack(AT_INTRO);
//#endregion

//Update voice
voice_update();
//Reset max fall after uspecial


//cooldowns
var num_walls = 0;
with (obj_article_solid) {
	if (player == other.player && player_id == other.id) {
		num_walls++;
	}
}

if (num_walls > 0) {
	move_cooldown[AT_DSPECIAL] += 1;
}

if (!is_attacking || (is_attacking && attack != AT_USPECIAL_2))
{
	uspecial_on_plat = noone;
	with (obj_article_platform) {
		if (player == other.player && player_id == other.id) {
			if (state == 2 || state == 3) {
				other.uspecial_on_plat = id;
			}
			if (place_meeting(x, y-2, other) && !other.free && other.y <= y) {
				if (other.uspecial_landed) other.uspecial_on_plat = id;
				other.uspecial_can_spawn = other.uspecial_2_cancel_times == 1 ? true : false;
			}
		}
	}
	
	if ((!free && !uspecial_can_spawn && !instance_exists(uspecial_on_plat)) || state == PS_RESPAWN || state == PS_SPAWN) {
		uspecial_can_spawn = true;
		uspecial_landed = false;
		uspecial_2_cancel_times = 0;
		//print("Reset USpec")
	}
	
}
//Article hitboxes
with (obj_article1) {
	if (player == other.player && player_id == other.id) {
	        
        if (player_id.hitstop > 0 && player_id.hitpause) {
			hitstop = player_id.hitstop + 1;
        }
	        
		if (hitstop <= 0 ) {
			for (var j = player_id.weapon_hitbox_min[attack]; j <= player_id.weapon_hitbox_max[attack]; j += 1) {
			    if window == p_get_hitbox_value(attack, j, HG_WINDOW) && window_timer == max(p_get_hitbox_value(attack, j, HG_WINDOW_CREATION_FRAME), 0) {
			        var hitb = create_hitbox(attack, j, round(x) + p_get_hitbox_value(attack, j, HG_HITBOX_X)*spr_dir,round(y) + p_get_hitbox_value(attack, j, HG_HITBOX_Y));
			        hitb.type = p_get_hitbox_value(attack, j, HG_HITBOX_TYPE) == 0 ? 1 : p_get_hitbox_value(attack, j, HG_HITBOX_TYPE);
			        if (not "tomoko_owner" in hitb) hitb.tomoko_owner = id;
			    }
			}
			window_timer ++;
		}
	}
}

with (pHitBox) {
    if ("tomoko_owner" in self && player_id == other.id && type == 1) {
        if (instance_exists(tomoko_owner)) {
			if (tomoko_owner.destroyed) {
				instance_destroy(id);
				continue;
			}
	    }
    }
}

// NEW SOUP CODE HERE. replaces base cast hit effect sprites that are problematic
with (hit_fx_obj) {
	if (player != other.player) continue; //not me
	var new_sprite = 0;
	with (other) {
		switch (other.hit_fx) {
			case HFX_ETA_ICE_HUGE:
				new_sprite = sprite_get("afx_ice_large_edit")
				break;
		}
	}
	if (new_sprite) sprite_index = new_sprite;
}
// END OF NEW SOUP CODE

#define custom_attack_grid()
//looping window for X times
var window_loop_value;
window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);

if (!hitpause && is_attacking)
{
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
                case PS_PARRY:
                	if (parry_voice == 1) {
                		play_voice(["parry01","parry02"], voice_cooldown_set);
                		parry_voice = 0;
                	}
                break;
                case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
                    if (state_timer == 1 && voice_cooldown <= 0) {
                    	stop_voice();
                    }
                    if (!hitpause) //attacks
                    {
                    	if (parry_voice == 2) {
                    		stop_voice();
                    		voice_cooldown = 0;
                    		play_voice(["parried01","parried02"], voice_cooldown_set);
                    		parry_voice = 0;
                    	}
                    	else {
	                        switch (attack)
	                        {
	                            case AT_JAB: //jab is special, it has multiple windows 
	                            	if (window_timer == 0 && window == 7) {
	                                	play_voice(["attack_m01","attack_m02", "attack_m03", "attack_m04"], voice_cooldown_set);
	                            	}
	                            break;
	                            case AT_UTILT: case AT_FTILT: case AT_DTILT: case AT_NAIR: case AT_UAIR: case AT_DAIR:
	                                if (window == 1 && window_timer == 0) {
	                                	play_voice(["attack_l01","attack_l02","attack_l03"], voice_cooldown_set);
	                                }
	                            break;
	                            case AT_FAIR: case AT_BAIR: 
	                                if (window == 1 && window_timer == 0) play_voice(["attack_m01","attack_m02", "attack_m03", "attack_m04"], voice_cooldown_set);
	                            break;
	                            case AT_DATTACK:
	                                if (window == 1 && window_timer == 0) play_voice(["attack_l01","attack_l02","attack_l03"], voice_cooldown_set);
	                            break;
	                            case AT_NSPECIAL:
	                            	/*
	                        		if (window == 6) {
										if (window_loops == 2 && window_timer == 1) {
											play_voice("nspecial01", 45);
										}
	                        		}
	                        		*/
	                        		if (window == 7 && window_timer == 0) play_voice("nspecial02", 60);
	                            break;
	                            case AT_USPECIAL:
	                                if (window == 1 && window_timer == 2 && random_func(2 , 100, true) < 50 && uspecial_can_spawn) {
	                                	play_voice("uspecial01", 180);
	                                }
	                            break;
	                            case AT_USPECIAL_2:
	                                if (window == 2 && window_timer == 2 && random_func(2 , 100, true) < 50) {
	                                	play_voice("uspecial02", 180);
	                                }
	                            break;
	                            case AT_DSPECIAL:
	                                if (window == 4 && window_timer == 2) {
	                            		play_voice(["dspecial01","dspecial02"], 60);
	                                }
	                            break;
	                            case AT_FSTRONG: case AT_USTRONG: case AT_DSTRONG:
	                                if (window == 2 && window_timer == 0) play_voice(["attack_h01","attack_h02","attack_h03","attack_h04"], voice_cooldown_set);
	                            break;
	                            case AT_TAUNT:
	                                if (window == 1 && window_timer == 0) {
	                            		voice_cooldown = 0;
	                            		play_voice(["taunt01", "taunt02"], 120);
	                                }
	                            break;
	                            case 2: //Intro
	                                if (window == 1 && window_timer == window_end - (6 + (player-1))) {
	                            		voice_cooldown = 0;
	                            		
	                            		//Get all player IDs and check for Reapers or Figments
	                            		var player_is_reaper = false;
	                            		var player_is_figment = false;
	                            		
	                            		var reaper_urls = [
	                            			3079776883, //Kumaki
	                            			2871608790, //Azi
	                            			2965700442, //Anthem
	                            			3115049167, //Saelukune
	                            			3273103267, //SSL Duchess
	                            			//[RESERVED],
	                            			//[RESERVED],
	                            			];
	                            		
	                            		var figment_urls = [
	                            			2977835488, //Qoedil
	                            			3273102876, //SSL Ms. MERRY
	                            			];
	                            		
	                            		with (oPlayer) {
	                            			if (id == other.id) continue;
	                            			if (array_find_index(reaper_urls, url) != -1) player_is_reaper = true;
	                            			if (array_find_index(figment_urls, url) != -1) player_is_figment = true;
	                            		}
	                            		//If there is both a reaper and a figment on the stage, randomly choose one
	                            		if (player_is_reaper && player_is_figment) {
	                            			player_is_reaper = random_func(0, 100, true) < 50;
	                            			player_is_figment = !player_is_reaper;
	                            		}
	                            		
	                            		//Now play the intro lines
	                            		if (random_func(1, 100, true) <= 2) { //2% chance for this one to play :)
	                            			play_voice(["intro03"], 180);
	                            		}
		                            	else {
	                            			if (player_is_reaper) {
		                            			play_voice(["intro_reaper01", "intro_reaper02"], 180);
	                            			}
	                            			else if (player_is_figment) {
		                            			play_voice(["intro_reaper03", "intro_reaper04"], 180);
	                            			}
	                            			else {
		                            			play_voice(["intro01", "intro02"], 180);
	                            			}
	                            		}
	                            		
	                                }
	                            break;
	                        }
	                    }
                    }
                    break;
                case PS_HITSTUN:
                    if (state_timer == 1 && random_func(2 , 100, true) < 50)
                    {
       					stop_voice();
                        var dist = point_distance(0, 0, old_hsp, old_vsp);
                        
                        if (dist > 13) play_voice(["hurt_m01", "hurt_m02"], voice_cooldown_set);
                        else if (dist > 17) play_voice(["hurt_h01", "hurt_h02"], voice_cooldown_set);
                        else if (dist > 7) play_voice(["hurt_l01", "hurt_l02", "hurt_l03"], voice_cooldown_set);
                    }
                    break;
                case PS_RESPAWN:
                case PS_DEAD:
                    if (state_timer == 1)
                    {
       					stop_voice();
                		voice_cooldown = 0;
                        play_voice(["death01", "death02"], 0);
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
	    cur_voiceclip[0] = sound_play(sound_get("vfx_" + string(arr[num])));
	    voice_cooldown = _cooldown;
	}
}

#define stop_voice()
sound_stop(cur_voiceclip[1]);

#define p_get_attack_value(_attack, _window_value)
with (player_id) {
    return get_attack_value(_attack, _window_value)
}

#define p_get_window_value(_attack, _window, _window_value)
with (player_id) {
    return get_window_value(_attack, _window, _window_value)
}

#define p_get_hitbox_value(_attack, _window, _window_value)
with (player_id) {
    return get_hitbox_value(_attack, _window, _window_value)
}   

#define follower_charging_attack()
var result = false;
if (attack == AT_USTRONG || attack == AT_USTRONG_2)
    if (player_id.up_strong_down)
        result = true;
if (attack == AT_DSTRONG || attack == AT_DSTRONG_2)
    if (player_id.down_strong_down)
        result = true;
if (attack == AT_FSTRONG || attack == AT_FSTRONG_2)
    if (player_id.right_strong_down && player_id.spr_dir == 1) || (player_id.left_strong_down && player_id.spr_dir == -1)
        result = true;
if (player_id.strong_down)
    result = true;
if (player_id.smash_charging)
    result = true;
return result;