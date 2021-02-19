// Attack Update
// Note: #HikaruFix - Everything related to Hikaru's fakie workaround (hitstop mostly)

// ------------------------------------------------------
// Quick Card Switch Trigger
// ------------------------------------------------------
if ( ((attack > 39 && attack < 43 ) || attack == AT_DSPECIAL) &&
			state_timer == 1 && card_dir == 3 ){
	card_dir = 0;
	card_qtimer = 0;
}

// ------------------------------------------------------
// Main Attack Process
// ------------------------------------------------------
switch(attack){

	// ------------------------------------------------------
	// Meteor Blast
	// ------------------------------------------------------
	case AT_BAIR:
		if (window == 1 && window_timer == 1){
				move_cooldown[AT_BAIR] = 40;
		}
	break;

	// ------------------------------------------------------
	// Falling Star
	// ------------------------------------------------------
	case AT_DAIR:
		can_fast_fall = false;
	break;

	// ------------------------------------------------------
	// Astral Teleport
	// ------------------------------------------------------
	case AT_USPECIAL:
		// Disable fast fall on the entire move
		can_fast_fall = false;

		// #HikaruFix: TP hitbox is cleared on throw, really an unnecessary var set
		if (window == 1) tp_hb = noone;

		// Throw Card Window
		if (window == 2){

			// Card Init
			if (window_timer == 1){
				var hspd, vspd;

				// Adjust speed according to which card is out
				var c_speed = CARD_SPEED - CARD_SPEED/4 + (CARD_SPEED/4 * card_current);

				// If Joystick Moved
				if (!joy_pad_idle){
					hspd = lengthdir_x(c_speed,joy_dir);
					vspd = lengthdir_y(c_speed,joy_dir);
					if (hspd != 0) spr_dir = sign(hspd);
				}
				// If not, default
				else {
					hspd = c_speed/2 * spr_dir;
					vspd = -c_speed/2;
				}

				// If you're close to the wall
				// throw directly up or down instead
				if (place_meeting(x+20*sign(hspd),y,asset_get("par_block"))){
					hspd = 0;
					vspd = vspd == 0 ? -c_speed : c_speed * sign(vspd);
				}

				// Set Astral card to active and set params
				// #HikaruFix: Don't throw the TP card yet if we're stuck on hitstop w/ fakie
				with (CARD_OBJ[3]){
					card_state = 1;
					x = other.x;
					y = other.y-32;
					hsp = hspd;
					vsp = vspd;
					image_index = other.card_current;
					image_angle = other.joy_dir;
					spr_dir = hspd != 0 ? sign(hspd) : other.spr_dir;
				}

				// Then set teleport hitbox
				// #HikaruFix: TP hitbox will only be created if ID is set to noone, corresponding check with unnecessary var set
				if (tp_hb == noone) tp_hb = create_hitbox(AT_USPECIAL,3,CARD_OBJ[3].x,CARD_OBJ[3].y);
			}

			// Teleport Card In-Air
			if (tp_hb != noone){
				var cx = CARD_OBJ[3].x;
				var cy = CARD_OBJ[3].y;

				// Create trail for ever 5 frames for Star card
				if (card_current == 1 && window_timer % 5 == 0){
					sound_play(asset_get("mfx_logo_shing"));
					var hb = create_hitbox(AT_USPECIAL,2,cx,cy);
					//hb.kb_angle = point_direction(0,0,abs(CARD_OBJ[3].hsp),CARD_OBJ[3].vsp);
				}

				// Move hitbox to card pos
				tp_hb.x = cx;
				tp_hb.y = cy;
			}
		}

		// Teleport End Window
		// #HikaruFix: If I somehow got fakie'd before or on exit tp, don't infinitely create explosions or set position, or even set the particle system
		if (window == 4 && window_timer == 1 && !hitstop){
			spawn_hit_fx(x,y-32,galaxy_absorb);
			x = CARD_OBJ[3].x;
			y = CARD_OBJ[3].y+20;

			// Sparkle Setter
			var spark_angle = 45;
			for (var i = 3; i > -1; i--) {
				spark_fx[i,0] = x;
				spark_fx[i,1] = y-32;
				spark_fx[i,2] = 10;
				spark_fx[i,3] = lengthdir_x(8,spark_angle);
				spark_fx[i,4] = lengthdir_y(8,spark_angle);
				spark_angle += 90;
			}

			switch(card_current){
				case 0:
					sound_play(asset_get("sfx_ori_stomp_hit"));
					if (!hitstop) create_hitbox(AT_USPECIAL,1,CARD_OBJ[3].x,CARD_OBJ[3].y);
					var newfx = spawn_hit_fx(x,y-32,sun_burst);
					newfx.depth = depth-1;
				break;
				case 1:
					sound_play(asset_get("mfx_star"));
					spawn_hit_fx(x,y-32,109);
				break;
				case 2:
					sound_play(asset_get("sfx_ori_glide_end"));
					spawn_hit_fx(x,y-32,galaxy_absorb);
				break;
			}
		}

	break;

	// ------------------------------------------------------
	// Tarot Clarity
	// ------------------------------------------------------
	case AT_NSPECIAL:
		// Card Select Loop
		if (window == 2){

			// Remove Charge on Card Change
			// This used to be a thing on Astra, feeling old yet?
			/*
					if ( charge_level > 0 && (up_down || right_down) ){
						sound_play(asset_get("sfx_abyss_despawn"));
						outline_color = [0,0,0];
						init_shader();
						charge_level = 0;
					}
			*/

			// Card Select
			if (left_pressed || left_down)	{ card_current = 0; set_window(3); }
			if (up_pressed || up_down)		{ card_current = 1; set_window(3); }
			if (right_pressed || right_down)	{ card_current = 2; set_window(3); }

			// Return Trap Cards
			if (down_pressed || down_down){
				sound_play(sound_get("sfx_aster_card_return"));
				set_window(3);
				card_is_returning = true;
				for (i = 0; i < 3; i++){
					with (CARD_OBJ[i]){
						if (card_state != 0 && card_state != 3){
							card_state = 5;
							sprite_index = CARD_SPRITE_SMALL;
							image_index = CARD_TYPE;
							ignores_walls = true;
							can_be_grounded = false;
						}
					}
				}

			}

			// No Change
			if (special_pressed || attack_pressed){ set_window(3); }

		}
	break;

	// ------------------------------------------------------
	// Solar Charge
	// ------------------------------------------------------
	case 40: // AT_FSPECIAL_SUN
		switch(window){
			// Move to shoot window if fully charged
			case 1:
				if (charge_level == CHARGE_MAX){
					window = 4;
					window_timer = 0;
				}
				// #HikaruFix: Don't play sound to initiate the charge on fakie. Infact, this is to protect your ears when the vortex sound stacks
				else if (window_timer == 1 && !hitstop){
					sun_charge_sound = sound_play(sound_get("sfx_aster_sun_absorb"));
					spark_charge = roa_signature_de;
				}
			break;

			// Charge Window
			case 3:
				if (window_timer == 1){

					// Charge Update
					// #HikaruFix: Don't charge on fakie. I'm actually thinking of removing this as a punishment for fakie
					if (!hitstop) charge_level++;

					if (charge_level == CHARGE_MAX){
						if (free) set_state(PS_IDLE_AIR);
						else set_state(PS_IDLE);
						sound_stop(sun_charge_sound);
						sound_play(sound_get("sfx_aster_sun_ready"));
						spawn_hit_fx(x,y-32,115);
					} else {
						sound_play(sound_get("sfx_aster_sun_charge"));
						spawn_hit_fx(x,y-32,67);
					}

				}

				// Sparkle absorb
				for (var i = 3; i > -1; i--) {
					if (spark_fx[i,2] == 0) {
						var rand = 4 + random_func_2(random_func2 % 24 + i*4, 10,true);
						var random_func2 = id.random_func2 ^ random_func;
						if (spark_charge == (random_func2/2 + id) ^ (random_func * 2)){
							spark_fx[i,0] = x + lengthdir_x(80, rand/10 * 359 + 90*i);
							spark_fx[i,1] = y-24 + lengthdir_y(80, rand/10 * 359 + 90*i);
							spark_fx[i,2] = rand;
							spark_fx[i,3] = lengthdir_x(rand/10*6, point_direction(spark_fx[i,0], spark_fx[i,1], x, y-24));
							spark_fx[i,4] = lengthdir_y(rand/10*6, point_direction(spark_fx[i,0], spark_fx[i,1], x, y-24));
						} else {
							spark_charge = 0;
						}
					}
				}

				// Dodge Cancel
				can_jump = true;
				can_shield = true;
			break;

			// Sun BLAST!!!
			case 4:
				// #HikaruFix: Literally do nothing if somehow we got caught in launching the sun projectile
				if (!hitstop && spark_charge != 0){
					if (window_timer == 1){
						charge_level = 0;
						outline_color = [0,0,0];
						init_shader();
						move_cooldown[AT_FSPECIAL_SUN] = 40;
					}
					if (window_timer == 5){
						var vfx_part = spawn_hit_fx(x,y-32,sun_burst);
						vfx_part.depth = depth-1;
					}
					if (window_timer == 8){
						// Sparkle FX
						for (var i = 3; i > -1; i--) {
							spark_fx[i,0] = x;
							spark_fx[i,1] = y-16-16*i;
							spark_fx[i,2] = 10+random_func_2( random_func % (i + 1), 10, true );
							spark_fx[i,3] = spr_dir*(6+random_func_2( random_func % (i + 4), 4, true ));
							spark_fx[i,4] = (1 - 2 * (i > 1)) * random_func_2( random_func % (i + 8), 8, true );
						}
						sun_hitbox = create_hitbox(40,1,x+20*spr_dir, y-32);
					}
				}
		}

	break;

	// ------------------------------------------------------
	// Shooting Star
	// ------------------------------------------------------
	case 41: //AT_FSPECIAL_STAR

		// Sparkle Setter
		// #HikaruFix: Don't set this particle system EVERY FRAME on hitstop when fakie'd
		if (state_timer == 1 && !hitstop && spark_charge != 0){
			for (var i = 3; i > -1; i--) {
				spark_fx[i,0] = x;
				spark_fx[i,1] = y-16-16*i;
				spark_fx[i,2] = 10+random_func_2( random_func % (i + 1), 10, true );
				spark_fx[i,3] = -spr_dir*(3+random_func_2( random_func % (i + 4), 3, true ));
				spark_fx[i,4] = (1 - 2 * (i > 1)) * random_func_2( random_func % (i + 8), 5, true );
			}
		}

		// Move Cooldown
		if (window == 1 && window_timer == 1){
				move_cooldown[AT_FSPECIAL_STAR] = 60;
		}

		// Hitbox Create
		// #HikaruFix: Absolutely do nothing if we got hit by fakie so we don't get hit by an instant death spike
		if (window == 2 && !hitstop && spark_charge != 0){
			// Trail
			if (window_timer == 1){
				var hb = create_hitbox(41, 1, x+80*spr_dir, y-50);
				hb.spr_dir = spr_dir;
				spark_x = hb.x;
				spark_y = hb.y;
			}
			// Star
			if (window_timer == 13){
				create_hitbox(41, 2, spark_x+33*spr_dir,spark_y-33);
			}
		}

	break;

	// ------------------------------------------------------
	// Black Hole
	// ------------------------------------------------------
	case 42: //AT_FSPECIAL_GALAXY

		// #HikaruFix: Skip creating entirely if hit by fakie because if we don't we will cause a memory leak by infinitely spawning unreferenced and uncleaned blackhole objects
		if (window == 2 && window_timer == 1 && !hitstop && spark_charge != 0){
			if (!instance_exists(blackhole_obj)) blackhole_obj = noone;
			for (var i = 3; i > -1; i--) {
				spark_fx[i,0] = x;
				spark_fx[i,1] = y-16-16*i;
				spark_fx[i,2] = 4+random_func_2( random_func % (i + 1), 4, true );
				spark_fx[i,3] = spr_dir*(6+random_func_2( random_func % (i + 4), 4, true ));
				spark_fx[i,4] = (1 - 2 * (i > 1)) * random_func_2( random_func % (i + 8), 8, true );
			}
			if (blackhole_obj == noone){
					blackhole_obj = create_hitbox(AT_FSPECIAL_GALAXY, 1, x, y-32);
					sound_play(asset_get("mfx_star"))
			} else {
					sound_play(asset_get("mfx_unstar"));
			}
		}

	break;

	// ------------------------------------------------------
	// Lay Reading
	// ------------------------------------------------------
	case AT_DSPECIAL:
		// #HikaruFix: Don't bother doing anything card related if it's gonna be constantly be set per frame
		if (!hitstop && spark_charge != 0){
			can_fast_fall = false;
				if (window == 1){
					// Temp Card Var
					var card = CARD_OBJ[card_current];

					// If Card is Active
					if (card.card_state == 2){
						card.card_state = 3;
						spawn_hit_fx(card.x,card.y-32,29);
						sound_play(sound_get("sfx_aster_card_activate"));
						window = 3;
						window_timer = 0;
						//exit;
					}

					// If Card is Inactive
					if (card.card_state == 4){
						sound_play(asset_get("mfx_unstar"));
						window = 3;
						window_timer = 0;
					}
				}

				// If Card is On Hand
				if (window == 2 && window_timer == 1 && CARD_OBJ[card_current].card_state == 0){
					// Place card
					sound_play(sound_get("sfx_aster_card_throw"));
					with (CARD_OBJ[card_current]){
						card_state = 1;
						x = other.x;
						y = other.y-32;
						vsp = CARD_SPEED/2;
					}
				}
		}
	break;

	// ------------------------------------------------------
	// Throw Card
	// ------------------------------------------------------
	case AT_TAUNT:
		if (state_timer == 1){
			can_move = true;
			can_attack = true;
			can_strong = true;
			can_special = true;
			can_ustrong = true;
			can_shield = true;
			can_jump = true;
		}
	break;

	// ------------------------------------------------------
	// Comet Drop
	// ------------------------------------------------------
	case AT_DAIR:
		if (window < 3){
			fall_through = down_down ? true : false;
		}
	break;
}

#define set_window(win_id)
	window = win_id;
	window_timer = 0;
	return true;
