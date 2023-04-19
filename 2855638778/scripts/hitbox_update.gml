
// when a rocket hits the floor, a player, or a wall, it creates an explosion and then disappears.
if (attack == AT_FSPECIAL) {
	
	// plays rocket launch sound on the rocket, instead of soldier
	if (hitbox_timer == 1) {
		sound_play(remotesound2, false, noone, 1, 1);	
	}
	
	if (!free) || (has_hit) || (place_meeting(x, y, asset_get("par_block"))){
		spawn_hit_fx(x, y, 143);
		create_hitbox( 49, 1, x, y);
		//create_hitbox( 50, 1, x, y);
		sound_stop(remotesound);
		sound_play(remotesound, false, noone, 0.8, 1);	
		destroyed = true;
	}
}
if (attack == AT_DSTRONG) {
	
	// plays rocket launch sound on the rocket, instead of soldier
	if (hitbox_timer == 1) {
		sound_play(remotesound2, false, noone, 1, 1);	
	}

	if (!free) || vsp == 0 || (has_hit) || (place_meeting(x, y, asset_get("par_block"))){
		//move_cooldown[AT_DSTRONG] = 200;
		spawn_hit_fx(x, y, 143);
		//create_hitbox( 51, 1, x, y);
		sound_stop(remotesound);
		//sound_stop(remotesound);
		create_hitbox( 50, 1, x, y);
		sound_play(remotesound, false, noone, 0.8, 1);	
		destroyed = true;
	}
}

// handles the player getting caught in the blast of their rocket's explosion
// activates the rocket cancel variable,
// makes you take 4 damage,
// resets your double jump and wall jump.
// calculates the knockback the explosion will inflict on you and applies it
// sets your blastjumping state to true
// some other stuff i probably forgot
// shoutouts to Deor's SSL Mech, this code is basically an expanded interpretation of that mechanic.
if (attack == 50 || attack == AT_EXTRA_1) {
	
	if(player_id.hitpause == false && place_meeting(x, y, player_id)) {
		with(player_id) {
			if (!was_parried) {
			if (!invince_time) {
				if (!runeA) {
					take_damage(player, player, 4);
				}
			}
			
				hitpause = true;
				hitstop_full = get_hitstop_formula(get_player_damage(player), 4, 6, 0, 0);
				hitstop = hitstop_full;
				
				has_walljump = true;
				
				var dir_to_player = sign(x - other.x);
				var hspboost = 0;
				
				//orig_knock = get_kb_formula(get_player_damage(player), 0.95, 1, 4, 13, 0.05);
				orig_knock = get_kb_formula(get_player_damage(player), 0.95, 1, 4, 13, 0.00);

				old_hsp = hsp + lengthdir_x(orig_knock, 90) * dir_to_player + hspboost;
				old_vsp = lengthdir_y(orig_knock, 90);
				
				if !(runeJ) {
					set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
					set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 0);
				}
				
				rocket_cancel = true;
				//para_should_undeploy = true;
				blastjumping = true;
				djumps = 0;
				
				// fix for bug where if you're just standing there as a rocket hits you, no blastjump state
				if (state_cat == SC_GROUND_NEUTRAL || state == PS_LAND || state == PS_ATTACK_GROUND || state == PS_DASH_START || state == PS_PRATLAND || state == PS_WALK_TURN) {
					y = y - 2;
					
					//state = PS_IDLE_AIR;
					//sound_play(asset_get("sfx_war_horn"), false, noone, 0.8, 1);	
					hsp = hsp + lengthdir_x(orig_knock, 90) * dir_to_player + hspboost;
					vsp = lengthdir_y(orig_knock, 90);
					blastjumping = true;
				}
			}
		}
	}
	//can_hit_self = true;
}
if (attack == 49) {
	if(player_id.hitpause == false && place_meeting(x, y, player_id)) {
		with(player_id) {
			if (!was_parried) {
			if (!invince_time) {
				if (!runeA) {
					take_damage(player, player, 4);
				}
			}
			
			
			
				hitpause = true;
				hitstop_full = get_hitstop_formula(get_player_damage(player), 4, 6, 0, 0);
				hitstop = hitstop_full;
				
				has_walljump = true;
				
				var dir_to_player = sign(x - other.x);
				
				//orig_knock = get_kb_formula(get_player_damage(player), 0.95, 1, 4, 12, 0.05);
				orig_knock = get_kb_formula(get_player_damage(player), 0.95, 1, 4, 12, 0.00);
				old_hsp = hsp + lengthdir_x(orig_knock, 35) * dir_to_player;
				old_vsp = lengthdir_y(orig_knock, 35);
				
				if !(runeJ) {
					set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
					set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 0);
				}
				
				rocket_cancel = true;
				//para_should_undeploy = true;
				blastjumping = true;
				djumps = 0;
				
				// fix for bug where if you're just standing there as a rocket hits you, no blastjump state
				if (state_cat == SC_GROUND_NEUTRAL || state == PS_LAND || state == PS_ATTACK_GROUND || state == PS_DASH_START || state == PS_PRATLAND || state == PS_WALK_TURN) {
					y = y - 2;
					//state = PS_IDLE_AIR;
					//sound_play(asset_get("sfx_war_horn"), false, noone, 0.8, 1);	
					hsp = hsp + lengthdir_x(orig_knock, 35) * dir_to_player;
					vsp = lengthdir_y(orig_knock, 35);
					blastjumping = true;
				}
			}
		}
	}
}

// aesthetic functions 
// (rocket smoke)
if (attack == AT_FSPECIAL) {
	//var dspec_image = get_gameplay_time() / 6;
	
	if (get_gameplay_time() % 7 == 0) {
		spawn_hit_fx(x+(-spr_dir*12), y+4, 144);	
	}
}
if (attack == AT_DSTRONG) {
	if (get_gameplay_time() % 7 == 0) {
		spawn_hit_fx(x, y+4, 144);	
	}
}

// aesthetic functions 
// (rocket smoke)

if (attack == AT_FSPECIAL) {
	if (get_gameplay_time() % 7 == 0) {
		spawn_hit_fx(x+(-spr_dir*12), y+4, 144);	
	}
	if (player_id.runeN) {
		if (hitbox_timer > 5 && hitbox_timer < 60) {
			if (hitbox_timer % 7 == 0) {
				spawn_hit_fx(x, y, 143);
				create_hitbox( 49, 1, x, y);
				//create_hitbox( 50, 1, x, y);
				sound_stop(remotesound);
				sound_play(remotesound, false, noone, 0.7, 1);	
			}	
		}
	}
}
if (attack == AT_DSTRONG) {
	if (get_gameplay_time() % 7 == 0) {
		spawn_hit_fx(x, y+4, 144);	
	}
	if (player_id.runeN) {
		if (hitbox_timer > 5 && hitbox_timer < 60) {
			if (hitbox_timer % 7 == 0) {
				spawn_hit_fx(x, y, 143);
				create_hitbox( 50, 1, x, y);
				//create_hitbox( 50, 1, x, y);
				sound_stop(remotesound);
				sound_play(remotesound, false, noone, 0.7, 1);	
			}	
		}
	}
}


