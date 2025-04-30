//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		if window = 1 && window_timer = 9 {
		    spawn_base_dust(x-16*spr_dir, y, "dash", spr_dir);
		    hsp = 14*spr_dir;
		} else {
		    hsp = 0;
		}
		if window = 3 && has_hit_player can_attack = true;
	break;
	case AT_FTILT:
	    if window = 1 && window_timer = 6 {
			spawn_base_dust(x-8*spr_dir, y, "walk", spr_dir);
		}
	break;
	case AT_DTILT:
		if window = 1 && window_timer = 4 {
			spawn_base_dust(x, y, "dash", spr_dir);
		}
	break;

	case AT_UTILT:
		if window == 1 && window_timer = 6{
			spawn_base_dust(x, y, "dash", spr_dir);
			spawn_base_dust(x, y, "dash", -spr_dir);
		}
	break;

    case AT_DATTACK:
        if window = 1 && !hitpause {
		    if window_timer = 1 {
                sound_play(sound_get("sm64_enemy_hop"), false, noone, 1.5, 1.8);
                
            }
            if window_timer = 9 {
                sound_stop(sound_get("sm64_enemy_hop"));
                sound_play(sound_get("bully_noise_3"));
                spawn_base_dust(x+hsp*4, y, "land", spr_dir);
                fxlol = spawn_hit_fx( x, y, dattack_fx );
                fxlol.depth = depth -1;
            }
        }
    break;

	case AT_FSTRONG:
	    switch window {
		    case 3:
			    if window_timer = 1 sound_stop(sound_get("sm64_inhale"));
				fstrong_aim = 0;
				spawn_base_dust(x, y, "dash_start", spr_dir);
			break;
			case 5:
			    if window_timer = 1 { 
				    sound_stop(sound_get("sm64_flamethrower"));
				    sound_play(sound_get("sm64_flamethrower_end"));
				}
			break;
		}
	break;
	case AT_DSTRONG:
	    if window = 2 {
		    destroy_hitboxes();
		}
	    if window = 4 && window_timer = 12  && !hitpause {
		    spawn_hit_fx( x - 44*spr_dir, y-24, fx_fire_kil );
		    spawn_hit_fx( x - 76*spr_dir, y-18, fx_fire_kil );
		    spawn_hit_fx( x - 108*spr_dir, y-22, fx_fire_kil );
		}
	break;
		
	case AT_USTRONG:
		if window = 2 && window_timer = 1{
			spawn_base_dust(x, y, "dash_start", spr_dir);
			spawn_base_dust(x, y, "dash_start", -spr_dir);
			sound_stop(asset_get("sfx_charge_blade_ready"));
		}
	break;
	
	
		
	case AT_NAIR:
	    if window = 1 {
		    hsp *= 0.95;
		    vsp *= 0.95;
		}
	break;
		
	case AT_FSPECIAL:
	
//i literally just stole this from legacy zario thank u zard xoxo
//but also i optimized it a bunch soooo actually im epic xoxo
//SHOULDER BASH REWORK

can_move = false;
	
switch window {
	case 1:
	    fspecial_hit = 0;
		fspecial_extra_parrystun = 0;
        if window_timer = 1 && !hitpause sound_play(sound_get("bully_noise_2"));
	break;
	
	case 2:
	//Sets values for actual attack depending on if you are aerial or grounded
		
        if free = false || phone_cheats[CHEAT_SHMOOVEMENT] = true || has_rune("B") {
		    shoulderbashair = false;
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
			if window_timer = 6 && !hitpause spawn_base_dust(x+(32*spr_dir), y, "dash_start", 0);
        } else {
			shoulderbashair = true;
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -5);
        }
		
		if window_timer = 6 && !hitpause {
		    sound_play(sound_get("sm64_swoosh"));
			if alt = 18 sound_play(sound_get("wario_GOE"));
			
			if random_func(0, 4, true) = 0 {
			    talkingflower_voiceline(13, -1, false);
			}
		}
	break;
	
	case 3:
	    if shoulderbashair = false && (jump_down = true || (tap_jump_pressed = true && can_tap_jump() )) = true {
            	window = 5;
            	window_timer = 0;
        }
        if free = false {
            shoulderbashair = false;
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
			
			if window_timer%4 = 0 && !hitpause spawn_base_dust(x-(24*spr_dir), y, "walk", 0);
        }
		
		if has_hit { fspecial_hit = 1; }
	break;
	
	case 4:
        destroy_hitboxes();
	break;
	case 5:
	    if window_timer = 4 && !hitpause {
		    destroy_hitboxes();
			spawn_base_dust(x, y, (free ? "doublejump" : "jump"), spr_dir);
		}
	break;
	
	case 6:
	    if window_timer = 40 {
		    window = 10;
		    window_timer = 0;
		}
		if has_hit { fspecial_hit = 1; }
	break;
	
	case 7:
	    if fspecial_hit != 0 && window_timer > 1 && !hitpause {
			if fspecial_hit = 2 {
			    vsp = -8;
			} else {
			    if !down_down vsp = -6;
			}
			fspecial_hit = 0;
			destroy_hitboxes();
		}
	break;
	
	case 9:
	    if window_timer = 0 && !hitpause spawn_base_dust(x+hsp*4, y, "land", spr_dir);
	break;
	
}

if (place_meeting( x+1 * spr_dir, y-1, asset_get("par_block"))) && (window == 3 or window == 6){
    fspecial_hit = 2;
    spawn_base_dust(x+(24*spr_dir), y-32, "walljump", spr_dir*-1);
    fxlol = spawn_hit_fx(x+(24*spr_dir), y-32, fspecial_bonk_fx);
	fxlol.depth = depth-1;
    sound_play(sound_get("sm64_impact"));
	sound_play(sound_get("bully_dink"));
	sound_play(sound_get("bully_noise_3"));
    hitstop = 5;
    hitstop_full = 10;
    hitpause = true;
    shake_camera (7, 3);
}

move_cooldown[AT_FSPECIAL] = 6;

if fspecial_hit > 0 && window != 7 {
    sound_stop(sound_get("sm64_swoosh"));
    window = 7;
    window_timer = 1;
}

break;
	
	case AT_USPECIAL:
		can_fast_fall = false;
		switch(window){
			case 1: // startup
				u_angle = 0;
				if window_timer = 1 && !free {
					vsp = -5;
					hsp = 0;
				} else if window_timer = 1 {
				    vsp = 0;
					hsp = 0;
				}

                if window_timer = 1 && !hitpause {
                    sound_play(sound_get("uspecial_start"));
                }

				break;
			case 2: // flight
				vsp -= 1.1;
				vsp = clamp(vsp, (has_rune("E") ? -9 : -4.5), 0);
	            u_angle = -hsp*5;
			break;
			case 3: // deflate
			    u_angle = lerp(u_angle, 0, 0.3);
			    can_wall_jump = true;
			    if window_timer = 1 { 
				    sound_stop(sound_get("sm64_flamethrower"));
				    sound_play(sound_get("sm64_flamethrower_end"));
				}
			break;
		}
		break;
	
	case AT_NSPECIAL:
	    switch window {
		    case 2:
			    n_charged = false;

				if n_charge_stored {
				    window = 3;
				    window_timer = 0;
				} else if !special_down {
				    window = 4;
				    window_timer = 0;
				}
				
				if has_rune("H") {
				   n_charged = true;
				   window = 6;
				   window_timer = 0;
				   set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 9);
				}
			break;
			case 3:
			    n_charged = true;
			    if !special_down {
				    window = 6;
				    window_timer = 0;
				}
				if shield_down {
				    n_charge_stored = true;
				    window = 5;
				    window_timer = 1;
					clear_button_buffer(PC_SHIELD_PRESSED);
					sound_play(sound_get("sm64_cunk"));
				}
			break;
		    case 4:
			    if !phone_cheats[CHEAT_FIREBALL_SPAM] && !has_rune("C") { move_cooldown[AT_NSPECIAL] = 30; }
				
			    if window_timer = 1 && !hitpause {
				    sound_play(sound_get("sm64_fire"));
					sound_stop(sound_get("sm64_charge"));
					var nspeclol_2 = create_hitbox(AT_NSPECIAL, 1, free? x+10*spr_dir : x+28*spr_dir, free? y-6 : y-20);
					
					hsp -= 2*spr_dir;
					
					if free {
					    vsp = (has_rune("C") ? -4 : -5);
					    nspeclol_2.proj_angle = spr_dir=-1? 40 : 320;
					    nspeclol_2.hsp = lengthdir_x(4, 320)*spr_dir;
					    nspeclol_2.vsp = lengthdir_y(4, 320);
					}
					
				}
			break;
		    case 6:
			    if !phone_cheats[CHEAT_FIREBALL_SPAM] && !has_rune("C") { move_cooldown[AT_NSPECIAL] = 30; }
			
			    if window_timer < 4 && !hitpause {
				    if free { vsp = (has_rune("C") && has_rune("H") ? -4 : -7); hsp -= 0.8*spr_dir; } else { hsp -= 1.5*spr_dir; }
					
				    n_charge_stored = false;
				    sound_play(sound_get("sm64_fire"), false, noone, 1, 0.8 + window_timer*0.1 );
					sound_stop(sound_get("sm64_charge"));
					sound_stop(sound_get("sm64_charged"));
					
					if window_timer = 1 {
					
					//2 is spawned first so its layered above
					
					    var xofflol = free? x+10*spr_dir : x+20*spr_dir;
					    var yofflol = free? y-6 : y-20;
						
						var nspeclol_2 = create_hitbox(AT_NSPECIAL, 1, xofflol, yofflol);
						var nspeclol_1 = create_hitbox(AT_NSPECIAL, 1, xofflol, yofflol);
						var nspeclol_3 = create_hitbox(AT_NSPECIAL, 1, xofflol, yofflol);

						nspeclol_1.wow_hitbox_group = wow_hitbox_group;
						nspeclol_2.wow_hitbox_group = wow_hitbox_group;
						nspeclol_3.wow_hitbox_group = wow_hitbox_group;
						wow_hitbox_group++;
						
						nspeclol_1.spr_dir = spr_dir;
						nspeclol_2.spr_dir = spr_dir;
						nspeclol_3.spr_dir = spr_dir;
						
						nspeclol_1.proj_angle = free? spr_dir=-1? 40 : 320 : spr_dir=-1? 5 : 355;
						nspeclol_1.hsp = lengthdir_x(4, free ? 320 : 355)*spr_dir;
						nspeclol_1.vsp = lengthdir_y(4, free ? 320 : 355);
						
						nspeclol_2.proj_angle = free? spr_dir=-1? 60 : 300 : spr_dir=-1? 350 : 10;
						nspeclol_2.hsp = lengthdir_x(4, free ? 300 : 10)*spr_dir;
						nspeclol_2.vsp = lengthdir_y(4, free ? 300 : 10);
						
						nspeclol_3.proj_angle = free? spr_dir=-1? 80 : 280 : spr_dir=-1? 340 : 20;
						nspeclol_3.hsp = lengthdir_x(4, free ? 280 : 20)*spr_dir;
						nspeclol_3.vsp = lengthdir_y(4, free ? 280 : 20);
					}
				}
			break;
		}
	break;
	
	case AT_DSPECIAL:
		can_fast_fall = false;
		
		switch window {
		    case 1:
			    if window_timer = 1 {
			    	if free {
					    vsp = 0;
					} else {
					    vsp = -10;
					}
				}
			break;
			
			case 3:
			    if window_timer = 1 vsp = 20;
			case 4:
			    if has_hit {
				    if dspec_bounce = false {
					    dspec_bounce = true;
						sound_play(sound_get("bully_dink"));
						sound_play(sound_get("bully_noise"));
						sound_play(sound_get("sm64_impact"));
						vsp = 0;
						var fxlol = spawn_hit_fx(x, y, dspecial_fx); fxlol.depth = depth-1;
						move_cooldown[AT_DSPECIAL] = 30;
						set_num_hitboxes(AT_DSPECIAL, 1);
					}
				    if !hitpause {
				        window = 5;
		                window_timer = 0;
					    destroy_hitboxes();
					}
				}
				if hitpause vsp = 0; //doesnt work anywhere but here which is so fun and quirky
			    
				if has_rune("G") && object_index != oTestPlayer {
				if y + vsp >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) {
				    y = get_stage_data(SD_TOP_BLASTZONE_Y) - 64;
					sound_play(sound_get("sm64_groundpound"), false, noone, 1, 0.5 + ((vsp-20) * 0.01));
					vsp += 4;
				}
				}
				
				if hitpause {
				    annoying_dspec_vsp_buffer_variable_fuck_you_dan = 2;
				} else if annoying_dspec_vsp_buffer_variable_fuck_you_dan != 0 {
				    annoying_dspec_vsp_buffer_variable_fuck_you_dan--;
				}
				
				if annoying_dspec_vsp_buffer_variable_fuck_you_dan != 0 {
				    vsp = 0;
				}
			
			break;
			
			case 5:
			    if window_timer = 0 && !hitpause {
				    destroy_hitboxes();
				    if !dspec_bounce {
					    sound_play(sound_get("sm64_big_slam"));
				        sound_play(sound_get("bully_noise_3"));
			            shake_camera(5, 5);
						spawn_base_dust(x, y, "land", spr_dir);
					    var fxlol = spawn_hit_fx(x, y, dspecial_fx);
					    fxlol.depth = depth-1;
						
						if has_rune("A") {
						    var fire1lol = create_hitbox(AT_NSPECIAL, 1, x - 16, y-8);
						    var fire2lol = create_hitbox(AT_NSPECIAL, 1, x + 16, y-8);
							fire1lol.spr_dir = -1;
							fire1lol.hsp = -4;
							fire2lol.spr_dir = 1;
							fire2lol.hsp = 4;
						}
					}
				}
				if dspec_bounce && !hitpause vsp = -5;
				
			break;
		}
	break;
	
	case AT_TAUNT:
		can_fast_fall = false;
	    switch taunt_type {
		    default:
		        if window = 1 && window_timer = 1 && !hitpause {
		            sound_play(asset_get("sfx_ell_steam_release"), false, noone, 0.2, 1.2);
		            sound_play(sound_get("bully_noise"), false, noone, 1, 1);
				}
			break;
			case 1:
			    if window = 1 && window_timer = 1 && !hitpause {
    				sound_play(sound_get("bully_san"), false, noone, 1, 1);
				}
			break;
			case 2:
			    if window = 1 && window_timer = 1 && !hitpause {
    				sound_play(sound_get("prince_bully"), false, noone, 1, 1);
				}
				if state_timer < 400 {
				    window_timer = 1;
				}
				hsp = 1;
				vsp = 0;
			break;
			case 3:
			    if window = 1 && window_timer = 1 && !hitpause {
    				sound_stop(sound_get("tiw_cow"));
    				sound_play(sound_get("tiw_cow"), false, noone, 1, 1);
				}
			break;
			case 8:
			    if window = 1 && window_timer = 1 && !hitpause {
    				sound_play(sound_get("bruh (from mario)"), false, noone, 1, 1);
				}
			break;
		}
	break;
	
	case AT_EXTRA_1:
		can_fast_fall = false;
	    if (window = 1 || window = 3) && window_timer = 1 && !hitpause {
    		sound_play(sound_get("8bit_warp"), false, noone, 1, 1);
		}
			
		switch taunt_type {
		    case 4:
		    case 6:
				if window = 2 && window_timer = 4 && !hitpause {
    				sound_play(sound_get("8bit_smb1"), false, noone, 1, 1);
				}
			break;
			case 5:
				if window = 2 && window_timer = 4 && !hitpause {
    				sound_play(sound_get("8bit_smb2"), false, noone, 1, 1);
				}
			break;
			case 7:
				if window = 2 && window_timer = 4 && !hitpause {
    				sound_play(sound_get("8bit_sml2"), false, noone, 1, 1);
				}
			break;
		}
	break;
	
	case AT_EXTRA_2:
	can_fast_fall = false;
	//set movement checks ==
	    var held_forward = false;
	    var held_back = false;
		var free_var = false;
		if (left_down && spr_dir = -1) || (right_down && spr_dir = 1) held_forward = true;
		if ((left_down && spr_dir = 1) || (right_down && spr_dir = -1)) held_back = true;
		if free && !respawn_taunt free_var = true;
		
		
	    if ground_type = 1 || window = 1 {
			off_edge = false;
		} else {
			off_edge = true;
		}
	
	//fall off respawn =====
	if respawn_taunt && (x > plat_x + 80 || x < plat_x - 80) respawn_taunt = false;
		
	//check movement =======
		if held_forward {
		    if window = 2 {
			    window = 4;
			    window_timer = 6;
			} else if window = 4 {
			    hsp = spr_dir;
			}
		}
	
	//cancel ===============
		if !free_var && (window != 1 && window != 3) && (taunt_pressed || attack_pressed || special_pressed || shield_pressed) {
			window = 3;
			window_timer = 0;
			sound_play(sound_get("3dw_pop"));
			sound_play(asset_get("sfx_shovel_hit_light2"), false, noone, 0.2, 0.8);
            sound_play(sound_get("bully_noise_3"));
			spawn_base_dust(x, y, "land", spr_dir);
		}
	
	    switch window {
		    case 4:
	//s t o p ! ============
			    if joy_pad_idle {
				    window = 2;
				    window_timer = 0;
				}
	
			case 2:
	//turn =================
			    if held_back && !free_var {
				    window = 5;
				    window_timer = 0;
					spr_dir *= -1;
				}
	
    //sounds ===============
				if window_timer = 12 && !hitpause && !free_var {
				    sound_play(sound_get("3dw_crouch"), false, noone, 0.4, 1);
					spawn_base_dust(x-16*spr_dir, y, "walk", spr_dir);
				}
				if window_timer = 24 && !hitpause && !free_var {
				    sound_play(sound_get("3dw_crouch"), false, noone, 0.4, 0.8);
					spawn_base_dust(x-16*spr_dir, y, "walk", spr_dir);
				}
			break;
			
			case 5:
    //turn like base walk ==
			    if window_timer = 4 {
				    if held_forward && !held_back && !free_var {
					    window = 4;
						window_timer = 6;
					} else if held_back && !free_var {
					    window = 5;
						window_timer = 0;
						spr_dir *= -1;
					} else {
					    window = 2;
						window_timer = 0;
					}
				}
			break;
		}
	break;
	
	case AT_EXTRA_3:
	    switch window {
			case 3:
			    sound_stop(sound_get("sm64_slidedoor_open"));
			    if taunt_down || state_timer < 45 {
				    window_timer = 0;
				}
			break;
			case 4:
			    sound_stop(sound_get("xp_tada"));
			break;
			case 5:
			    if window_timer = 4 sound_stop(sound_get("sm64_slidedoor_close"));
			break;
		}
	break;
	
	case 40:
	    if window = 3 && window_timer = 1 && !hitpause {
		    create_hitbox(40, 1, x-8*spr_dir, y-16);
		}
	break;
}



//=================================================================

#define talkingflower_voiceline(type, force_line, interrupt)
/*
This is the function for custom voicelines!
Put it at the bottom of any script where you want to trigger Talking Flower dialogue.
=====================================================================================
type: The category of voiceclip to play.
1  - All lines (A full list can be located above)
2  - Taunt/Cheer
3  - Match Start (Ditto)
4  - Eepy Waking (doesn't include the snoring voiceline)
5  - Opponent Out Of Stocks/Time Up
6  - FEAR
7  - Idle
8  - Boring (no one hit a move for a while)
9  - Owner Died 
10 - Misc Lines (absolute grabbag)
11 - Choice (intended for menus)
12 - Rolling
13 - Speed
14 - Match Start
====================
force_line: Whether or not to force a specific line. Set this to -1 for a random line.
If you want the order for this, it's best to just look in load.gml or use trial & error.
The array for lines is all listed in alphabetical order, so it should also be the same as the /sounds folder.
====================
interrupt: Whether this line will play right away, or wait for the previous line to finish.
====================
*/

talkingflower_voice_trigger = type;
talkingflower_set_line = force_line;
talkingflower_interrupt = interrupt;

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


