//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// reload again if you push the special button during the reload
// does not do this if you push a directional special (e.g. up special)
if (attack == AT_NSPECIAL){
	if (rockets_clip < rockets_clip_max) {
		if (window == 3){
			if(window_timer >= 6) {
				if (special_pressed){
					if (!left_down && !right_down && !up_down && !down_down) {
						window = 1;
						window_timer = 0;
					}
				}
			}
		}
	}
}

// removes a rocket from the clip when it is fired.
if (attack == AT_FSPECIAL) {
	if (window == 1 && window_timer == 9) { // bizzarely, this is how you get the very first frame of window 2.
		if (hitpause == false) {
			rockets_clip--;
		}
	}
	
}
if (attack == AT_DSTRONG) {
	if (window == 1 && window_timer == 9) {
		if (hitpause == false) {
			rockets_clip--;
		}
	}
	
}

// adds a rocket to the clip at a certain point in nspecial
// an abyss rune is here too that increases reload speed
if (attack == AT_NSPECIAL) {
	if (window == 1 && window_timer == 9) || (runeG && (window == 1 && window_timer == 3)) {
		if (hitpause == false) {
			rockets_clip++;
		}
	}
	
}

// handles buff activation
if (attack == AT_DSPECIAL) {
	
	// if you get slapped after the move begins but before buff activates, you will be left at almost full meter
	if (window == 1 && window_timer == 1) {
		buff_current = round(buff_current / 1.2);
	}
	
	// buff activates this frame
	if (window == 3 && window_timer == 14) {
		buff_active = true;
	}
	
}

// handles uspecial cooldown
if (attack == AT_USPECIAL) {
	
	// uspecial cooldown triggers here
	if (window == 3 && window_timer == 4 && free) {
		para_active = true;
		move_cooldown[AT_USPECIAL] = 9999;	
	}
	
	// walljump cancel
	if (window > 3) {
		can_wall_jump = true;
	}
	
	if (window == 2) {
		if (vsp > 0) {
			vsp = 0;
		}
	}
}

// if you're in practice mode and taunt, you instantly get full buff banner.
if (attack == AT_TAUNT || attack == AT_TAUNT_2) {
	if (get_match_setting(SET_PRACTICE)) {
		buff_current = buff_max;
	}
}

// dtilt cancel into strongs on hit
// was considering other cancels
if (attack == AT_DTILT) {
	if (!runeH) {
		if (has_hit == true) {
			//can_jump = true;
			//can_attack = true;
			can_strong = true;
			can_ustrong = true;
			//can_up_strong = true;
		}
	}
	else {
		if (has_hit == true) { // abyss rune: dtilt cancels into anything
			can_jump = true;
			can_attack = true;
			can_strong = true;
			can_ustrong = true;
			can_up_strong = true;
			can_special = true;
			can_shield = true;
		}
	}
}

// handles general fspecial things
if (attack == AT_FSPECIAL) {
	
	// the "rocket cancel".
	// upon hitting yourself with an explosion, and after a certain point
	// you cancel into a jump or any attack.
	if (rocket_cancel == true) {
		if (window == 3) {
			if (window_timer > 3) { // not sure how necessary it is to wait 3 frames
				can_jump = true;
				can_strong = true;
				can_attack = true;
				can_special = true;
			}
		}
	}
	
	// mainly to prevent fastfalling into the blast zone while trying to aim down
	can_fast_fall = false;
	
	// fspecial changes depending on whether you aim up, down, straight.
	if (window == 1) {
		
		// resets variable incase it was still on
		rocket_cancel = false;
		
		if (up_down) {
			rj_anim_pos = 2; // variable used for blastjump state anim
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -5);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj_up"));
			//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_up"));
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_up"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_up_air"));
		}
		else if (down_down) {
			rj_anim_pos = 1;
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 10);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj_down"));
			//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_down"));
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_down"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_down_air"));
		}
		else {
			rj_anim_pos = 0;
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
			//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
			set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
		}
	}
}

// handles most dstrong things
// very similar to fspecial
if (attack == AT_DSTRONG) {
	
	// mainly to prevent fastfalling into the blast zone while trying to aim down
	can_fast_fall = false;
	
	// the "rocket cancel".
	// upon hitting yourself with an explosion, and after a certain point
	// you cancel into a jump or any attack.
	if (rocket_cancel == true) {
		if (window == 3) {
			if (window_timer > 3) {
				can_jump = true;
				can_strong = true;
				can_attack = true;
				can_special = true;
			}
			
			// something added during beta period.
			// upon blast jumping with dstrong, there is now a 5 frame cooldown before you can cancel it into itself
			if (window_timer == 4) {
				move_cooldown[AT_DSTRONG] = 5;
			}
		}
	}
	
	// dstrong changes depending on whether you aim left, right, straight.
	// also has to account for if you're backwards, unlike fspecial.
	if (window == 1) {
		
		// resets variable incase it was still on
		rocket_cancel = false;
		
		if (spr_dir == 1) {
			if (left_down) {
				rj_dstrong_anim_pos = 2;
				rocket_dstrong_boost_direction = 1;
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED, 10);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, -5);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj_left"));
				//set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_up"));
				set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_left"));
				set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("dstrong_left_air"));
				set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -10);
				//spr_dir = 1;
			}
			else if (right_down) {
				rj_dstrong_anim_pos = 1;
				rocket_dstrong_boost_direction = -1;
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED, 10);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 5);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj_right"));
				//set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_down"));
				set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_right"));
				set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("dstrong_right_air"));
				set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 10);
				//spr_dir = -1;
			}
			else {
				rj_dstrong_anim_pos = 0;
				rocket_dstrong_boost_direction = 0;
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED, 10);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 0);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj"));
				//set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
				set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
				set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("dstrong_air"));
				set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
				//spr_dir = -1;
			}
		}
		else if (spr_dir == -1) {
			if (right_down) {
				rocket_dstrong_boost_direction = -1;
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED, 10);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, -5);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj_left"));
				//set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_up"));
				set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_left"));
				//set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("nspecial_up_air"));
				set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -10);
				//spr_dir = 1;
			}
			else if (left_down) {
				rocket_dstrong_boost_direction = 1;
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED, 10);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 5);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj_right"));
				//set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_down"));
				set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_right"));
				//set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("nspecial_down_air"));
				set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 10);
				//spr_dir = -1;
			}
			else {
				rocket_dstrong_boost_direction = 0;
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED, 10);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 0);
				set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dstrong_proj"));
				//set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
				set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
				//set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("nspecial_air"));
				set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
				//spr_dir = -1;
			}
		}
	}
	
	
}

// handles rocket jump bair explosion
if (attack == AT_BAIR) {
	
	if (has_hit) {
		if (rocket_cancel == true) {
			if (window == 3) {
				if (window_timer > 3) { // not sure how necessary it is to wait 3 frames
					can_jump = true;
					can_strong = true;
					can_attack = true;
					can_special = true;
					
				}
			}
		}
	}
	
	// resets variables
	if (window == 1) {
		rocket_cancel = false;
		grenade_explode = 0;
		set_attack_value(AT_BAIR, AG_CATEGORY, 1);
	}
	
	// variable turns on upon RJ bair hitting
	if (has_hit) {
		if (hitpause == false) {
			grenade_explode++;
			can_fast_fall = false; // late addition lol. might remove if players want to fastfall during this
		}
	}
	
	// spawns hit fx, creates "explosion_bair.gml" hitbox, plays sound near location where bair hit
	if (grenade_explode == 1) {
		if (hitpause == false) {
			if (blastjumping) {
				vsp = -0.1;
				set_attack_value(AT_BAIR, AG_CATEGORY, 2);
				spawn_hit_fx(x-(spr_dir * 50), y-40, 143);
				//create_hitbox( 51, 1, x, y);
				create_hitbox( AT_EXTRA_1, 1, x-(spr_dir * 50), y-40);
				sound_stop(explosion_sound);
				sound_play(explosion_sound, false, noone, 0.9, 1);
	
			}
		}
	}
}

// handles rocket jump ustrong explosion
// similar to bair
if (attack == AT_USTRONG) {
	
	if (has_hit) {
		if (rocket_cancel == true) {
			if (window == 4) {
				if (window_timer > 3) { // not sure how necessary it is to wait 3 frames
					can_jump = true;
					can_strong = true;
					can_attack = true;
					can_special = true;
					can_fast_fall = false; // late addition lol. might remove if players want to fastfall during this
				}
			}
		}
	}
	
	// resets variables
	if (window == 1) {
		rocket_cancel = false;
		grenade_explode = 0;
	}
	
	// variable turns on upon RJ ustrong hitting
	if (has_hit) {
		if (hitpause == false) {
			grenade_explode++;
			can_fast_fall = false; // late addition lol. might remove if players want to fastfall during this
		}
	}
	
	// spawns hit fx, creates "explosion.gml" hitbox, plays sound near location where ustrong hit
	// this hitbox is not actually meant to hit, unlike bair.
	if (grenade_explode == 1) {
		if (hitpause == false) {
			if (blastjumping) {
				vsp = -0.1;
				y = y - 1;
				set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
				spawn_hit_fx(x-10, y-65, 143);
				//create_hitbox( 51, 1, x, y);
				create_hitbox( 50, 1, x-10, y-65);
				sound_stop(explosion_sound);
				sound_play(explosion_sound, false, noone, 0.9, 1);	
			}
		}
	}
	
}

// uspecial 2 comes out if uspecial was already used.
if (attack == AT_USPECIAL_2) {
	
	// undeploys parachute
	para_should_undeploy = true;
}

// for situations where you land during awkward points of uspecial
if (attack == AT_USPECIAL && !free) {
	
	para_should_undeploy = true;
}

// unique handlers for using attacks that don't instantly end blastjump state upon touching the ground
if (!free && blastjumping) {
	
	/*
	if (up_strong_down || up_strong_pressed) && (jump_down || jump_pressed) {
		vsp = -8;
	}
	*/
	
	// to prevent being able to jump away from whiffed ustrong and still have blast jump status
	if (attack == AT_USTRONG) {
		if (window == 4 && !has_hit) {
			blastjump_should_undeploy = true;
		}
	}
	
	// janky fix to prevent being able to use fspecial repeatedly on the ground
	if (attack == AT_FSPECIAL) {
		if (window == 1) {
			fspecial_blast_ground_timer++;
		}
	}
	
	/*
	if (attack == AT_DSTRONG) {
		if (window == 1) {
			blastjump_should_undeploy = true;
		}
	}
	*/
	
	
}


// abyss rune junk!

// handles abyss rune D
// (up b explodes)
if (runeD) {
	if (attack == AT_USPECIAL) {
		if (rockets_clip > 0) {
			if (rocket_cancel == true) {
				if (window == 3) {
					if (window_timer > 3) { // not sure how necessary it is to wait 3 frames
						can_jump = true;
						can_strong = true;
						can_attack = true;
						can_special = true;
					}
				}
			}
			
			// resets variables
			if (window == 1) {
				rocket_cancel = false;
				grenade_explode = 0;
			}
			
			// variable turns on upon uspecial activating
			if (hitpause == false) {
				if (window == 2) {
					if (window_timer == 8) {
						grenade_explode++;
						rockets_clip--
					}
				}
			}
			
			// spawns hit fx, creates explosion hitbox, plays sound near location where bair hit
			if (window == 2) {
				if (window_timer == 8) {
					if (hitpause == false) {
						spawn_hit_fx(x, y-75, 143);
						//create_hitbox( 51, 1, x, y);
						create_hitbox( 50, 1, x, y-65);
						sound_stop(explosion_sound);
						sound_play(explosion_sound, false, noone, 0.9, 1);	
					}
				}
			}
			
		}
	}
}

