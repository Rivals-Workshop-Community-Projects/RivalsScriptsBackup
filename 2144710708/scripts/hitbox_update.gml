// nspecial action handler

// how far the shoe should be placed when turned around
var hbox_bootoffset = 22;
var abyssmult = 1.0;

if (attack == AT_NSPECIAL) {
	// neutral special projectile disappears
	// when it makes contact with the ground.
	if (vsp == 0) && (hsp == 29 || hsp == -29) {
		destroy_fx = gun_ground_effect;
		destroyed = true;
	}
	
}

// smg altfire (bomb, abyss rune)
if (attack == AT_DSTRONG_2) {
	
	if ((vsp < 1) && (hitbox_timer > 1)) || (hsp == 0) || (shoe_collide == true) || (has_hit) {
		
		if (spr_dir == -1) {
			spawn_hit_fx(x+25, y-25, 143);
			create_hitbox( remotehitbox, 3, x+25, y-25);
		}
		if (spr_dir == 1) {
			spawn_hit_fx(x-25, y-25, 143);
			create_hitbox( remotehitbox, 3, x-25, y-25);
		}
		
		sound_play(remotesound, false, noone, 1, 1);		
		destroyed = true;

	}

}

// dspecial actions handler (oh no)
if (attack == AT_DSPECIAL) {
	
	// boot hitpause
	if in_hitpause {
		hitstop--;
	}
	if in_hitpause && hitstop == 0 {
		in_hitpause = false;
		hsp = old_hsp;
		vsp = old_vsp;
	}
	
	if (hitbox_timer == 1) {
		
		spawn_hit_fx(x, y, dspecial_spawn_effect);
	}
	
	// destroy boot on death
	/*
	if (player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) {
		
		destroyed = true;
	}
	*/
	
	var hit_override = false; // if this isn't true, the boot will not have an active hitbox
	var override_other_overrides = false; // makes sure it isn't set false from not moving
	var boot_player = false; // boot owner variable
	
	var boot_weakhit_sound_h = boot_weakhit_sound;
	var boot_medhit_sound_h = boot_medhit_sound;
	var boot_heavyhit_sound_h = boot_heavyhit_sound;
	
	boot_player = player;
	
	// checks through all players, if they are touching the boot.
	// if they are, and they are in hitstun, and they do not own the boot,
	// activates the boot's hitbox, even if the boot is not moving.
	with oPlayer {
		if (player != boot_player) {
			if (place_meeting(x,y,other)){
				if (hitstun > 0) && (state_cat == SC_HITSTUN) {
					//spawn_hit_fx(other.x, other.y, 13);
					hit_override = true;
					override_other_overrides = true;
				}
			}
		}
	}
	
	// checks if the boot is moving
	if (hsp == 0 && vsp == 0 && in_hitpause == false) {
		
		if (!free) { 
			// boot not moving sprite
			if (player_id.runeK == true) {
				// abyss rune sprite
				sprite_index = boot_rune_sprite;

			}
			else {
				sprite_index = boot_sprite;

			}
			
			// change hitbox size
			image_xscale = 64/200;
			image_yscale = 64/200;
			
			// cannot be false if overriden by other boot check
			if (override_other_overrides != true) {
				hit_override = false;
			}
		}
		else {
		
			if (player_id.runeK == true) {
				sprite_index = boot_rune_spin_sprite;
			}
			else {
				sprite_index = boot_spin_sprite;
			}
			
			// change hitbox size
			image_xscale = 32/200;
			image_yscale = 32/200;
		
		}
	}
	else if (hsp == 0 && vsp == 0 && in_hitpause == true) {
		
		sprite_index = boot_hitpause_sprite;

		
		// cannot be false if overriden by other boot check
		if (override_other_overrides != true) {
			hit_override = false;
		}
		
		// change hitbox size
		image_xscale = 0/200;
		image_yscale = 0/200;
		
	}
	else {
		
		// boot moving sprite
		
		if (in_hitpause == false) {
		
			if (player_id.runeK == true) {
				sprite_index = boot_rune_spin_sprite;
			}
			else {
				sprite_index = boot_spin_sprite;
			}
		
		// change hitbox size
		image_xscale = 32/200;
		image_yscale = 32/200;
		
		}
		else if (in_hitpause == true) {
			
		
			sprite_index = boot_hitpause_spin_sprite;
			
			// change hitbox size
			image_xscale = 0/200;
			image_yscale = 0/200;
			
		}
		
		// boot is active while moving
		hit_override = true;
	}
	
	// variable that actually makes the boot active
	if (hit_override == true) {
		hit_priority = 1;
	}
	else {
		if (player_id.move_cooldown[AT_USPECIAL_GROUND] > 0) { //munophone
			hit_priority = 1;
		}
		else {
			hit_priority = 0;
		}
	}
	
	// cooldown stuff
	if (grav != 0.41) {
		if (player_id.runeB != true) {
			player_id.move_cooldown[AT_DSPECIAL] = 100;	
		}
		else if (player_id.runeB == true) {
			player_id.move_cooldown[AT_DSPECIAL] = 4;	
		}
	}
	
	// abyss rune K boot damage multiplier
	if (player_id.runeK) {
		abyssmult = 1.25;
	}

	// prepare to play sound when airborne
	if (free) {
		times_played = 1;
	}
	
	// play sound upon touching the ground
	if (!free && times_played > 0) {
		sound_play(boot_land_sound, false, noone, 1, 1);
		times_played = times_played - 1;

	}
	
	/*
	// hit lockout if the boot's knockback scaling exceeds 0.5 (removed) 
	if (kb_scale > 0.5) {
		no_other_hit = 10;
	}
	*/


	// shoe gets destroyed upon touching blastzones
	if (x < stage_left_blast || x > stage_right_blast) {
		//sound_play(sound_get("button15"), false, noone, 1, 1);
		destroyed = true;
	}

	if (y > stage_bottom_blast) {
		//sound_play(sound_get("button15"), false, noone, 1, 1);
		destroyed = true;
	}
	
	//player_id.x = x;
	//player_id.y = y;
	
	// handles boot launches
	with (asset_get("pHitBox")) {

	
		if (player_id == other.player_id && place_meeting(x,y,other.id) && !player_id.has_hit) {			

			if (attack == AT_FSPECIAL && player_id.url == (2144710708)) { // for the owen ditto
				player_id.has_hit = 1;		

				spawn_hit_fx(other.x, other.y, 21);
				sound_play(sound_get("gravgun_launch2"), false, noone, 1, 1.1);

				other.player = player_id.player;
				other.spr_dir = spr_dir;
				
				other.hitstop = 10;
				other.in_hitpause = 1;
				
				other.old_hsp = (10) * (spr_dir);						
				other.old_vsp = -5;
			}
			else if (attack == AT_NSPECIAL && player_id.url == (2144710708)) { 

				spawn_hit_fx(other.x, other.y, 1);

				other.hitstop = 1;
				other.in_hitpause = 1;

				other.player = player_id.player;
				other.spr_dir = spr_dir;
				
				other.old_hsp = (1) * (spr_dir);
				other.old_vsp = -5;
			}
			else if ((attack == AT_DSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_DSPECIAL_2) && player_id.url == (2144710708)) {
				// do nothing xd
				
			}
			else if ((attack == AT_USPECIAL || attack == AT_DSTRONG_2) && player_id.url == (2144710708)) {
				player_id.has_hit = 1;		
				
				spawn_hit_fx(other.x, other.y, 21);
				sound_play(sound_get("gravgun_launch2"), false, noone, 1, 1.1);
				
				other.hitstop = 10;
				other.in_hitpause = 1;

				other.old_hsp = (2) * (spr_dir);
				other.old_vsp = -15;
				
				other.player = player_id.player
				other.spr_dir = spr_dir;
				
				// smg bomb explodes when it touches the shoe
				shoe_collide = true;
			}
			else if (attack == AT_JAB) {	
			
				player_id.has_hit = 1;		

				spawn_hit_fx(other.x, other.y, 13);
				sound_play(boot_weakhit_sound_h, false, noone, 1, 1);
	
				other.hitstop = 10;
				other.in_hitpause = 1;

				other.player = player_id.player
				other.spr_dir = spr_dir;
				
				other.old_hsp = (3) * (spr_dir);
				other.old_vsp = -3;

			}
			else {
				if (throws_rock != 2) {
					if (damage > 0) {
						
						player_id.has_hit = 1;
						
						spawn_hit_fx(other.x, other.y, 13);
						if (kb_scale < 0.5) {
							sound_play(boot_weakhit_sound_h, false, noone, 1, 1);
						}
						else if (kb_scale >= 0.5 && kb_scale < 0.7) {
							sound_play(boot_medhit_sound_h, false, noone, 1, 1);	
						}
						else if (kb_scale >= 0.7) {
							sound_play(boot_heavyhit_sound_h, false, noone, 1, 1);		
						}
						
						if (throws_rock != 1) {
							
							other.kb_value = kb_value * abyssmult;
							other.kb_angle = kb_angle;
							other.kb_scale = (kb_scale + ((player_id.strong_charge/60) * 0.35)) * abyssmult;
							
							other.extra_hitpause = extra_hitpause;
							other.damage = round((damage + (damage * (player_id.strong_charge/60) * 0.6)) * abyssmult);
							other.effect = effect;
							other.hitpause = hitpause * abyssmult;
							other.hitpause_growth = hitpause_growth * abyssmult;
							other.hit_effect = hit_effect;
							other.extra_hitpause = extra_hitpause;
							other.camera_shake = camera_shake;
							other.hitstun_factor = hitstun_factor;
							other.dumb_di_mult = dumb_di_mult;
							other.can_tech = can_tech;
							other.force_flinch = force_flinch;
							other.bkb_final = bkb_final;
							other.sound_effect = sound_effect;

							//other.throws_rock = throws_rock;
							other.groundedness = groundedness;
							

						
						}
						
						other.player = player_id.player
						other.spr_dir = spr_dir;
						
						/*
						if (hitpause > 0) {
							other.hitstop = round(hitpause) + extra_hitpause;
							other.in_hitpause = 1;
						}
						else {
							other.hitstop = 1 + extra_hitpause;
							other.in_hitpause = 1;
						}
						other.in_hitpause = 1;
						*/
						other.hitstop = 10;
						other.in_hitpause = 1;
	
						// player hitpause upon hitting boot
						/*
						player_id.old_vsp = player_id.vsp;	
						player_id.old_hsp = player_id.hsp;
						player_id.hitpause = 1;
						player_id.hitstop = 10;
						player_id.hitstop_full = 7;			
						*/


						// im so sorry
						var horizontal_chungus = 0;		
						var vertical_chungus = 0;

						if (kb_angle >= 0 && kb_angle < 90) {
							// chungus 1
							horizontal_chungus = 1 - kb_angle / 90;	
							vertical_chungus = kb_angle / 90;
						} 
						else if (kb_angle >= 90 && kb_angle < 180) {
							// chungus 2
							horizontal_chungus = -((kb_angle-90) / 90);
							vertical_chungus = (1 - (kb_angle-90) / 90);	
						}
						else if (kb_angle >= 180 && kb_angle < 270) {
							// chungus 3
							horizontal_chungus = -(1 - (kb_angle-180) / 90);	
							vertical_chungus = -((kb_angle-180) / 90);	
						}
						else if (kb_angle >= 270 && kb_angle <= 360) {
							// chungus 4
							horizontal_chungus = (kb_angle-270) / 90;	
							vertical_chungus = -(1 - (kb_angle-270) / 90);
						}
						else {
							// weird case
							horizontal_chungus = 0.5;
							vertical_chungus = 0.5;
						}

						other.old_hsp = (((spr_dir * horizontal_chungus) * ((((kb_value)*((kb_scale + ((player_id.strong_charge/60) * 0.35))/1.5))*2))/3) * 1.2) + ((spr_dir * horizontal_chungus) * kb_value);
						other.old_vsp = (((-vertical_chungus) * (((((kb_value)*((kb_scale + ((player_id.strong_charge/60) * 0.35))/1.5))*2))/3)) * 1.2) + ((-vertical_chungus) * kb_value);

						//other.old_hsp = ((spr_dir * horizontal_chungus) * ((2+((kb_value)*((kb_scale + ((player_id.strong_charge/60) * 0.35))/1.5))*2))/3) * 3;
						//other.old_vsp = ((-vertical_chungus) * (((2+((kb_value)*((kb_scale + ((player_id.strong_charge/60) * 0.35))/1.5))*2))/3)) * 3;
						
						//other.old_hsp = (spr_dir * horizontal_chungus) * kb_value;
						//other.old_vsp = (-vertical_chungus) * kb_value;
						
					}
				}
			}
		}
			
		if (player_id != other.player_id && place_meeting(x,y,other.id) && !player_id.has_hit) {	

			
			//player_id.hitstop = 5;
			

			

			if (attack == AT_FSPECIAL && player_id.url == (2144710708)) {
				player_id.has_hit = 1;		

				spawn_hit_fx(other.x, other.y, 21);
				sound_play(sound_get("gravgun_launch2"), false, noone, 1, 1.1);

				other.player = player_id.player;
				other.spr_dir = spr_dir;
				
				other.hitstop = 10;
				other.in_hitpause = 1;
				
				other.old_hsp = (10) * (spr_dir);						
				other.old_vsp = -5;
			}
			else if (attack == AT_NSPECIAL && player_id.url == (2144710708)) {

				spawn_hit_fx(other.x, other.y, 1);

				other.hitstop = 1;
				other.in_hitpause = 1;

				other.player = player_id.player;
				other.spr_dir = spr_dir;
				
				other.old_hsp = (1) * (spr_dir);
				other.old_vsp = -5;
			}
			else if ((attack == AT_DSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_DSPECIAL_2) && player_id.url == (2144710708)) {
				// do nothing xd
				
			}
			else if ((attack == AT_USPECIAL || attack == AT_DSTRONG_2) && player_id.url == (2144710708)) {
				
				player_id.has_hit = 1;		
				
				spawn_hit_fx(other.x, other.y, 21);
				sound_play(sound_get("gravgun_launch2"), false, noone, 1, 1.1);
				
				other.hitstop = 10;
				other.in_hitpause = 1;

				other.old_hsp = (2) * (spr_dir);
				other.old_vsp = -15;
				
				other.player = player_id.player
				other.spr_dir = spr_dir;
				
				// smg bomb explodes when it touches the shoe
				shoe_collide = true;
			}
			else if (attack == AT_JAB) {	
			
				player_id.has_hit = 1;		

				spawn_hit_fx(other.x, other.y, 13);
				sound_play(boot_weakhit_sound_h, false, noone, 1, 1);
	
				other.hitstop = 10;
				other.in_hitpause = 1;

				other.player = player_id.player
				other.spr_dir = spr_dir;
				
				other.old_hsp = (3) * (spr_dir);
				other.old_vsp = -3;
			}
			else if (attack == AT_EXTRA_3 && player_id.url == (1868756032)) { // kirb

				spawn_hit_fx(other.x, other.y, 1);

				other.hitstop = 1;
				other.in_hitpause = 1;

				other.player = player_id.player;
				other.spr_dir = spr_dir;
				
				other.old_hsp = (1) * (spr_dir);
				other.old_vsp = -5;
			}
			else if (attack == AT_FSTRONG && player_id.url == (2325366840)) { // morshu
				
				// do nothing Lol!
			}
			else if (attack == AT_DAIR && player_id.url == (2325366840)) { // morshu
				
				// do nothing Lol!
			}
			else {
				if (damage > 0) {
					if (throws_rock != 2) {
				
						player_id.has_hit = 1;
						
						spawn_hit_fx(other.x, other.y, 13);
						if (kb_scale < 0.5) {
							sound_play(boot_weakhit_sound_h, false, noone, 1, 1);
						}
						else if (kb_scale >= 0.5 && kb_scale < 0.7) {
							sound_play(boot_medhit_sound_h, false, noone, 1, 1);	
						}
						else if (kb_scale >= 0.7) {
							sound_play(boot_heavyhit_sound_h, false, noone, 1, 1);		
						}
						
						if (throws_rock != 1) {
							
							other.kb_value = kb_value * abyssmult;
							other.kb_angle = kb_angle;
							other.kb_scale = (kb_scale + ((player_id.strong_charge/60) * 0.35)) * abyssmult;
							
							other.extra_hitpause = extra_hitpause;
							other.damage = round((damage + (damage * (player_id.strong_charge/60) * 0.6)) * abyssmult);
							other.effect = effect;
							other.hitpause = hitpause * abyssmult;
							other.hitpause_growth = hitpause_growth * abyssmult;
							other.hit_effect = hit_effect;
							other.extra_hitpause = extra_hitpause;
							other.camera_shake = camera_shake;
							other.hitstun_factor = hitstun_factor;
							other.dumb_di_mult = dumb_di_mult;
							other.can_tech = can_tech;
							other.force_flinch = force_flinch;
							other.bkb_final = bkb_final;
							other.sound_effect = sound_effect;

							//other.throws_rock = throws_rock;
							other.groundedness = groundedness;
						
						}
						
						other.player = player_id.player
						other.spr_dir = spr_dir;
						
						other.hitstop = 10;
						other.in_hitpause = 1;

							
						// im so sorry
						var horizontal_chungus = 0;		
						var vertical_chungus = 0;

						if (kb_angle >= 0 && kb_angle < 90) {
							// chungus 1
							horizontal_chungus = 1 - kb_angle / 90;	
							vertical_chungus = kb_angle / 90;
						} 
						else if (kb_angle >= 90 && kb_angle < 180) {
							// chungus 2
							horizontal_chungus = -((kb_angle-90) / 90);
							vertical_chungus = (1 - (kb_angle-90) / 90);	
						}
						else if (kb_angle >= 180 && kb_angle < 270) {
							// chungus 3
							horizontal_chungus = -(1 - (kb_angle-180) / 90);	
							vertical_chungus = -((kb_angle-180) / 90);	
						}
						else if (kb_angle >= 270 && kb_angle <= 360) {
							// chungus 4
							horizontal_chungus = (kb_angle-270) / 90;	
							vertical_chungus = -(1 - (kb_angle-270) / 90);
						}
						else {
							// weird case
							horizontal_chungus = 0.5;
							vertical_chungus = 0.5;
						}

						other.old_hsp = (((spr_dir * horizontal_chungus) * ((((kb_value)*((kb_scale + ((player_id.strong_charge/60) * 0.35))/1.5))*2))/3) * 1.1) + ((spr_dir * horizontal_chungus) * kb_value);
						other.old_vsp = (((-vertical_chungus) * (((((kb_value)*((kb_scale + ((player_id.strong_charge/60) * 0.35))/1.5))*2))/3)) * 1.1) + ((-vertical_chungus) * kb_value);

						
					}
				}
			}
		}
	}
}






