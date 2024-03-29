// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

// removes nametag during respective moves

if (attack == AT_UAIR || attack == AT_USTRONG || attack == AT_UTILT) {

		//draw_indicator = false;
		//char_height = 110;

}


// jab handler
if(attack == AT_JAB){

	// funny new rivals one hit jab universal patch
	// starting past the third frame of endlag you can cancel into tilts
	// (on whiff)
	// also, you can't turn around and do it.
	if (window == 1) {
		// reset button
		set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 0);
	}
	if !(has_hit) {
		if (window == 3) {
			set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
		}
	}
	
}



// for abyss rune M meter
// when meter is active, make aerials jump and attack cancellable
if (gimmick_activated == true) {
	if (hype_active == true) {
		if (attack == AT_DAIR || attack == AT_BAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_NAIR) {
			if (window > 2) {
				can_jump = true;
				can_attack = true;
			}
		}
	}
}

// down taunt interrupt
if (attack == AT_EXTRA_2) {
	
	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && window == 2) {
		if (attack_pressed || shield_pressed || taunt_pressed || special_pressed || jump_pressed) {
			window = 3;
			window_timer = 0;
		}
		
	}

}

// nspecial action handler
if (attack == AT_NSPECIAL){
	
	// stores ammo variable
	if (window == 1) {
		oldammo = ammo;
	}
	
	// jump cancellable
	if (window > 1) {
		can_jump = true;
	}

	// Take away ammo every time nspecial is fired
    if (window == 4 && ammo > 0){
		// keep firing if button is held down
        if (special_down){
            window = 2;
            window_timer = 0;
        }

		
		// reduces ammo when Abyss Rune D isn't active
		if (runeD == false) {
			
			// only takes ammo on the first frame of the firing window instead of all of them
			// (stops using more ammo when tap firing bug)
			if (window_timer == 0) {
				ammo = ammo - 1;
			}
		}
    }
	
	// failsafe for tap firing ammo 
	// since it never loops to window_timer 0
	if (window == 5 && ammo == oldammo) {
		
		if (runeD == false) {
			ammo = ammo - 1;
		}
	}
	
	// gun knockback. only pushes the user in the air
	if (window == 3 && window_timer == 1 && free) {
		if (spr_dir == -1) {
			hsp = hsp + 1;
		}
		else if (spr_dir == 1) {
			hsp = hsp - 1;
		}
	}

	// no fastfall for neutral special since you can aim it
	if (window == 1 || window == 2 || window == 3){
		can_fast_fall = false;
	}
	else if (window >= 4){
		can_fast_fall = true;
	}
	
	// smg alt fire that fires a bomb (abyss rune)
	if (runeN) {
		if (shield_down && window >= 1 ) {
			if (move_cooldown[AT_DSTRONG_2] <= 0) {
				if (bomb_ammo > 0) {
					attack = AT_DSTRONG_2;
					window = 0;
					window_timer = 0;
					
					if (!runeD) {
						bomb_ammo = bomb_ammo - 1;
					}
				}			
			}
		}
	}
	
	// reload if attack button is pressed
	if (attack_down) {
		if (window < 5) {
			window = 0;
			window_timer = 0;
			attack = AT_TAUNT_2;
			set_attack(AT_TAUNT_2);

		}
	}
	
	// checks for nspecial_active tag
	if (window == 1){
		nspecial_active = true;
	}
	if (window == 5){
		nspecial_active = false;
		if (ammo == 0) {
			if (window_timer == 1) {
				// plays sound when no ammo
				sound_play(asset_get("sfx_mol_flare_ready"));
			}
		}
	}
	
	// changes sprite and projectile during neutral special depending on joystick orientation
	if (up_down){
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 29);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_up"));
		//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_up"));
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_up"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_up_air"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 24);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -16);
	}
	else if (down_down){
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 10);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 29);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_down"));
		//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_down"));
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_down"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_down_air"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 24);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -16);
	}
	else {
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 30);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
		//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 24);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -16);
	}
	
	// ammo meter does not go below 0
	if (ammo < 0){
		ammo = 0;
	}
}


// WARNING: SPAGHETTI CODE AHEAD
// action handler for fspecial
if (attack == AT_FSPECIAL){

	// handles fast falling during fspecial
	if (window == 1 || window == 2 || window == 3){  // can't fast fall during fspecial window 1-3
		can_fast_fall = false;
		has_run_check = false; // this check is used so that the code that makes fspecial go to window 4 on hit works
	}
	else if (window >= 4){ 	// can fast fall during or after window 4
		can_fast_fall = true;
	}

	// when fspecial hits a player
    if (has_hit == true || can_attack == true){
		
		// immediately switch to window 4
		window = 4;	
		
		// sakk wanted this
		// jump/attack cancel
		if (hitpause == false) {
			can_attack = true;
			can_jump = true;
		}
		
		// prevent lingering hitboxes
		destroy_hitboxes();
		
		// window_timer has run check handler
		if(has_run_check == false){
			window_timer = 0;	
			has_run_check = true;
		}
	}

	// if the move hasn't hit a player by window 4 and it's in the air, set a cooldown
	if (window == 4 && free == true && has_hit == false) {
		move_cooldown[attack] = 1000;
	}
	
	// cancel fspecial with walljump after/during window 3
	if (window >= 3) {
		can_wall_jump = true;
	}

	// reset double jumps upon hit
	if (has_hit == true) {
		djumps = 0;
	}
}

// dair timer (needed for dair's "bounce" to work)
if (dair_timer > 0 && hitpause == false) {
	dair_timer = dair_timer - 1;
}

// WARNING: SPAGHETTI CODE AHEAD
// dair bounce
if (attack == AT_DAIR){
	
	// check handler
	if (window == 1){
		//can_fast_fall = false;
		has_run_check = false;
	}
	else if (window >= 3){
		can_fast_fall = true;
	}
	
	// action handler for when down air hits a player
    if (has_hit == true){
		
		if(hitpause == false){
			// instantly switch to the last window
			if (!runeH) {
				window = 4;
				//window_timer = 10;
				
			}
			else {
				window = 3;
			}
			destroy_hitboxes();	// prevent lingering hitboxes	 
		}
		
		// change vertical speed to up
		if(dair_timer > 0 && hitpause == false){
			vsp = -8;
		}

		// window_timer has run check handler
		if(has_run_check == false){
			window_timer = 0;
			dair_timer = 2;	
			has_run_check = true;
		}
					
		
		// busted but fun
		//can_attack = true;
	}
	

	
	// cancel dair with jump or shield in certain windows
	/*
	if ((window == 3 || window == 4 || window == 5) && has_hit == false && was_parried == false){
		//can_jump = true;
		//can_shield = true;
	}
	*/

}


if (attack == AT_USPECIAL){

	// cancel uspecial with walljump anytime
	if (window > 2) {
		can_wall_jump = true;
	}
		
	if (window == 2) {
		if (window_timer == 5 && hitpause == false && !free) {
			spawn_dust_fx( x, y-2, sprite_get("uspecial_dust"), 10 );
			
		}
		
	}
	
	if (window == 4) {
		
		if (has_hit || runeC) {
			// "autocancel"
			if (window_timer == 3) {
				window_timer = 18;
			}
		}
		
		if (window_timer == 3) {
			spawn_dust_fx( x-(4*spr_dir), y, sprite_get("uspecial_effect"), 16 );
		}
		
		if (window_timer == 7) {
			spawn_dust_fx( x-(4*spr_dir), y, sprite_get("uspecial_effect"), 16 );
			
		}

	}
	
	if (window == 3) {
		if (window_timer == 2) {
			spawn_dust_fx( x-(21*spr_dir), y-16, sprite_get("uspecial_aftersmear"), 10 );
		}
	}
	
	/*
	if (window == 3) {

		sound_stop(sound_get("tau_charge"));
		sound_stop(sound_get("tau_charge_quick"));
	}
	*/
	
	if (window < 4) {
		can_fast_fall = false;
	}
	else if (window >= 4) {
		can_fast_fall = true;
	}
	
	// move cooldown for up special, should not be active again until landing
	move_cooldown[attack] = 10000;	

	// up special cancel 
	// puts user into freefall
	if (window == 2) && (shield_pressed || shield_down) {
		
		vsp = -uspec_cancel_vsp;
		
		// what this code means is, if you're holding a direction, you will be sent that direction.
		// otherwise, you get sent whichever direction you were facing
		// if you cancel up special fast enough, you can keep your momentum
		if (left_down) {
			hsp = -uspec_cancel_hsp + hsp;
		}
		else if (right_down) {
			hsp = uspec_cancel_hsp + hsp;
		}
		else {
			if (spr_dir == -1) {
				hsp = -uspec_cancel_hsp + hsp;
			}
			else if (spr_dir == 1) {
				hsp = uspec_cancel_hsp + hsp;
			}
		}
		
		// self damage. idea for nerfing this if it comes to that
		//take_damage(player,1,5);
		// other ways to nerf:
		// more prat_land_time
		// make the trigger later so there's no boost
		// remove preservation of hsp or added hsp
		
		sound_stop(sound_get("tau_charge"));
		sound_stop(sound_get("tau_charge_quick"));
		spawn_hit_fx(x, y, 20);
		sound_play(sound_uspecial_misfire);
		
		can_fast_fall = true;
		if (!runeC) {
			set_state( PS_PRATFALL );
		}
		else {
			set_state( PS_IDLE_AIR );
			// found this by chance in the manual. bless u whoever added it
			clear_button_buffer( PC_SHIELD_PRESSED );
		}

	}
	
	if (has_hit) {
		set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
	}
	else {
		if (!runeC) {
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
		}
	}

}

// fx for fstrong
if (attack == AT_FSTRONG) {
	
	//if ( place_meeting(x+(50*spr_dir), y+1, asset_get("par_block")) || place_meeting(x+(50*spr_dir), y+1, asset_get("par_jumpthrough")) ){}


	if (window == 3) {
		if (window_timer = 3) {
			spawn_dust_fx( x+(25*spr_dir), y-52, sprite_get("fstrong_effect"), 10 );
			//sound_play(sound_get("crowbar_hit2"));
			sound_play(sound_fstrong_hitfloor, false, noone, sound_fstrong_hitfloor_volume, 1);
		}
	}
}

// if the attack button and joystick up is pressed or held
// during dash attack on window 3, do second part of attack
if(attack==AT_DATTACK){
	
	can_fast_fall = false;
	
	if (window == 1) {
		
		should_dattack2 = true;
	}
	
	if (((window == 3 && attack_pressed) || (window == 3 && attack_down)) && up_down && should_dattack2 ){
		if (window_timer < 10){
			attack = AT_UTHROW;
			window = 0;
			window_timer = 0;
		}
	}
}

// disable fastfall for second part of dash attack
if (attack == AT_UTHROW){
	can_fast_fall = false;	
}

// action handler for smg bomb
if (attack == AT_DSTRONG_2) {
	move_cooldown[attack] = 100;
	if (window == 1 && window_timer > 5){
		can_jump = true; // jump cancel
	}
}

// action handler for smg reload
if (attack == AT_TAUNT_2) {
	if (window == 1) {
		
		// "tech"
		if (window_timer == 1) {
			vsp = 0;
		}
		
		// display ammo bar
		nspecial_active = true;
		
		// refill ammo when reloading "attack" is used
		if (window_timer == 20) {
			ammo = maxammo;
		}
		
		// jump cancel
		if (window_timer > 20) {
			can_jump = true;
		}
	}
}

// handles nametag and (abyss rune only) cooldown during taunt
if (attack == AT_TAUNT) {
	
	// toggle viewable boot data in practice
	if (practice) {
		if (window == 1 && window_timer == 1) {
			if (shield_pressed || shield_down) {
				if (boot_data == 0) {
					boot_data = 1;
				}
				else if (boot_data == 1) {
					boot_data = 0;
				}
			}
		}
	}
	
	if (window == 1) {
		char_height = 72;	
	}
	
	// tag down
	if (window == 2) {
		char_height = 52;
		// abyss rune
		if (runeF == true) {
			if (!hype_active) {
				prat_land_time = 200;
				if (!has_hit) {
					set_state( PS_PRATFALL );
				}
			}
		}
	}
	
	if (taunt_down) {
		if (window == 2 && window_timer > 0) {
			window_timer = 0;
		}
	}
}

// boot delete animation (technically an attack)
if (attack == AT_USTRONG_2) {
	
	//can_fast_fall = false;
	
	// tag up
	if (window == 1) {
		char_height = 72;	
	}
	
	// tag down
	if (window == 5) {
		char_height = 52;
	}
	
	// boot delete
	if (window == 5) {
		with (asset_get("pHitBox")) {
			if (attack == AT_DSPECIAL && player_id.url == (2144710708)) {
				if (player_id == other) {
					destroyed = true;
				}
			}
		}
	}

}

// action handler for dspecial2
// abyss rune move that lets you manually move the boot
// (use dspecial while boot is active)
if (attack == AT_NSPECIAL_AIR) {
	
	can_jump = true;
	can_shield = true;
	can_attack = true;
	//can_special = true;
	can_fast_fall = false;
	can_strong = true;
	can_ustrong = true;
	
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		if (window == 1) {
			with (asset_get("pHitBox")) {
				if (attack == AT_DSPECIAL && player_id.url == (2144710708)) {
					if (player_id == other) {
						
						// hold the boot in place if it isn't being dragged anywhere
						vsp = 0;
						hsp = 0;
						
						// prevent dragging the boot so high it lags the game
						if (y < -100) {
							y = -99;	
						}
						
						if (player_id.special_down) && (!player_id.strong_down) {
							if (player_id.window_timer > 9) {
								player_id.window_timer = 0;
								spawn_hit_fx(other.x, other.y-25, 301); // fx spawns on owen while boot is being moved
							}
							// moves boot direction inputted
							if (player_id.up_down) {
								vsp = -5;
							}
							
							if (player_id.down_down) {
								vsp = 5;
							}
							
							if (player_id.left_down) {
								hsp = -5;
							}
							
							if (player_id.right_down) {
								hsp = 5;
							}
						}
					}
				}
			}
		}
	}
}

// back air
if (attack == AT_BAIR){
	
	// turn around when the hitbox for bair comes out
	if (window == 2 && window_timer == 6) {
		spr_dir = -spr_dir;
	}

}

// dacus
if (attack == AT_DATTACK) {
	if (up_strong_down || up_strong_pressed) {
		if (window == 1 && window_timer < 5) {
			window = 0;
			window_timer = 0;
			attack = AT_USTRONG;
			set_attack(AT_USTRONG);
		}
	}
}

// deathbox for super
if (attack == AT_DSPECIAL_2) {
	if (window == 3 && has_hit_player) {
		create_deathbox(
			has_hit_id.x, // x
			has_hit_id.y, // y
			100, // w
			100, // h
			has_hit_id.player, // player
			true, // free
			1, // shape
			3, // lifespan
			2 // bg_type
		);
	}
}

// additional sfx for dspecial
if (no_copyright == true) {
	if (attack == AT_DSPECIAL) {
		if (window == 1 && window_timer == 11) {
			sound_play(asset_get("sfx_mol_flare_ready"));
		}
	}
}


