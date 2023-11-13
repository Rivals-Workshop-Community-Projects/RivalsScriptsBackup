//attack_update.gml
//when we want to program in more complex attacks than what the basic attack scripts do, we come here
//this script runs every frame when the player is in an attack state (PS_ATTACK_GROUND, PS_ATTACK_AIR)

//NOTE: to reffer to a window's window_timer == 0, we must take the last frame of the window before
//		example: if (window == 3 && window_timer == window_end) will reffer to window 4, window_timer 0

//used for custom attack grid functions, for more information check the #define with the same name
custom_attack_grid();

//used by workshop compatibilities, check the function below if you want to take specific ones
workshop_compatibilities();

//B-reverse - it allows the character to turn in while using specials
//it's seperate from the switch statement because switch statements always take the later instance of that case
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_FTILT: //command grab
		if (window == 1) //reset variables
		{
			my_grab_id = noone; 
			grab_time = 0;
		}

		if (instance_exists(my_grab_id) && my_grab_id != noone) //if you have grabbed someone (and made sure they exist)
		{
			//"with" switches the perspective of the code, in this case to the grabbed player
			//if you want to reffer to yourself in this scenario you are called "other"
			with (my_grab_id)
			{
				hurt_img = 1;
				switch (other.window)
				{
					case 2: //go to window 4 (grab success window) and erase the grab hitbox
						with (other)
						{
							set_window(4);
							destroy_hitboxes();
						}
						break;
					case 4: case 5: //move grabbed player to the proper postion
						x = ease_sineInOut(x, other.x+32*other.spr_dir, other.grab_time, 10);
                		y = ease_sineInOut(y, other.y-8, other.grab_time, 10);

						//if conditions are met, go to window 6 and set the grab time to 0 again
						with (other) if (attack_pressed && attack_counter == 1 || window == 5 && window_timer == window_end)
						{
							grab_time = 0;
							set_window(6);

							//allows us to turn the player if the opposite direction is held while throwing
							if (left_down && spr_dir || right_down && -spr_dir) spr_dir = -spr_dir;
						}
						break;
					case 6: case 7: //move grabbed player to the proper postion... again
						x = ease_sineInOut(x, other.x-32*other.spr_dir, other.grab_time, other.grab_time+10);
                		y = ease_sineInOut(y, other.y-32, other.grab_time, other.grab_time+10);

						with (other)
						{
							if (image_index == 9)
							{
								other.force_depth = true; //this allows us to change the depth of the enemy to make them appear in front
								other.depth = depth-1;
							}
							if (window == 7 && window_timer == window_end) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								var throw_hbox = create_hitbox(AT_FTILT, 2, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
							}
						}
						break;
				}
			}

			//makes it so the throw will only affect the grabbed player
			with (pHitBox) if (player == other.player && attack == AT_FTILT && hbox_num == 2) //checks for the exact hitbox to tweak (our player, Ftilt, throw hitbox)
			{
				for (var i = 0; i < array_length(can_hit); i++) //can_hit is an array in hitboxes that checks which players can be hit by the hitbox
				{
					//filters every other player that wasn't grabbed to not be hit by the hitbox
					if (i == other.my_grab_id.player) can_hit[i] = true;
					else can_hit[i] = false;
				}
			}
		}
		break;
	case AT_DTILT: //cancel attack to jump
		if (has_hit && (window == 2 || window == 3) && !was_parried) can_jump = true;
		//this cancel is allowed to be done if:
		//	- we hit any hittable object, including articles
		//	- we are in window 2 or window 3
		//	- also check if the player isn't parried
		break;
	case AT_DATTACK: //cancel attack to a specific attack only on hitting a player
		if (has_hit_player && up_strong_pressed && window == 3) set_attack(AT_USTRONG);
		break;
	case AT_USTRONG: //strong charge affecting height
		can_fast_fall = false; //prevents hitfalling
		if (was_parried && !free) set_state(PS_PRATLAND); //fixes issue where it won't put us in pratland
		
		//prevents ustrong from falling off platforms with a charge by setting the category to grounded only
		if (window >= 3) set_attack_value(attack, AG_CATEGORY, 2);
		else reset_attack_value(attack, AG_CATEGORY);
		
		if (window == 2)
		{
			//this dynamically changes the horizontal and vertical speeds of window 4 (movement window) according to the charge
			//the numbers outside of the brackets are for no charge U-strong
			set_window_value(attack, 4, AG_WINDOW_HSPEED, 2+(strong_charge/30));
			set_window_value(attack, 4, AG_WINDOW_VSPEED, -8-(strong_charge/15));

			//increase the endlag window according to the charge
			set_window_value(attack, window_last, AG_WINDOW_LENGTH, 13+(strong_charge/5));
		}

		//if in the air and going back down, put landing lag
		//we put landing lag here because the move is AG_CATEGORY 2 (a ground an air attack)
		if (window > 4 && !free)
		{
			set_state(PS_LANDING_LAG);
			landing_lag_time = 10 * (!has_hit ? 1.5 : 1);
		}
		break;
	case AT_FSTRONG: //strong charging animation looping
		switch (window)
		{
			case 1: //charge sound window start
				if (window_timer == window_end) cur_loop_sound = sound_play(asset_get("sfx_abyss_hex_curse"));
				break;
			case 3: //sound stop
				if (window_timer == 1) sound_stop(cur_loop_sound);
				break;
			case 4: //effects
				if (!hitpause) switch (window_timer)
				{
					case 2: case 4: //first 2 hits
						var fstrong_fx = spawn_hit_fx(x + (48 + window_timer * 8) * spr_dir, y - 32, fx_fstrong_pop);
						fstrong_fx.draw_angle = random_func(12, 30, true) * 12; //changes effect angle randomly
						break;
					case 6: //last hit
						spawn_hit_fx(x + 96 * spr_dir, y - 32, fx_pow_hit[0]);
						break;
				}
				break;
		}
		break;
	case AT_DSTRONG: //strong charge affecting animation loops
		switch (window)
		{
			case 2: //set loop amount
				set_window_value(attack, 4, AG_WINDOW_LOOP_TIMES, floor(strong_charge/15)+1);
				break;
			case 4: //hit value setups because i don't feel like using individual hitboxes
				if (window_loops == get_window_value(attack, 4, AG_WINDOW_LOOP_TIMES)-1) //final hit
				{
					set_hitbox_value(attack, 1, HG_WIDTH, 64);
					set_hitbox_value(attack, 1, HG_HEIGHT, 80);
					set_hitbox_value(attack, 1, HG_DAMAGE, 10-floor(strong_charge*0.1));
					set_hitbox_value(attack, 1, HG_ANGLE, 40);
					set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 7);
					set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 0.9);
					set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, 9);
					set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING, 0.8);
					set_hitbox_value(attack, 1, HG_VISUAL_EFFECT, fx_pow_hit[1]);
					set_hitbox_value(attack, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
					
					set_hitbox_value(attack, 1, HG_HITBOX_X, 72);
					set_hitbox_value(attack, 2, HG_HITBOX_X, -56);
				}
				else //multihit
				{
					reset_hitbox_value(attack, 1, HG_WIDTH);
					reset_hitbox_value(attack, 1, HG_HEIGHT);
					reset_hitbox_value(attack, 1, HG_DAMAGE);
					reset_hitbox_value(attack, 1, HG_ANGLE);
					reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
					reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
					reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
					reset_hitbox_value(attack, 1, HG_HITPAUSE_SCALING);
					reset_hitbox_value(attack, 1, HG_VISUAL_EFFECT);
					reset_hitbox_value(attack, 1, HG_HIT_SFX);

					reset_hitbox_value(attack, 1, HG_HITBOX_X);
					reset_hitbox_value(attack, 2, HG_HITBOX_X);
				}
				break;
		}
		break;
	case AT_NAIR: //conditional attack transitions
		var nair_cancel_time = 10; //smaller number means the delay is bigger
        if ((window == 2 || window == 3 && window_timer < nair_cancel_time-1) && has_hit && !hitpause) //N-air canceling
        {
            window = 3;
            window_timer = nair_cancel_time;
            destroy_hitboxes();
        }
		break;
	case AT_FAIR: //single input multihit
		fair_cd = true; //added cooldown because it felt too strong, the rest is on update.gml
		break;
	case AT_BAIR: //hold / tap input
		switch (window)
		{
			case 1: //hold input redirect + landing lag reset
				reset_attack_value(attack, AG_LANDING_LAG); //because the landing lag changes based on if we used the tap/hold, we reset it here just in case
				
				//redirection to window 5, the hold version of the move
				//the left_stick and right_stick inputs are for the C-stick
				if (window_timer == window_end && (attack_down || left_stick_down || right_stick_down)) set_window(5);
				break;
			//TAP VERSION
			case 2: //tap blast sound play (should play in window 3 but attack_update doesn't have window_timer 0)
				if (window_timer == window_end) sound_play(asset_get("sfx_ori_charged_flame_release"));
				break;
			case 4: //tap version end - go to PS_IDLE_AIR to exit the move
				if (window_timer == window_end) set_state(PS_IDLE_AIR);
				break;
			//HOLD VERSION
			case 5: //set landing lag to the hold version landing lag + hold blast sound play (should play in window 6 but attack_update doesn't have window_timer 0)
				set_attack_value(attack, AG_LANDING_LAG, 12);
				if (window_timer == window_end) sound_play(asset_get("sfx_abyss_explosion"));
				break;
		}
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL: //charge shot
		can_move = false; //lock player's left-right movement
		if (window <= 4) vsp = clamp(vsp, vsp, 1 + state_timer/50); //also while charging, our character will slowly fall

		move_cooldown[attack] = ( (nspec_charge_max + 1) * 10 - floor(nspec_charge) * 10 ) + 30;
		if (shield_pressed) move_cooldown[attack] = 0;
		//puts the move in cooldown depending on charge level, unless the charge is being stored with parry
		//the stronger the charge, the lower the cooldown

		switch (window)
		{
			case 1: //var reset
				if (window_timer == 1)
				{
					//if we didn't save the charge while charing and got hit it will reset our charge
					if (!nspec_charge_stored) nspec_charge = 1;
					nspec_charge_stored = false;
					
					//this variable is used to slightly delay the shot so it's not as spammy
					nspec_shoot_delay_time = 0;
				}
				break;
			case 2: case 3: case 4: //charging
				if (shield_pressed) //charge saving by pressing shield
				{
					//store charge
					nspec_charge_stored = true;

					//stop charge sound and play the proper effects
					sound_stop(nspec_charge_sound);
					sound_play(asset_get("sfx_gem_collect"));
					spawn_hit_fx(x - 32 * spr_dir, y - 32, fx_pow_sparks);

					//if the player is on the ground, pressing left/right while storing charge will let them roll like ranno
					if (!free)
					{
						if (right_down && spr_dir || left_down && -spr_dir) set_state(PS_ROLL_FORWARD);
						else if (left_down && spr_dir || right_down && -spr_dir) set_state(PS_ROLL_BACKWARD);
						else set_state(PS_IDLE);
					}
					else set_state(PS_IDLE_AIR);
					clear_button_buffer(PC_SHIELD_PRESSED); //this will just 
				}
				else if (special_down && nspec_shoot_delay_time == 0) //holding down special will charge the projectile
				{
					//looping the animations untill we manually tell it otherwise
					//normally we would use window type 9 but it confuses the game into thinking the roll/parry windows should loop
					if (window_timer == window_end) window_timer = 0;

					if (nspec_charge < nspec_charge_max) nspec_charge += nspec_charge_rate; //the bigger the number - the faster the charge

					//depending on the charge we are making sure the windows are switched correctly
					//set_window is my own custom function, it works like set_attack and set_state, feel free to read more below - bar-kun
					if (nspec_charge == 1 + nspec_charge_rate)
					{
						sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
					}
					else if (nspec_charge == 2 + nspec_charge_rate)
					{
						set_window(3);
						sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
					}
					else if (nspec_charge == 3 && window != 4)
					{
						set_window(4);
						if (!nspec_charge_stored) sound_play(asset_get("sfx_frog_fspecial_charge_full"));
					}

					nspec_shoot_delay_time_max = 10 + 4 * floor(nspec_charge - 1); //charge release delay changes based on charge level (10 | 14 | 18)
				}
				else //releasing the proectile
				{
					nspec_shoot_delay_time ++; //makes our custom timer go down
					if (nspec_shoot_delay_time >= nspec_shoot_delay_time_max) set_window(5); //when not holding down special, fire the projectile
					else if (window_timer == window_end) window_timer = 0; //unless [nspec_shoot_delay_time] isn't 0 yet
				}
				break;
			case 5: //shooting the projectile
				//don't let these window numbers fool you, by putting in "window 5 + window_timer window_end" it acts as "window 6 + window_timer 0"
				//attack_update does not allow us to use the proper numbers
				if (window_timer == window_end)
				{
					//the character has recoil (only in the air)
					if (free)
					{
						hsp = -3 * spr_dir;
						vsp = -5;
					}

					//depending on the "nspec_charge" variable, spawn in a different projectile:
					//	- attack:						reffers to the current attack (AT_NSPECIAL)
					//	- floor(nspec_charge):			decides which projectile to spawn based on the whole numbers (1, 2 and 3)
					//	- x + HG_HITBOX_X * spr_dir:	spawns projectile based on what is written in the attack file (very convinient)
					//	- y + HG_HITBOX_Y:				same as the above
					
					var nspec_proj = create_hitbox(
						attack, 
						floor(nspec_charge + nspec_charge_rate),
						x + get_hitbox_value(attack, floor(nspec_charge + nspec_charge_rate), HG_HITBOX_X) * spr_dir,
						y + get_hitbox_value(attack, floor(nspec_charge + nspec_charge_rate), HG_HITBOX_Y)
					);
					var nspec_angle = free ? -30 * nspec_proj.spr_dir : 0;
					nspec_proj.hsp = lengthdir_x(nspec_proj.hsp, nspec_angle); //the projectile's HG_PROJECTILE_HSPEED is used as the speed indicator
					nspec_proj.vsp = lengthdir_y(nspec_proj.hsp, nspec_angle); //for how fast the projectile should be
					nspec_proj.proj_angle = nspec_angle;

					switch (nspec_proj.hbox_num)
					{
						case 1: sound_play(asset_get("sfx_ori_charged_flame_release")); break;
						case 2: sound_play(asset_get("sfx_ori_grenade_launch")); break;
						case 3: sound_play(asset_get("sfx_boss_laser")); break;
					}

					set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 20 + 10 * floor(nspec_charge - 1)); //sets endlag according to the charge level
					if (nspec_charge > 1) nspec_charge = 1; //reset nspec charge
				}
				break;
		}
		break;
	case AT_USPECIAL: //directional dash
		can_fast_fall = false; //prevents player from being able to fastfall

		//we need this so the player will be able to fast fall after using the move (unless they got parried)
		if (window == window_last && window_timer == window_end && !was_parried) can_fast_fall = true;

		switch (window)
		{
			case 1: case 2: //angle setup
				if (state_timer == 1) uspec_angle = 90;
				else if (window == 2)
				{
					if (!joy_pad_idle) uspec_angle = joy_dir;
					else uspec_angle = 90;
				}

				//limits the character's movement speed
				can_move = false;
				hsp = 0;
				vsp = clamp(vsp, vsp, 0);
				break;
			case 4: //movement
				//uspec_angle = joy_dir; //dynamic turning rune?

				var uspec_speed = 10;
				hsp = lengthdir_x(uspec_speed, uspec_angle);
				vsp = lengthdir_y(uspec_speed, uspec_angle);

				if (window_timer == 1) uspec_was_free = free;
				else if (window_timer > 2)
				{
					if (uspec_was_free && !free) //bounce
					{
						spawn_hit_fx(x, y-32, fx_pow_hit[1]);
						sound_play(asset_get("sfx_forsburn_combust"));

						vsp = -5;
						set_state(PS_PRATFALL);
						uspec_was_free = false;
					}
					else if (window_timer == window_end) //if the player doesn't hit the ground/was on the ground this entire time
					{
						spawn_hit_fx(x, y-32, fx_pow_hit[0]);

						if (!uspec_was_free && !free) set_state(PS_LANDING_LAG); //slide
					}
				}
				break;
		}
		break;
	case AT_FSPECIAL: //tether
		can_fast_fall = false; //prevents player from being able to fastfall
		can_move = false;

		switch (window)
		{
			case 1: case 2: //aiming + var reset
				fspec_found_target = false;
				fspec_hit_player = false;
				fspec_tether_pos = [floor(x + 64), floor(y - char_height/2)];
				
				//sets aim direction
				if (up_down) fspec_aim = -1;
				else if (down_down && free) fspec_aim = 1;
				else fspec_aim = 0;

				//limit the speed the character is going
				vsp = clamp(vsp, vsp, 0);
				hsp = clamp(hsp, -2, 2);
				break;
			case 3: //throw windup (check is on update.gml)
				vsp = 0;
				hsp = 0;
				break;
			case 4: //throwing tether
				vsp = 0;
				hsp = 0;

				if (window_timer == 1) create_hitbox(attack, 2, floor(fspec_tether_pos[0]), floor(fspec_tether_pos[1])); //spawn hitbox on the recorded position
				if (window_timer == 2) if (fspec_found_target)
				{
					sound_play(asset_get("sfx_holy_lightning"));
					spawn_hit_fx(fspec_tether_pos[0], fspec_tether_pos[1], fx_pow_hit[0]);

					//sets the tether's speed according to various sources:
					//if the tether has hit a player, it uses the player as a basis, otherwise, it looks a bit forward from the recorded position
					if (my_grab_id != noone) fspec_speed = point_distance(x, y, my_grab_id.x, my_grab_id.y) / 16 * 1.5; //sets the speed according to the hit player
					else fspec_speed = point_distance(x, y, fspec_tether_pos[0] + spr_dir * 32, fspec_tether_pos[1] + spr_dir * 32) / 16 * 1.5;
				}
				if (window_timer == window_end) set_window(fspec_found_target && !was_parried ? 6 : 5); //if a target was found, go to window 6
				break;
			case 5: //goes into pratfall because we couldn't catch anyone
				if (window_timer == window_end)
				{
					//this will force the player into pratfall only in the air, on the ground it will force them into idle instead
					//unless the player was parried

					set_state(free ? PS_PRATFALL : was_parried ? PS_PRATLAND : PS_IDLE);

					//writing [statement] ? [if] : [else] is essencially the same as writing [if (statement) code; else code;]
					

					//NOTE: you can manipulate the [parry_lag] variable to be something different other than the [prat_land_time]
				}
				break;
			case 6: //if a target is found it grapples towards them + applying cooldown
				if (!hitpause && fspec_found_target)
				{
					move_cooldown[attack] = 90; //half a sec cooldown

					//sets the speed values according to fspec_speed and the angles
					hsp = lengthdir_x(fspec_speed, fspec_angle * -fspec_aim) * spr_dir;
					vsp = lengthdir_y(fspec_speed, fspec_angle * -fspec_aim) - gravity_speed;
					
					//wall pop-up
					// this takes effect if you just barely touch the wall, and clips you on top of it. a little bit more player friendly
					if (place_meeting(x + hsp, y + vsp*free, asset_get("par_block")))
					{
						height_limit = 40;
						for (var i = 0; i <= height_limit; i++)
						{
							if (!place_meeting(x + hsp, y + vsp - i, asset_get("par_block")))
							{
								print("fspec is very forgiving")
								y -= i;
								break;
							}
						}
					}

					fall_through = (my_grab_id != noone); //prevents the player tethering from hitting platforms while going into players
					
					//position checks with the stage / hit detection
					//check order:
					//	- ground: when tethering towards the ground, check the proper spot to stop at depending on the fspec_tether_pos[0] (recorded x)
					//	- walls/celling: only check collision based on the hsp, so it will go in front of tester
					//	- platforms: only on collision with the top of platforms, based on vsp being higher than 0, and if my_grab_id isn't any player
					//	- on hit: when hitting players/articles
					if ((spr_dir && x >= fspec_tether_pos[0] || -spr_dir && x <= fspec_tether_pos[0]) && !free ||
						position_meeting(x + 32 * sign(hsp), y - 1, asset_get("par_block")) ||
						position_meeting(x + 32 * sign(hsp), y + sign(vsp) - 1, asset_get("par_jumpthrough")) && vsp > 0 && my_grab_id == noone ||
						has_hit)
					{
						//on hit, there are slightly different values
						//the [has_hit ? a : b] are basically just [if : else]
						vsp = has_hit ? -9 : -6;
						hsp = has_hit ? 0 : -4 * sign(hsp);

						//if the player didn't hit the article/other players this will spawn the hit effect and play the collision sound
						if (!has_hit)
						{
							sound_play(get_hitbox_value(attack, 1, HG_HIT_SFX));
							spawn_hit_fx(x + hsp, y - char_height / 2, get_hitbox_value(attack, 1, HG_VISUAL_EFFECT));
						}
						
						set_state(!has_hit ? PS_PRATFALL : PS_IDLE_AIR);

						//if for some reason the player hit the stage before the grabbed player
						//this part of the code will stop the hitpause on them and reset my_grab_id
						if (my_grab_id != noone)
						{
							my_grab_id.hitstop = 0;
							my_grab_id = noone;
						}
					}
					else if ((spr_dir && x > fspec_tether_pos[0] || -spr_dir && x < fspec_tether_pos[0]) && free) //used for below platform tethering mostly
					{
						hsp /= 8;
						vsp = -9;
						set_state(PS_IDLE_AIR);
					}
				}
				break;
		}
		break;
	case AT_DSPECIAL: //spawn article / teleport to article
		can_fast_fall = false;
		switch (window)
		{
			//PART 1: WAYPOINT SETUP
			case 3: //spawn article
				if (!instance_exists(artc_dspec)) artc_dspec = instance_create(x + 48 * spr_dir, y, "obj_article1");

				if (free && window_timer == 1) vsp = -3; //does a little bounce in the air
				break;
			case 5: //sends player back to idle
				if (window_timer == window_end) set_state(free ? PS_IDLE_AIR : PS_IDLE);
				break;
			//PART 2: TELEPORT
			//the article existance check happens on set_attack.gml	
			case 7: //teleport - it happens on window 8, window timer 0, but attack_update doesn't allow for window_timer 0
				if (window_timer == window_end)
				{
					move_cooldown[attack] = 180;

					if (instance_exists(artc_dspec))
					{
						spawn_hit_fx(x, y-32, fx_pow_hit[0]); //before warp effect

						x = artc_dspec.x; //warp to the coordinates
						y = artc_dspec.y;

						spawn_hit_fx(x, y-32, fx_pow_hit[0]); //after warp effect

						instance_destroy(artc_dspec); //destroy article behind us
					}
					
				}
			case 6: //effects
				do_particle(
					sprite_get("fx_pow_sparks"),
					12,
					x + (random_func(5, 5, true) - 2) * 16,
					y + (random_func(6, 5, true) - 2) * 16 - char_height / 2,
					1, //xscale
					1, //yscale
					1, //spr_dir
					random_func(7, 30, true) * 12 //angle
				)

				if (instance_exists(artc_dspec))
				{
					do_particle(
						sprite_get("fx_pow_sparks"),
						12,
						artc_dspec.x + (random_func(8, 5, true) - 2) * 16,
						artc_dspec.y + (random_func(9, 5, true) - 2) * 16 - artc_dspec.article_height / 2,
						1, //xscale
						1, //yscale
						1, //spr_dir
						random_func(10, 30, true) * 12 //angle
					)
				}
			case 8: case 9: case 10: //lock player movement
				can_move = false;
				hsp = 0;
				vsp = 0;
				break;
		}
		break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); // put hud away
		if (window == window_last && window_timer == window_end-1 && game_time <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
	case AT_TAUNT_2: //breakdance loop, hold taunt to continiue breakdancing
		if (taunt_down)
		{	
			//play music only on the first frame
			//the reason we are using state_timer is because window_timer is constantly reset
			//get_local_setting(3) reffers to the music's volume

			// "i would have used the cur_loop_sound variable but the taunt is spammable, making the music layer on itself" - bar-kun
			if (state_timer == 1) sound_play(alt_cur == 21 ? sound_get("mus_slaughter") : sound_get("mus_onlyyou"), true, 0, get_local_setting(3));
			suppress_stage_music(0, 1);

			if (window_timer == window_end) set_window(-1); //loops back around
			
		}
		else set_state(PS_IDLE);
		break;
}


//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;

	//we need this so if we put an "illegal" value it will not crash the game
	window_num = window;

	//speed resetting - horizontally
	switch (get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE))
	{
		case 0: hsp += get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //adds speed
		case 1: case 2: hsp = get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //sets speed for the first frame/the entire window
	}

	//speed resetting - vertically
	switch (get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE))
	{
		case 0: vsp += get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //adds speed
		case 1: case 2: vsp = get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //sets speed for the first frame/the entire window
	}
}
#define do_particle
{
	var _spr = argument[0], _length = argument[1], _xpos = argument[2], _ypos = argument[3];
	var _dir = argument_count > 4 ? argument[4] : 0;
	var _xscale = argument_count > 5 ? argument[5] : 1;
	var _yscale = argument_count > 6 ? argument[6] : 1;
	var _angle = argument_count > 7 ? argument[7] : 0;
	var _layer = argument_count > 8 ? argument[8] : -1;
	var _anim_img = argument_count > 9 ? argument[9] : true;
	var _hsp = argument_count > 10 ? argument[10] : 0;
	var _vsp = argument_count > 11 ? argument[11] : 0;
	var _torque = argument_count > 12 ? argument[12] : 0;
	var _alpha = argument_count > 13 ? argument[13] : 1;
	var _anim_alpha = argument_count > 14 ? argument[14] : 0;
	var _color = argument_count > 15 ? argument[15] : c_white;
	var _filled = argument_count > 16 ? argument[16] : false;
    var _shader = argument_count > 17 ? argument[17] : false;
	var _img = argument_count > 18 ? argument[18] : 0;

	var new_part = {
		spr: _spr,
		xpos: _xpos,
		ypos: _ypos,
		hsp: _hsp,
		vsp: _vsp,
		dir: _dir,
		angle: _angle,
		torque: _torque,
		xscale: _xscale,
		yscale: _yscale,
		alpha: _alpha,
		anim_alpha: _anim_alpha,
		color: _color,
		filled: _filled,
        shader: _shader,
		layer: _layer,
		length: _length,
		img: _img,
		anim_img: _anim_img,
		timer: 0
    };
    array_push(fx_part, new_part);
}
//custom attack grid example - Looping window X times (by Bar-Kun)
#define custom_attack_grid
{
    var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES); //looping window for X times - we set this up inside the different conditions
    var window_type_value = get_window_value(attack, window, AG_WINDOW_TYPE); //check the type of the window, helps condense the code a bit
    var window_loop_can_hit_more = get_window_value(attack, window, AG_WINDOW_LOOP_REFRESH_HITS); //checks if the loop should refresh hits or not

    //make sure the player isn't in hitpause
    if (!hitpause)
    {
        //make sure the window is in type 9 or 10
        if (window_type_value == 9 || window_type_value == 10)
        {
            //checks the end of the window
            if (window_timer == window_end)
            {
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0)
                {
                    if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                    window_loops ++; //at the start of the window, count a loop up
                }

                //when all the loops are over, go to the next window and reset the loop value
                //if it's window type 10, it should stop the loop prematurely
                if (window_loops > window_loop_value-1 || window_type_value == 10 && !free)
                {
                    destroy_hitboxes();
                    if (window < window_last)
                    {
                        window += 1;
                        window_timer = 0;
                    }
                    else set_state(free ? PS_IDLE_AIR : PS_IDLE);
                    window_loops = 0;
                }
            }
            else if (window_loop_value == 0 && window_loop_can_hit_more) attack_end(attack);
            //if we aren't using the AG_WINDOW_LOOP_TIMES custom attack grid index we can just make it loop forever
            //this is how the game usually treats window type 9
        }
    }
}
#define workshop_compatibilities
{
	//sonic rainbow trick workshop compatibility
	if (attack == sonic_rainbowring_atk)
	{
		iasa_script(); //lets character cancel out of the animation at any point
		if (vsp > 0 && window == 3) //window 3 is the window specified for the trick hold pose
		{
			window ++;
			window_timer = 0;
		}
		if (window > 1 && !free) set_state(PS_LANDING_LAG);
	}

	//final smash buddy workshop compatibility
	if (attack == fs_char_attack_index)
	{
		can_fast_fall = false; //prevents fastfalling
		can_move = false; //prevents moving left and right
		hsp = 0; //stop character on both axis
		vsp = 0;
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);

		switch (window)
		{
			case 1: //moves tester to the proper location (also needs the variables to be set up again)
				if (window_timer <= 2)
				{
					start_y_off = y;
					end_y_off = y-48;
				}
				else y = lerp(start_y_off, end_y_off, window_timer/window_end);
				break;
			case 3: //spawns hit fx before projectile is shot
				if (window_timer == 5) spawn_hit_fx(x + 32 * spr_dir, y - 32, fx_pow_hit[1]);
			case 2: case 4: //keep tester held up (also includes window 3)
				y = end_y_off;
				break;
			case 5: //move tester back down
				y = lerp(end_y_off, start_y_off, window_timer/window_end);
				break;
		}
	}
}