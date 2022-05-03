
//if (hitstop == 0) hitpause = false;

debug_var = my_hitboxID.hbox_num;

//ignore everything if this is a reflected attack.
if (my_hitboxID.player != my_hitboxID.orig_player) exit;

//if the priority of the attack is 5 AND the enemy isn't superarmored or invincible, inflict 'weightless'.
//exclude attacks that have been reflected with a parry.
var move_priority = get_hitbox_value( my_hitboxID.attack, my_hitboxID.hbox_num, HG_PRIORITY );
if (move_priority == 5 
    && hit_player_obj.super_armor == false 
	&& hit_player_obj.invincible == false
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) ) {
	
	if (hit_player_obj.epinel_other_weightless_timer > 0 && !runeM) {
		hit_player_obj.epinel_other_weightless_inflicted = 2; 
	}
	else {
		if (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DATTACK) hit_player_obj.epinel_other_weightless_inflicted = 5; //short inertia
		else hit_player_obj.epinel_other_weightless_inflicted = 1; 
		if (hit_player_obj.hitstun >= 1) { hit_player_obj.hitstun += 3; }
		if (runeM) hit_player_obj.hitstop += 7;
	}
	hit_player_obj.epinel_other_player_that_inflicted_weightless_id = id;
	
	var tempvar_fx = spawn_hit_fx(hit_player_obj.x, round(hit_player_obj.y - hit_player_obj.char_height/2), epinel_fx_inertia);
	tempvar_fx.draw_angle = point_direction(0, 0, hit_player_obj.old_hsp, hit_player_obj.old_vsp);
	tempvar_fx.depth = depth - 1;
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 19);
	//sound_play(asset_get("sfx_troupple_swipe"));
	sound_play(sound_get("drop"));
}

//restore doublejump upon melee hit rune
if (runeK && move_priority == 5 && my_hitboxID.type == 1) {
	djumps = 0;
}

//increased knockback during inertia rune
if (runeJ && my_hitboxID.type == 1 && hit_player_obj.epinel_other_weightless_timer > 0 && hit_player_obj.hitstun > 0 && hit_player_obj.hitpause) {
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 19);
	hit_player_obj.old_hsp *= 1.2;
	hit_player_obj.old_vsp *= 1.2;
	hitstop += 10;
	hit_player_obj.hitstop += 10;
	sound_play(sound_get("sharpen_edited_freesounds_nicktermer"));
}



scr_spawn_attack_fx_slash_small();


if (!free && my_hitboxID.type == 1 && instance_exists(epinel_other_standing_on_platform_id)) {
	with (epinel_other_standing_on_platform_id) {
		if (hsp != 0) {
			hsp = sign(hsp) * (abs(hsp) - 1);
		}
	}
}


switch (my_hitboxID.attack) {
	
	case AT_FAIR:
		//this move's meteor hitbox is intentionally a frame longer than it looks. this code removes the visual jank.
		//if (my_hitboxID.hbox_num >= 4 && window > 3) {
		//	window = 3;
		//	window_timer = get_window_value( AT_FAIR, 3, AG_WINDOW_LENGTH ) - 1;
		//}
		//artificially make this move harder to combo.
		//if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 6) && state == PS_ATTACK_AIR) {
		//	old_hsp -= spr_dir * 0.15;
		//}
	break;
	
	case AT_UAIR:
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) vsp = min(vsp, -10);
	break;
	
	case AT_DAIR:
		//on the first hit, slightly influence the opponent's hsp so that it connects into the second hit easier.
		if (my_hitboxID.hbox_num <= 6 && hit_player_obj.state == PS_HITSTUN ) {
			hit_player_obj.old_hsp += clamp(old_hsp / 2, -3, 3); 
		}
	break;
	
	case AT_DSTRONG:
		if (hit_player_obj.state_cat != SC_HITSTUN) break;
		//'drag' the hit player if they are not standing on the same platform as epinel
		if (instance_exists(epinel_other_standing_on_platform_id)) {
			if (my_hitboxID.hbox_num <= 4) {
			
			
				if (hit_player_obj.epinel_other_standing_on_platform_id != epinel_other_standing_on_platform_id) {
					hit_player_obj.old_hsp += clamp(epinel_other_standing_on_platform_id.hsp * 1.25, -6, 6);
				}
			}
//add platform hitstop
				//if (epinel_other_standing_on_platform_id.vsp == 0 ) {
					//epinel_other_standing_on_platform_id.hitstop = ceil(hitstop);
					//epinel_other_standing_on_platform_id.old_hsp = epinel_other_standing_on_platform_id.hsp;
					//epinel_other_standing_on_platform_id.vsp = 0;
				//}

				
				
		}
		//push the player away from epinel's center
		if (my_hitboxID.hbox_num <= 1 || my_hitboxID.hbox_num >= 5) break;
		var player_x_distance = hit_player_obj.x - x;
		if (abs(player_x_distance) > 32) break;
		var push_distance = ceil(min(6, abs(player_x_distance))) * sign(player_x_distance);
		with (hit_player_obj) {
			if (!place_meeting(x + push_distance, y, asset_get("par_block"))) {
				x += push_distance;
			}
		}
			
	break;
	
	
	
	case AT_JAB:
		//if on a platform, drag the hit player with epinel.
		if (!instance_exists(epinel_other_standing_on_platform_id) || (hit_player_obj.state_cat != SC_HITSTUN && hit_player_obj.state != PS_HITSTUN_LAND) || epinel_other_standing_on_platform_id.hsp == 0) break;
		//don't drag if the opponent's standing on the same platform.
		if (hit_player_obj.epinel_other_standing_on_platform_id == epinel_other_standing_on_platform_id) break;
		hit_player_obj.old_hsp += clamp(epinel_other_standing_on_platform_id.hsp, -6, 6);
		//cap the platform's speed
		with (epinel_other_standing_on_platform_id) {
			hsp = clamp(hsp, -4, 4);
		}
		
		//add platform hitstop
		if (epinel_other_standing_on_platform_id.vsp == 0 ) {
			epinel_other_standing_on_platform_id.hitstop = ceil(hitstop);
			epinel_other_standing_on_platform_id.old_hsp = epinel_other_standing_on_platform_id.hsp;
		}
	break;
	
	
	
	case AT_DTILT:
		//drag the hit player with epinel.
		if (my_hitboxID.hbox_num <= 1) {
			hit_player_obj.old_hsp += old_hsp;
			hit_player_obj.old_hsp = min(-0.01, hit_player_obj.old_hsp);
			if (instance_exists(epinel_other_standing_on_platform_id) && hit_player_obj.epinel_other_standing_on_platform_id != epinel_other_standing_on_platform_id) {
				hit_player_obj.old_hsp += epinel_other_standing_on_platform_id.hsp * 0.5;
				//add platform hitstop
				if (epinel_other_standing_on_platform_id.vsp == 0 ) {
					epinel_other_standing_on_platform_id.hitstop = ceil(hitstop);
					epinel_other_standing_on_platform_id.old_hsp = epinel_other_standing_on_platform_id.hsp;
				}
			}
		}
	break;
	
	
	case AT_BAIR:
	case AT_DATTACK:
		
		
		//for dattack hitbox 5, hit the opponent through a platform if epinel is standing on one
		if (my_hitboxID.hbox_num == 6 && hit_player_obj.state_cat == SC_HITSTUN && hit_player_obj.hitpause && hitpause) {
			if (hit_player_obj.epinel_other_weightless_inflicted <= 3) {
				hit_player_obj.epinel_other_weightless_inflicted = 3;
			}
			//hitstop += 10;
			//hit_player_obj.hitstop += 10;
			/*
			if (epinel_other_standing_on_platform_id != noone
			 && instance_exists(epinel_other_standing_on_platform_id)) {
				with (epinel_other_standing_on_platform_id) {
					instant_destroy = true;
				}
			}
			*/
		}
		
		
		//don't do anything for hitbox 5 and beyond.
		if (my_hitboxID.hbox_num >= 5) { break; }
		
		//for hitbox 3 of b-air, disable the weightless effect.
		if (my_hitboxID.hbox_num == 3) {
			if (!runeM) { //don't disable for rune
				hit_player_obj.epinel_other_weightless_inflicted = false;
				hit_player_obj.epinel_other_weightless_timer = 0;
			}
			
			if (my_hitboxID.attack == AT_DATTACK && hit_player_obj.state_cat == SC_HITSTUN) {
				
				var is_standing_on_platform = (epinel_other_standing_on_platform_id != noone
							 && instance_exists(epinel_other_standing_on_platform_id));
				
				if (is_standing_on_platform) {
					with (epinel_other_standing_on_platform_id) {
						//stop crumbling
						crumble = max(crumble, 1.9);
						//stop moving
						hsp = 0;
					}
					//end hitpause early
					if (hitpause) hitstop = min(hitstop, 2);
					
				}
				
				if (my_hitboxID.hbox_num == 3) {
					sound_play(asset_get("sfx_kragg_roll_land"));
					sound_play(sound_get("smallexplosion"), 0, noone, 0.5, 1.4);
					//break platform if epinel is standing on one.
					if (epinel_grabbed_player_object_id == hit_player_obj && is_standing_on_platform) {
						hit_player_obj.hitstop = 7;
						hitstop += 6;
						my_hitboxID.hitbox_timer = 10; //destroy this hitbox for the next frame?
						set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 0);
						//sound_play(asset_get("sfx_kragg_roll_turn"));
						with (epinel_other_standing_on_platform_id) {
							crumble = 1.3; //min(crumble, 1.3);
							hp = min(hp, 0);
							break_when_not_stood_on = true;
						}
						hit_player_obj.should_make_shockwave = false;
					 }
				}
				
			}
			break;
		}		
		
		//only hitboxes 1 and 2 can grab. ignore this for hitbox 3.
		//this move can't grab armored opponents.
		if (hit_player_obj.super_armor == true
		    || hit_player_obj.soft_armor > get_hitbox_value( my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE )
			|| hit_player_obj.invincible == true
		    || (hit_player_obj.state != PS_HITSTUN && hit_player_obj.state != PS_HITSTUN_LAND)
			//|| hit_player_obj.state == PS_SPAWN
			//|| hit_player_obj.state == PS_RESPAWN) 
			) { break; }
		
		//otherwise, confirm that a grab connected.
		epinel_grab_connected = true;
		
		//if Epinel has already grabbed someone else, grab this new player only if their damage % is higher.
		if (scr_get_player_obj_id_with_highest_damage(hit_player_obj, epinel_grabbed_player_object_id) != hit_player_obj) { break; }
		
		epinel_grabbed_player_object_id = hit_player_obj;
		if (my_hitboxID.attack == AT_BAIR) {
			epinel_grabbed_player_x_offset = round((x - hit_player_obj.x) * 0.9 * spr_dir);
			epinel_grabbed_player_y_offset = round(y - hit_player_obj.y);// - (char_height + scr_get_player_height(hit_player_obj)) / 4 );
		}
		else {
			epinel_grabbed_player_x_offset = round(x - hit_player_obj.x);
			epinel_grabbed_player_y_offset = round(y - hit_player_obj.y);
			
			epinel_grabbed_player_suplex_distance = ceil( scr_get_player_width(hit_player_obj) / 2) + 4;
			
			//if on a platform, stop the platform from crumbling
			if instance_exists(epinel_other_standing_on_platform_id) {
				with (epinel_other_standing_on_platform_id) {
					crumble = max(crumble, 1.9);
				}
			}
			
			//if (hit_player_obj.hurtbox_spr <= 0) { epinel_grabbed_player_suplex_distance = 20; }
			//else { epinel_grabbed_player_suplex_distance = ceil(sprite_get_width(hit_player_obj.hurtbox_spr) / 2) + 4; }
		}
		
		//rune M exception check
		//if (runeM && my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2 && hit_player_obj.epinel_other_weightless_timer == 0) {
		//	hit_player_obj.epinel_other_weightless_vsp = 0;
		//	hit_player_obj.epinel_other_weightless_hsp = 0;
		//	hit_player_obj.epinel_other_weightless_timer = 10;
		//}
		
	break;
	
	/*
	case AT_FSPECIAL: //clamp speed on hit.
		old_hsp = clamp(old_hsp, -10, 10);
	break;
	
	case AT_FSPECIAL_AIR:
		old_hsp = clamp(old_hsp, -10, 10);
		old_vsp = clamp(old_vsp, -10, 10);
	break;
	*/

	
	case AT_DTILT:
		//spawn effect for 2nd hit.
		if (my_hitboxID.hbox_num == 3) { 
			spawn_hit_fx( x+40*spr_dir , y, epinel_fx_spike ).depth = depth - 1; 
		}
	break;
	
	case AT_UTILT:
		//rise on hit. scale with opponent launch height.
		if (old_vsp > -4.5) old_hsp *= 0.9;
		old_vsp = min(old_vsp, -4.5 + (hit_player_obj.old_vsp / 1.5)); //-9.5
		old_vsp = clamp(old_vsp, -15, -6.5);
		if (hit_player_obj.state_cat == SC_HITSTUN && epinel_grabbed_player_object_id == noone) {
			epinel_grabbed_player_object_id = hit_player_obj;
		}
		
	break;
	
	case AT_FTILT:
		//accelerate the move when the final hit makes contact.
		if (window == 4 && my_hitboxID.hbox_num == 5) { window_timer = get_window_value( AT_FTILT, 4, AG_WINDOW_LENGTH ) - 1; }
	break;
	
	case AT_USTRONG:
		//add more impact on the sweetspot
		if (my_hitboxID.hbox_num == 3 && hit_player_obj.hitstop >= 1) { 
			hit_player_obj.hitstop += 12;
			hitstop += 12;
			sound_play(asset_get("sfx_kragg_rock_shatter"));
			spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 305); //"sweetspot small"
		}
	break;
	
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num <= 2) {
			epinel_fspecial_hit_player = true; 
		}
	break;
	case AT_FSPECIAL_AIR:
		if (my_hitboxID.hbox_num <= 3) {
			epinel_fspecial_hit_player = true; 
		}
	break;	
	
	case AT_DSPECIAL: 
	
	
		switch (my_hitboxID.hbox_num) {
			case 1:
			case 2: //melee hit
				//if epinel is on top of a platform, give that platform hitpause too.
				if (epinel_other_standing_on_platform_id != noone 
				  && instance_exists(epinel_other_standing_on_platform_id) 
				  && epinel_other_standing_on_platform_id.vsp == 0 ) {
					epinel_other_standing_on_platform_id.hitstop = round(hitstop);
					epinel_other_standing_on_platform_id.old_hsp = epinel_other_standing_on_platform_id.hsp;
				}
				//shorten the hitbox's lifetime if in hitpause.
				if (hitpause) {
					my_hitboxID.length = 1;
				}
			break;
			
			//make falling platform projectiles reset opponent's state to pratfall if they hit too early.
			case 6:
				//sound_play(asset_get("sfx_troupple_swipe"));
				if (my_hitboxID.hitbox_timer <= 3 && (hit_player_obj.prev_state == PS_PRATFALL || hit_player_obj.prev_state == PS_PRATLAND) ) {
					with (hit_player_obj) {
						iasa_script();
						set_state(PS_PRATFALL);
						hitpause = false;
						hitstop = 0;
						hsp = 0;
						vsp = -1;
						old_vsp = 0;
						old_hsp = 0;
					}
				}
				old_hsp = clamp(old_hsp, -12, 12);
			break;
		}

	break;
	
	case AT_NSPECIAL:
		if (my_hitboxID.type == 2) break; //ignore Kragg rock shards (projectiles).
		if (my_hitboxID.hbox_num == 1 && window < 3) { //sweetspot
			window = 3; //skip to window 3
			window_timer = 0;
			invince_time = max(15, invince_time); //extra invincibility
			sound_play(asset_get("sfx_may_arc_cointoss"));
			spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 19);
			epinel_charge_timer = 1;
			if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
				old_hsp = -2.25 * spr_dir;
				if (free) old_vsp = -1;
			}
		}
		else if (my_hitboxID.hbox_num == 6 && activated_kill_effect) {
			sound_play(sound_get("slice"));
		}
		else {
			sound_play(sound_get("sharpen_edited_freesounds_nicktermer"));
		}
		//pull the player to epinel's height during multihits
		if (my_hitboxID.hbox_num <= 5 && hit_player_obj.state == PS_HITSTUN && hit_player_obj.hitpause) {
			hit_player_obj.x += round((my_hitboxID.x + spr_dir * 20 - hit_player_obj.x) * 0.25);
			hit_player_obj.y += round((my_hitboxID.y + 30 - hit_player_obj.y) * 0.25);
			
			scr_move_opponent_in_epinel_inertia_direction_if_currently_in_inertia();
			
			hit_player_obj.old_vsp += clamp((y - hit_player_obj.y) / 5, -5, 5);
			//if on a platform, slow it down
			if (instance_exists(epinel_other_standing_on_platform_id)) {
				with (epinel_other_standing_on_platform_id) hsp = clamp(hsp, -1, 1);

			}
		}
	break;
	
	
	case AT_DSPECIAL_AIR:
			
		
		//only hitbox 4 and 8 do the purple effect.
		hit_player_obj.should_make_shockwave = ( my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 8 );
		
		//only hitboxes 1, 2, 3 and 9 can grab.
		//this move can't grab armored opponents or clones, or characters in their spawn/respawn state. unlike b-air, it CAN grab soft-armored opponents.
		if ( (my_hitboxID.hbox_num > 3 && my_hitboxID.hbox_num != 9)
			|| hit_player_obj.super_armor == true 
			|| hit_player_obj.clone == true
			|| hit_player_obj.invincible == true
			|| (hit_player_obj.state != PS_HITSTUN && hit_player_obj.state != PS_HITSTUN_LAND)
			//|| hit_player_obj.state == PS_SPAWN
			//|| hit_player_obj.state == PS_RESPAWN) 
			) { 
				//for hitbox 6 (collide with platform, add hitpause.)
				if (my_hitboxID.hbox_num = 6) { 
					var new_hitstop = 29 - epinel_air_dspecial_platform_hits * 2;
					hitstop = new_hitstop;
					hit_player_obj.hitstop = new_hitstop; 
					
				}
				//for the rest, break.
				break; 
				
			}
		
		//otherwise, confirm that a grab connected.
		epinel_grab_connected = true;
		
		//restore epinel's double-jump if he lost it.
		djumps = 0;
		
		//shorten this hitbox's lifespan so it doesn't hit anyone next frame.
		my_hitboxID.length = 1;
		
		//change to a relevant attack window.
		window_timer = 0;
		
		//window = 12; //7;
		if (my_hitboxID.hbox_num == 3) { window = 12; }
		else { window = 7; }
		
		//scale escape time with percent
		var scaled_damage = get_player_damage( hit_player_obj.player ) * hit_player_obj.knockback_adj;
		
		epinel_grabbed_player_break_threshold = floor(scaled_damage * 3) + 35;
		//add bonus scaled by altitude
		epinel_grabbed_player_break_threshold += floor(clamp(500 - y, 0, 500) * (1 + scaled_damage / 100));
		//make sure the other player has to wiggle out for at least 50 pixels to escape.
		epinel_grabbed_player_break_threshold = max(epinel_grabbed_player_break_threshold, epinel_grabbed_player_break_points + 70); 
		
		//stop falling.
		vsp = min(vsp, 0);
		
		//stop the opponent falling, in case they get released from the grab later.
		hit_player_obj.old_vsp = min(0, old_vsp);
		
		//reset charge timer.
		epinel_charge_timer = 0;
		
		epinel_grabbed_player_object_id = hit_player_obj;
		epinel_grabbed_player_x_offset = 0;
		epinel_grabbed_player_y_offset = 0;
		
	break;
	
	case AT_USPECIAL:
		
		if (was_parried || hit_player_obj.invincible || hit_player_obj.state = PS_RESPAWN || (my_hitboxID.type == 1 && hit_player_obj.state_cat != SC_HITSTUN)) break;
		
		var hitbox_type = my_hitboxID.hbox_num;
		
		sound_play(sound_get("drop"));
		
		with (hit_player_obj) {
			//inflict weak inertia
			switch (hitbox_type) {
				case 1:
				epinel_other_weightless_inflicted = max(epinel_other_weightless_inflicted, 1);
				break;
				
				default:
				epinel_other_weightless_inflicted = max(epinel_other_weightless_inflicted, 3);
				break;
			}
			epinel_other_player_that_inflicted_weightless_id = other.id;
		
			if (state_cat == SC_HITSTUN) {
				hitstun += 15;
				if (!hitpause) vsp -= 1;
			}
		
			spawn_hit_fx(x, round(y - char_height/2), other.epinel_fx_inertia);
		}
	break;
	
}


//extend inertia rune
if (runeM && my_hitboxID.type == 1 && hit_player_obj.epinel_other_weightless_timer > 0 && hit_player_obj.hitpause) {
	spawn_hit_fx( floor((hit_player_obj.x + my_hitboxID.x) / 2), floor((hit_player_obj.y + my_hitboxID.y) / 2), epinel_fx_inertia_small);
	if (hit_player_obj.epinel_other_weightless_inflicted <= 2) { hit_player_obj.epinel_other_weightless_inflicted = 3; }
	sound_play(sound_get("sharpen_edited_freesounds_nicktermer"));
	if (free && hit_player_obj.old_vsp < 0) hit_player_obj.old_vsp *= 0.125;
	hit_player_obj.old_vsp += 1.5;
	hit_player_obj.old_hsp *= 0.25;
	hit_player_obj.hitstop += 2;
	//if (free && hit_player_obj.old_vsp < 0) hit_player_obj.old_vsp *= 0.5;
}


//regain uair jump when hitting a player.
epinel_uair_jump_counter = 0;



#define scr_spawn_attack_fx_slash_small
var fx_id = 0;
var fx_dir = 0;
var fx_offset_x = 0;
switch (my_hitboxID.attack) {
	case AT_JAB:
		fx_id = epinel_fx_slash_small;
		switch (my_hitboxID.hbox_num) {
			case 1: fx_dir = 300; break; 
			case 2: fx_dir = 0; break;
			default: fx_dir = 60; break; }
	break;
	case AT_FTILT:
		if (my_hitboxID.hbox_num <= 2) { fx_id = epinel_fx_slash_small; fx_dir = 0; }
	break;
	case AT_BAIR:
		if (my_hitboxID.hbox_num <= 2) {fx_id = epinel_fx_slash_small; fx_dir = 180; }
	break;
	case AT_UAIR:
		fx_id = epinel_fx_slash_small;
		switch (my_hitboxID.hbox_num) {
			case 1: fx_dir = 75; break; 
			default: fx_dir = 80; break; }
	break;
	case AT_NAIR:
		if (my_hitboxID.hbox_num == 3) {fx_id = epinel_fx_slash_small; fx_dir = 345; }
	break;
	case AT_DTILT:
		if (my_hitboxID.hbox_num <= 2) {fx_id = epinel_fx_slash_small; fx_dir = 280; }
	break;
	case AT_UTILT:
		fx_id = epinel_fx_slash_small; fx_dir = 120; 
	break;
	case AT_NSPECIAL:
		fx_offset_x = 16;
		switch (my_hitboxID.hbox_num) {
			case 6: fx_id = epinel_fx_narrowcross; break;
			case 4: 
			case 5:  fx_dir = 90 * spr_dir; 
			default: fx_id = epinel_fx_narrowcut; break;  }
	break;
	case AT_NAIR:
		if (my_hitboxID.hbox_num != 2) break;
	case AT_DAIR:
		fx_id = epinel_fx_slash_curve;
		fx_dir = round( point_direction(x, y - char_height/2, hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2) / 24) * 24;
	break;
	case AT_FAIR:
		switch (my_hitboxID.hbox_num) {
			case 2: 
			case 3: fx_offset_x = 16; fx_id = epinel_fx_narrowcut; fx_dir = 270 * spr_dir; break;
			case 1: fx_offset_x = 8; fx_id = epinel_fx_bigslash; break;
			default: 
				fx_id = epinel_fx_slash_curve; 
				fx_dir = round( point_direction(x, y - char_height/2, hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2) / 24) * 24;
			break;  
		}
		
	break;
	case AT_FSTRONG:
		if (my_hitboxID.hbox_num == 1) fx_id = epinel_fx_bigslash;
		else {fx_id = epinel_fx_narrowcut; fx_dir = 270 * spr_dir; }
	break;
	
	case AT_DSTRONG:
		switch (my_hitboxID.hbox_num) {
			case 1: fx_id = epinel_fx_slash_curve; fx_dir = 45; break; 
			case 2: fx_id = epinel_fx_slash_curve; fx_dir = round( point_direction(x, y - char_height/2, hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2) / 24) * 24; break;
			default: fx_id = epinel_fx_slash_small; fx_dir = (state_timer * 40) mod 360 + 5; break; }
	break;
	
	case AT_USTRONG:
		fx_dir += 90 * spr_dir; fx_id = epinel_fx_bigspear; break;
	
	case AT_FSPECIAL_AIR:
		if (my_hitboxID.hbox_num > 3 && !runeH) break; 
		fx_id = epinel_fx_bigspear; fx_dir -= 45 * spr_dir; break;
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num > 2 && !runeH) break; 
		fx_id = epinel_fx_bigspear; break;
}
if (fx_id == 0) exit;

var newfx = spawn_hit_fx( round((my_hitboxID.x + hit_player_obj.x * 2) / 3) + fx_offset_x * spr_dir, round((my_hitboxID.y + (hit_player_obj.y * 2 - hit_player_obj.char_height)) / 3), fx_id );
//if (fx_id != epinel_fx_bigslash) 
newfx.depth = depth-1; 
newfx.draw_angle = fx_dir;

if (fx_id == epinel_fx_slash_small) { newfx.spr_dir = 1; newfx.draw_angle = 180 - fx_dir; }
else if (fx_id == epinel_fx_slash_curve) { newfx.spr_dir = 1;  }

else { if (my_hitboxID.hbox_num >= 4 && my_hitboxID.hbox_num <= 5) newfx.x += spr_dir * 16; }

return;

#define scr_get_player_obj_id_with_highest_damage
epinel_grabbed_player_object_id = noone;
instance_exists(id);
return argument[0];
//rule out one of the players if they don't exist
if ( argument[0] < 0 || !instance_exists(argument[0]) ) {
	if ( argument[1] < 0 || !instance_exists(argument[1]) ) return noone;
	else { return argument[1]; }
}
else if (argument[1] < 0 || !instance_exists(argument[1])) { return argument[0]; }

//sort by health first
var tempvar_hp0 = get_player_damage(argument[0].player);
var tempvar_hp1 = get_player_damage(argument[1].player);

if (tempvar_hp0 > tempvar_hp1) return argument[0];
if (tempvar_hp0 < tempvar_hp1) return argument[1];

//then sort by distance
var tempvar_dist0 = point_distance(x, y, argument[0].x, argument[0].y);
var tempvar_dist1 = point_distance(x, y, argument[1].x, argument[1].y);

if (tempvar_dist0 > tempvar_dist1) return argument[0];
if (tempvar_dist0 < tempvar_dist1) return argument[1];

//tiebreaker: just return the first player.
return argument[0];

#define scr_move_opponent_in_epinel_inertia_direction_if_currently_in_inertia
if (epinel_other_weightless_timer <= 0) return;
hit_player_obj.x += round(clamp(epinel_other_weightless_hsp * 3, -10, 10));
hit_player_obj.y += round(clamp(epinel_other_weightless_vsp * 3, -10, 10));


return;

#define scr_get_player_width
return (argument[0].hurtboxID.bbox_right - argument[0].hurtboxID.bbox_left);

#define scr_get_player_height
return (argument[0].hurtboxID.bbox_bottom - argument[0].hurtboxID.bbox_top);