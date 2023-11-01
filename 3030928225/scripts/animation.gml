//animation.gml
//this script runs every frame, but will also run last in line after all the other update scripts
//we use this script to mess more graphical things

//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if (abs(hud_offset) < 1) hud_offset = 0;

// Do the special visual when charging grounded strongs
if ((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR)) {
	switch (attack) {
		case AT_FSTRONG :
			if ((!must_complete_attack)
				&& ((window == fstrong_charging_window)
					|| (window == fstrong_bonus_charging_window)))
			{
				// Just for fun, stay still but keep hopping if both left and right are held down
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					hsp = -stance_speed;
				} else if (right_down) {
					hsp = stance_speed;
				}
				if (left_down || right_down) {
					sprite_index = sprite_get("stancestr");
					image_index = floor(stance_image_timer / stance_frames_length);
					hurtboxID.sprite_index = sprite_get("stancestr_hurt");
					stance_image_timer++;
					stance_image_timer %= stance_frames * stance_frames_length;
				} else {
					hurtboxID.sprite_index = sprite_get("fstrong_hurt");
					stance_image_timer = 0;
				}
			} else {
				stance_image_timer = 0;
				sprite_index = sprite_get("fstrong");
				hurtboxID.sprite_index = sprite_get("fstrong_hurt");
			}
			
			if (window == fstrong_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			}
			break;
		case AT_USTRONG_2 :
			if (was_fully_charged) {
				sprite_index = sprite_get("ustrong2");
			} else {
				sprite_index = sprite_get("ustrong");
			}
			hurtboxID.sprite_index = sprite_get("ustrong_hurt");
			break;
		case AT_USTRONG :
			if (was_fully_charged) {
				sprite_index = sprite_get("ustrong2");
			} else {
				sprite_index = sprite_get("ustrong");
			}
			hurtboxID.sprite_index = sprite_get("ustrong_hurt");
			if ((!must_complete_attack)
				&& ((window == ustrong_charging_window)
					|| (window == ustrong_bonus_charging_window)))
			{
				// Just for fun, stay still but keep hopping if both left and right are held down
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					hsp = -stance_speed;
				} else if (right_down) {
					hsp = stance_speed;
				}
				if (left_down || right_down) {
					sprite_index = sprite_get("stancestr");
					image_index = floor(stance_image_timer / stance_frames_length);
					hurtboxID.sprite_index = sprite_get("stancestr_hurt");
					stance_image_timer++;
					stance_image_timer %= stance_frames * stance_frames_length;
				} else {
					hurtboxID.sprite_index = sprite_get("ustrong_hurt");
					stance_image_timer = 0;
				}
			} else {
				stance_image_timer = 0;
				if (was_fully_charged) {
					sprite_index = sprite_get("ustrong2");
				} else {
					sprite_index = sprite_get("ustrong");
				}
				hurtboxID.sprite_index = sprite_get("ustrong_hurt");
			}
			
			if (window == ustrong_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			}
			break;
		case AT_DSTRONG :
			if ((!must_complete_attack)
				&& ((window == dstrong_charging_window)
					|| (window == dstrong_bonus_charging_window)))
			{
				// Just for fun, stay still but keep hopping if both left and right are held down
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					hsp = -stance_speed;
				} else if (right_down) {
					hsp = stance_speed;
				}
				if (left_down || right_down) {
					sprite_index = sprite_get("stancestr");
					image_index = floor(stance_image_timer / stance_frames_length);
					hurtboxID.sprite_index = sprite_get("stancestr_hurt");
					stance_image_timer++;
					stance_image_timer %= stance_frames * stance_frames_length;
				} else {
					hurtboxID.sprite_index = sprite_get("dstrong_hurt");
					stance_image_timer = 0;
				}
			} else {
				stance_image_timer = 0;
				sprite_index = sprite_get("dstrong");
				hurtboxID.sprite_index = sprite_get("dstrong_hurt");
			}
			
			if (window == dstrong_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			}
			break;
		case AT_NSPECIAL :
			if ((!must_complete_attack)
				&& ((window == nspecial_charging_window)
					|| (window == nspecial_bonus_charging_window)))
			{
				// Just for fun, stay still but keep hopping if both left and right are held down
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					hsp = -stance_speed;
				} else if (right_down) {
					hsp = stance_speed;
				}
				if (left_down || right_down) {
					if (!free) {
						// Play the backwards animation if moving backwards, otherwise do the forwards one
						if ((left_down && !right_down && (spr_dir > 0))
							|| (right_down && !left_down && spr_dir < 0))
						{
							sprite_index = sprite_get("stancespback");
							hurtboxID.sprite_index = sprite_get("stancespback_hurt");
						} else {
							sprite_index = sprite_get("stancespfoward");
							hurtboxID.sprite_index = sprite_get("stancespfoward_hurt");
						}
						image_index = floor(stance_image_timer / stance_frames_length);
						stance_image_timer++;
						stance_image_timer %= stance_frames * stance_frames_length;
					}
				} else {
					stance_image_timer = 0;
					hurtboxID.sprite_index = sprite_get("nspecial_hurt");
				}
			} else {
				stance_image_timer = 0;
				sprite_index = sprite_get("nspecial");
				hurtboxID.sprite_index = sprite_get("nspecial_hurt");
			}
			
			if (window == nspecial_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			}
			break;
		case AT_NSPECIAL_AIR :
			if ((!must_complete_attack) && (window <= nspecial_air_bonus_charging_window)) {
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					if (free && (spr_dir < 0)) {
						can_move = true;
					} else {
						hsp = -stance_speed;
					}
				} else if (right_down) {
					if (free && (spr_dir > 0)) {
						can_move = true;
					} else {
						hsp = stance_speed;
					}
				}
			}
			
			// Bounce back on a certain frame
			if ((window == nspecial_air_uncharged_window) || (window == nspecial_air_charged_window)) {
				if (window_timer == 1) {
					vsp = -3;
					hsp = -spr_dir * 2
				}
			}
			
			if (window == nspecial_air_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			} else {
				stance_image_timer = 0;
				sprite_index = sprite_get("nspecial_air");
				hurtboxID.sprite_index = sprite_get("nspecial_air_hurt");
			}
			break;
		case AT_FSPECIAL :
			if ((!must_complete_attack)
				&& ((window ==fspecial_charging_window)
					|| (window ==fspecial_bonus_charging_window)))
			{
				// Just for fun, stay still but keep hopping if both left and right are held down
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					hsp = -stance_speed;
				} else if (right_down) {
					hsp = stance_speed;
				}
				if (left_down || right_down) {
					if (fspecial_whip_spin_sound_curr != noone) {
					    sound_stop(fspecial_whip_spin_sound_curr);
					    fspecial_whip_spin_sound_curr = noone;
					}
					if (!free) {
						// Play the backwards animation if moving backwards, otherwise do the forwards one
						if ((left_down && !right_down && (spr_dir > 0))
							|| (right_down && !left_down && spr_dir < 0))
						{
							sprite_index = sprite_get("stancespback");
							hurtboxID.sprite_index = sprite_get("stancespback_hurt");
						} else {
							sprite_index = sprite_get("stancespfoward");
							hurtboxID.sprite_index = sprite_get("stancespfoward_hurt");
						}
						image_index = floor(stance_image_timer / stance_frames_length);
						stance_image_timer++;
						stance_image_timer %= stance_frames * stance_frames_length;
					}
				} else {
					if ((window ==fspecial_bonus_charging_window) && (fspecial_whip_spin_sound_curr == noone)) {
					    fspecial_whip_spin_sound_curr = sound_play(fspecial_whip_spin_sound_fx, true);
					}
					stance_image_timer = 0;
					hurtboxID.sprite_index = sprite_get("fspecial_hurt");
				}
			} else {
				if (fspecial_whip_spin_sound_curr != noone) {
				    sound_stop(fspecial_whip_spin_sound_curr);
				    fspecial_whip_spin_sound_curr = noone;
				}
				stance_image_timer = 0;
				sprite_index = sprite_get("fspecial");
				hurtboxID.sprite_index = sprite_get("fspecial_hurt");
			}
			
			if (window ==fspecial_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			}
			break;
		case AT_DSPECIAL :
			if ((!must_complete_attack)
				&& ((window ==dspecial_charging_window)
					|| (window ==dspecial_bonus_charging_window)))
			{
				// Just for fun, stay still but keep hopping if both left and right are held down
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					hsp = -stance_speed;
				} else if (right_down) {
					hsp = stance_speed;
				}
				if (left_down || right_down) {
					if (!free) {
						// Play the backwards animation if moving backwards, otherwise do the forwards one
						if ((left_down && !right_down && (spr_dir > 0))
							|| (right_down && !left_down && spr_dir < 0))
						{
							sprite_index = sprite_get("stancespback");
							hurtboxID.sprite_index = sprite_get("stancespback_hurt");
						} else {
							sprite_index = sprite_get("stancespfoward");
							hurtboxID.sprite_index = sprite_get("stancespfoward_hurt");
						}
						image_index = floor(stance_image_timer / stance_frames_length);
						stance_image_timer++;
						stance_image_timer %= stance_frames * stance_frames_length;
					}
				} else {
					stance_image_timer = 0;
					hurtboxID.sprite_index = sprite_get("dspecial_hurt");
				}
			} else {
				stance_image_timer = 0;
				sprite_index = sprite_get("dspecial");
				hurtboxID.sprite_index = sprite_get("dspecial_hurt");
			}
			
			if (window ==dspecial_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			}
			break;
		case AT_USPECIAL_GROUND :
			if ((window == uspecial_uncharged_hide_window)
				|| (window == uspecial_charged_hide_window))
			{
				visible = false;
				invincible = true;
			} else {
				visible = true;
				invincible = false;
			}
		
			if ((!must_complete_attack)
				&& ((window == uspecial_charging_window)
					|| (window == uspecial_bonus_charging_window)))
			{
				// Just for fun, stay still but keep hopping if both left and right are held down
				if (left_down && right_down) {
					hsp = 0;
				} else if (left_down) {
					hsp = -stance_speed;
				} else if (right_down) {
					hsp = stance_speed;
				}
				if (left_down || right_down) {
					if (!free) {
						// Play the backwards animation if moving backwards, otherwise do the forwards one
						if ((left_down && !right_down && (spr_dir > 0))
							|| (right_down && !left_down && spr_dir < 0))
						{
							sprite_index = sprite_get("stancespback");
							hurtboxID.sprite_index = sprite_get("stancespback_hurt");
						} else {
							sprite_index = sprite_get("stancespfoward");
							hurtboxID.sprite_index = sprite_get("stancespfoward_hurt");
						}
						image_index = floor(stance_image_timer / stance_frames_length);
						stance_image_timer++;
						stance_image_timer %= stance_frames * stance_frames_length;
					}
				} else {
					stance_image_timer = 0;
					hurtboxID.sprite_index = sprite_get("uspecial_hurt");
				}
			} else {
				stance_image_timer = 0;
				sprite_index = sprite_get("uspecial");
				hurtboxID.sprite_index = sprite_get("uspecial_hurt");
			}
			
			if (window == uspecial_stancel_window) {
				sprite_index = sprite_get("stancle");
				hurtboxID.sprite_index = sprite_get("stancle_hurt");
			}
			break;
		default :
			stance_image_timer = 0;
			break;
	}


	// Manage grabbed enemy player position
	if (attack == AT_FSPECIAL) {
		// Prevents messing with previously grabbed opponents
		if ((attack != AT_FSPECIAL) || (window > 1)) {
		    holding_someone = false;
		    // Try to make sure nobody else can grab who we're holding
			var fspecial_lerp_window = (window == fspecial_reel_hit_window);
			var fspecial_current_window_length = 7; //DECEPTION >:) //get_window_value(attack, fspecial_reel_hit_window, AG_WINDOW_LENGTH);
			var fspecial_current_window_timer = window_timer;
		    with (oPlayer) {
			//print_debug("SQUIGLY_HOLDER_ID = " + string(SQUIGLY_HOLDER_ID) + ", other.grab_hitbox = " + string(other.grab_hitbox));
		        if (SQUIGLY_HOLDER_ID == other.id) {
                	spr_dir = -other.spr_dir;
		            other.holding_someone = true;
		            // Prevent the opponent from acting
		            set_state(PS_HITSTUN);
		            // Not sure what the difference between this and setting state to hitpause is
		            hitpause = true;
		            // This is how many frames to stay in hitpause. Refresh it to 2 every cycle of this move
		            hitstop = 10;
		            
		            
		            // Determine the offset needed to appear where the holder is holding this player
		            if ((other.grab_hitbox != noone) && (instance_exists(other.grab_hitbox))) {
		            	if (fspecial_lerp_window && (fspecial_current_window_timer < fspecial_current_window_length)) {
							x = ease_linear(x, other.grab_hitbox.x + other.grab_hitbox.spr_dir * 12, fspecial_current_window_timer, fspecial_current_window_length);
							y = ease_linear(y, other.grab_hitbox.y + 50, fspecial_current_window_timer, fspecial_current_window_length);
		            	} else {
		            		x = other.grab_hitbox.x + other.grab_hitbox.spr_dir * 12; // -5
		            		y = other.grab_hitbox.y + 50; // 55
		            	}
		            }/* else {
		            	SQUIGLY_HOLDER_ID = noone;
		    			other.holding_someone = false;
						hitstop = other.fspecial_stun_time;
						//vsp = -3;
		            }*/
		            
		            // Place the opponent at perfect range after the grab
		            //print_debug("end_reeling_immediately = " + string(other.end_reeling_immediately));
	            	//other.stun_counter = other.fspecial_stun_time;
		            if (other.end_reeling_immediately
		            	&& (other.window_timer == 1))
		            {
		        		//print_debug("reeling complete");
		            	//other.stun_counter = other.fspecial_stun_time;
		            	x -= other.spr_dir * 16;// other.fspecial_charged_initial_speed;
		            }
		        }
		    }
		}
	} else if (attack == AT_DSPECIAL_AIR) {
		// Prevents messing with previously grabbed opponents
		if ((attack != AT_DSPECIAL_AIR) || (window > 1)) {
		    holding_someone = false;
		    var dspecial_lerp_window = (window == dspecial_air_diving_window);
			var dspecial_current_window_length = 15; //DECEPTION >:) //get_window_value(attack, fspecial_reel_hit_window, AG_WINDOW_LENGTH);
			var dspecial_current_window_timer = window_timer;
		    // Try to make sure nobody else can grab who we're holding
		    with (oPlayer) {
			//print_debug("SQUIGLY_HOLDER_ID = " + string(SQUIGLY_HOLDER_ID) + ", other.grab_hitbox = " + string(other.grab_hitbox));
		        if (SQUIGLY_HOLDER_ID == other.id) {
        			//print_debug("May hold opponent");
                	spr_dir = -other.spr_dir;
		            other.holding_someone = true;
		            // Prevent the opponent from acting
		            set_state(PS_HITSTUN);
		            // Not sure what the difference between this and setting state to hitpause is
		            hitpause = true;
		            // This is how many frames to stay in hitpause. Refresh it to 2 every cycle of this move
		            hitstop = 1;
		            
		            // Determine the offset needed to appear where the holder is holding this player
		            if ((other.window == other.dspecial_air_diving_window)
		            	|| (other.window == other.dspecial_air_kick_flip_windup_window)
		            	|| (other.window == other.dspecial_air_charged_window))
		            {
		            	//print_debug("Holding opponent");
		            	if (dspecial_lerp_window && (dspecial_current_window_timer < dspecial_current_window_length)) {
							x = ease_linear(x, other.x + other.spr_dir * 35, dspecial_current_window_timer, dspecial_current_window_length);
							y = ease_linear(y, other.y - 20, dspecial_current_window_timer, dspecial_current_window_length);
		            	} else {
			            	x = other.x + other.spr_dir * 35;
			            	y = other.y - 20;
		            	}
		            //} else if (y + other.vsp >= room_height)
		            //{
		            } else if (((other.window == other.dspecial_air_kick_flip_window)
		            			&& (other.window_timer == 1))
		            			)
		            {
		            	// Release opponent at the right time, or if we're about to SD
		            	print_debug("Release opponent(s)");
		            	other.let_everyone_go();
		            }
		        }
		    }
		}
	} else if ((attack != AT_FSPECIAL) && (attack != AT_DSPECIAL)) {
	    //print_debug("Drop what you're holding!");
		/*with (asset_get("oPlayer")) {
		    if (SQUIGLY_HOLDER_ID == other.id) {
		        SQUIGLY_HOLDER_ID = noone;
		    }
		}
		stun_counter = 0;*/
		if ((grab_hitbox != noone) && (instance_exists(grab_hitbox))) {
		    grab_hitbox.destroyed = true;
		}
		if ((non_grab_hitbox != noone) && (instance_exists(non_grab_hitbox))) {
		    non_grab_hitbox.destroyed = true;
		}
		if ((dspecial_tail_article != noone) && (instance_exists(dspecial_tail_article))) {
		    with (asset_get("obj_article1")) {
		    	if (other.id == player_id) {
		    	    //print_debug("Counter!");
		    		instance_destroy(id);
		    	}
		    }
		}
		if (fspecial_whip_spin_sound_curr != noone) {
		    sound_stop(fspecial_whip_spin_sound_curr);
		    fspecial_whip_spin_sound_curr = noone;
		}
	}
}




switch (state)
{
	/*case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding (not neccesary to use but it looks nicer)
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;*/
	case PS_WALL_JUMP: //easy clinging (only works if you set can_wall_cling to true in init.gml)
		if (can_wall_cling)
		{
			//makes sure the cling_timer is consistent with the state_timer
			if (state_timer == 0) cling_timer = 0;
			if (clinging) cling_timer = state_timer;
			
			//sets image to the proper index
			if (clinging && image_index >= cling_frame) image_index = cling_frame; //when clinging and the image_index goes over the cling frame, force it back
			else //when not clinging, simply do the animation
			{
				image_index = lerp(
					image_index < cling_frame ? 0 : cling_frame, //depending on if we clinged for enough time to reach the cling frame, the lerp adapts
					image_number, //this is the maximum frame number in the strip
					(state_timer-cling_timer)/walljump_time //checks when the animation starts [state_timer - cling_timer] and for how long with [walljump_time]
				);
			}
		}
		break;
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland

		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);
		//how did i get to this math?
		//	  parry_distance returns the distance which the player was parried from
		//	  if the parry distance is 150 and under, the parried state will be 60 frames long
		//	  if the parry distance is 590 and over, the parried state will be 110 frames long
		//	  590 - 150 = 440 (gap between the min and max affected distances)
		//	  110 - 60 = 50 (gap between the min and max parry stun time)
		//	  440 : 50 = 8.8 (the mulitplier in which parry_distance knows how many frames to add to the parry stun)
		//	  clamp will limit the math to any number in between 60 and 110, the frame limits (otherwise the player may have loop the animation which we don't want)
		//	  state_timer is divided by the complex math above so it dynamically changes the image below

		//the ? in there is essencially an if statement, it checks if [extended_parry_lag] is active or not, and acts accordingly
		//if it isn't active, the parry stun time is [parry_lag]

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN: case PS_CRYSTALIZED:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	sprite_index = sprite_get("hurt");
	image_index = hurt_img;

	if (hurt_img == 5) //PS_TUMBLE and hurtground share a hurt_img index, dan programmed it like that
	{
		if (free) //since hurtground will always be !free, this allows us to rule it out
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1; //this part just animates it properly
		}
	}

	//crystalized is a funny mechanic where it doesn't play nice with not using small_sprites
	//if the character doesn't use small sprites, uncomment this crystalized section (and make sure you have a hurt_crystalized sprite in your sprites folder)
	/*
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
	{
		sprite_index = sprite_get("hurt_crystalized");
		small_sprites = 1;
	}
	else small_sprites = 0;
	*/

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}

//rune F - auto turnaround - walk backwards sprites set
//NOTE: when creating/exporting the sprite, the character should face right unlike the rest of the animations
if (has_rune("F"))
{
	//here we check if we are in the walk state and if we are not facing the same way as the spr_dir
	//if this occurence happens, force a different walk animation
	//also should set the image_index to keep playing - the state_timer forces the animation to keep going
	if (state == PS_WALK && spr_dir != runeF_face_dir)
	{
		sprite_index = sprite_get("walkback_runeF");
		image_index = floor(walk_anim_speed*state_timer);
	}
}

// Function to release all held players
#define let_everyone_go
with (oPlayer) {
    if (SQUIGLY_HOLDER_ID == other.id) {
        SQUIGLY_HOLDER_ID = noone;
    }
}
holding_someone = false;  