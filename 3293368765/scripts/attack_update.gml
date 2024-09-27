// WILL CANCELS

if (has_rune("B") && move_cooldown[AT_NSPECIAL_2] <= 0 && attack_pressed && special_pressed && !hitpause && state_timer < 6 &&
(attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_JAB || attack == AT_NAIR)) {
	set_attack(AT_NSPECIAL_2);
	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE)
}

if(attack == AT_NSPECIAL_2) move_cooldown[AT_NSPECIAL_2] = 50

if (has_hit && will_cancel && !hitpause){
	can_special = true;
}

// if (special_pressed && will_cancel && !hitpause) {
// 	if (!up_down || up_down && uspec_uses >= 1){
//     	will_cancel = 0;
//     	will_lvl = (will_lvl) - 1;
//     	will_charge = (will_charge) - 600;
//     	sound_play(asset_get("mfx_star"));
//     	can_uspec = true;
// 	}
// }

//B - Reversals
if (attack == AT_NSPECIAL ||attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    can_fast_fall = false;
    //will_cancel = 0;

    if(attack != AT_NSPECIAL) {
      trigger_b_reverse();
    }
}

//DAIR Bounce
if (attack==AT_DAIR) {
  if(window == 2 && has_hit && !hitpause && !fast_falling){
  	vsp = -6;
    window = 4;
    window_timer = 0;
    destroy_hitboxes();
    }
}


//DSPECIAL
if(attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 20 + (free * 10);
	if window == 3 && free && !has_rune("H") {
		hsp = clamp(hsp, -6, 6);
	}
	if(has_rune("H")){
		if window >= 2 && !hitpause {
			dspec_cancel = true;
			iasa_script();
			can_crouch = false;
			can_walk = false;
		}
	}
}

//DTILT
if(attack == AT_DTILT){
	hsp = clamp(hsp, -8, 8);
}

if(attack == AT_JAB){
	if((!has_hit_player || was_parried) && (image_index == 6 || image_index == 14)){
		can_dash = true;
		can_jump = true;
		can_walk = true;
	}
}

//USPECIAL
if (attack == AT_USPECIAL) {
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7 * !has_hit);
	if has_hit{
		can_uspec = true;
	}
	
  //Prevents fast-falling.
  can_fast_fall = false;

  var wall_jump_lockout_windows = [10, 11, 13, 14, 16, 17]; //Windows where Teenah can't wall jump.

  if(!(array_find_index(wall_jump_lockout_windows, window)+1)) {
    can_wall_jump = true;
  } else {
    can_wall_jump = false;
  }
  
  //LIVE AND LEARN
  if (window == 3 && taunt_pressed) {
    attack = AT_TAUNT_2;
    set_window(1);
    hurtboxID.sprite_index = sprite_get("lnl_hurt")
  }

  //Sets other variables based on where the move currently is.
  if (window > 4) {
      can_move = false;
  }

  if (window >= 3 && window <= 4){
      if(has_hit && !hitpause) {
        can_jump = true;
      }
    } 
    
    if(window == 4 && !free) {
      set_window(5);
    }
    
    //Simulates landing lag.
    if((window == 3 || window == tn_uspec_down_window + 1 || window == tn_uspec_down_window + 2 || window == tn_uspec_side_window + 2 || window == tn_uspec_up_window + 2) && !free) {
      destroy_hitboxes();
      set_window(5);
    }

    //Simulates edge cancel.
    if(window == 5 && free) {
      set_state(PS_IDLE_AIR);
    }

    //If in endlag windows, cancel into 2nd stage attack windows on directional special press.
    if(window == 2 && has_hit && !hitpause || window == 3 || window == 4) {
      if(down_down && special_pressed) {
        set_window(tn_uspec_down_window);
        destroy_hitboxes();
        sound_play(asset_get("sfx_absa_whip_charge"));
        can_uspec = true;
        
        if(spr_dir == -1 && right_down || spr_dir == 1 && left_down) {
          spr_dir *= -1;
        }
      }

      else if(up_down && special_pressed) {
        set_window(tn_uspec_up_window);
        destroy_hitboxes();
        
        if(spr_dir == -1 && right_down || spr_dir == 1 && left_down) {
          spr_dir *= -1;
        }
      }

      else if((right_down || left_down) && special_pressed) {
        set_window(tn_uspec_side_window);
        destroy_hitboxes();

        if(spr_dir == -1 && right_down || spr_dir == 1 && left_down) {
          spr_dir *= -1;
        }
      }
    }
    
    if(window == 11 && !hitpause){
    	if (place_meeting(x + hsp + 2 * spr_dir, y, asset_get("par_block")) && free && !hitpause) {
            for (var i = 1; i < 24; i++){
                if (!place_meeting(x + hsp + 2 * spr_dir, y- i , asset_get("par_block"))) {
                    y -= i;
                    if hsp == 0 {
                    	hsp = 7 * spr_dir;
                    }
                    break;
                }
            }
        }
    }

    //Forward Attack Behavior --- Grab code provided by Mawral
    //Grab
    // if(window >= tn_uspec_side_window && window <= tn_uspec_side_window + 2) {

    // }

    //Throw
    if(window >= tn_uspec_throw_window && window <= tn_uspec_throw_window + 2) {
      //first, drop the grabbed player if they somehow escaped hitstun.
      if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
        grabbed_player_obj = noone;
      }

      else if(window == tn_uspec_throw_window) {
        //keep the grabbed player in hitstop until the grab is complete.
        grabbed_player_obj.hitstop = 2;
        grabbed_player_obj.hitpause = true;
        
        //if this is the first frame of a window, store the grabbed player's relative position.
        if (window_timer <= 1) {
          grabbed_player_relative_x = grabbed_player_obj.x - x;
          grabbed_player_relative_y = grabbed_player_obj.y - y;
        }
        
        //on the first window, pull the opponent into the grab.
        if (window == tn_uspec_throw_window) { 
          //change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
          var pull_to_x = 30 * spr_dir;
          var pull_to_y = 0;
          
          //using an easing function, smoothly pull the opponent into the grab over the duration of this window.
          var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
          grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
          grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
        }
        //the above block can be copied for as many windows as necessary.
        //e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
      }

      //Turn around on throw.
      if(window == tn_uspec_throw_window && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        spr_dir *= -1;
      }
    } else {
      //drop the grabbed player if this is the last window of the attack.
      grabbed_player_obj = noone;
    }
    if (window == tn_uspec_throw_window + 1) {
    	grabbed_player_obj.x = x + 25 * spr_dir;
        grabbed_player_obj.y = y - 20;
    }

    //Down Attack Behavior
    if(window >= tn_uspec_down_window && window <= tn_uspec_down_window + 2) {
      if(window == tn_uspec_down_window) {
        has_hit = false;
      }
      //Bounce when hits.
      if(window == tn_uspec_down_window + 1) {
        if(has_hit && !hitpause) {
          set_window(tn_uspec_down_window + 3);
          destroy_hitboxes();
          vsp = get_window_value(attack, window, AG_WINDOW_VSPEED)
          hsp = get_window_value(attack, window, AG_WINDOW_HSPEED) * spr_dir
        }
      }
    }

    //Advance window if within one of the 2nd stage window groups.
    if(window > 5 && ((window >= tn_uspec_down_window && window <= tn_uspec_down_window + 1) ||
                      (window >= tn_uspec_side_window && window <= tn_uspec_side_window + 1) ||
                      (window >= tn_uspec_throw_window && window <= tn_uspec_throw_window + 1) ||
                      (window >= tn_uspec_up_window && window <= tn_uspec_up_window + 1)) &&
                      window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
      window += 1;
      window_timer = 0;
      can_fast_fall = false;
      can_move = false;
    }
}

//FSPECIAL
if (attack == AT_FSPECIAL) {
  // If player is holding up at end of startup, angle the move upwards.
  if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && up_down) {
    set_window(4);
  }

  //Spawn VFX as she snaps.
  //Forward
  if(window == 2 && window_timer == 2) {
    var _x = 95 * spr_dir;
    var _y = -44;
    spawn_hit_fx(x+_x, y+_y, fx_tn_fsp_mid);
  }
  //Up
  if(window == 4 && window_timer == 2) {
    var _x = 81 * spr_dir;
    var _y = -88;
    spawn_hit_fx(x+_x, y+_y, fx_tn_fsp_hi);
  }

  //Move on to endlag at the end of forward snap.
  if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    set_window(6);
  }

    // if (window == 1 && window_timer == 1 && will_lvl > 0){
    //     will_lvl = 0;
    //     will_charge = 0;
    // }
}

//Arguably bad coding practice, but easier to read
if (attack == AT_FSPECIAL_AIR) {
  //Can't air control unless in endlag.
  if(window != 8) {
    can_fast_fall = false;
    can_move = false;
  }
  //Ground Conversion
  if (window == 1 && !free) {
		attack = AT_FSPECIAL;
		hurtboxID.sprite_index = sprite_get("fspecial_hurt")
	}
	
  //If player is holding up or down at end of startup, angle the move appropriately.
  if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    if(up_down) {
      set_window(4);
    } else if(down_down) {
      set_window(6);
    }
  }

  //Spawn VFX as she snaps.
  //Forward
  if(window == 2 && window_timer == 2) {
    var _x = 95 * spr_dir;
    var _y = -44;
    spawn_hit_fx(x+_x, y+_y, fx_tn_fsp_mid);
  }
  //Up
  if(window == 4 && window_timer == 2) {
    var _x = 81 * spr_dir;
    var _y = -88;
    spawn_hit_fx(x+_x, y+_y, fx_tn_fsp_hi);
  }
  //Down
  if(window == 6 && window_timer == 2) {
    var _x = 81 * spr_dir;
    var _y = -8;
    spawn_hit_fx(x+_x, y+_y, fx_tn_fsp_low);
  }

  //Move on to endlag at the end of forward or up snap.
  if((window == 3 || window == 5) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    set_window(8);
  }
}

//if Air Nspecial hits the ground, convert to normal Nspecial
if (attack == AT_NSPECIAL_AIR){
	if !free {
	attack = AT_NSPECIAL;
		hurtboxID.sprite_index = sprite_get("nspecial_hurt")
	}
  //Busted code can't apply aerial vspeed by itself
  if (window >= 5 && window <=7 && window_timer == 2 && !hitpause){
    vsp = (-window);
  }
} else if (attack == AT_NSPECIAL){ //if Ground Nspecial goes airborn, convert to air Nspecial
	if free {
	attack = AT_NSPECIAL_AIR;
		hurtboxID.sprite_index = sprite_get("nspecialair_hurt")
	}
  //Busted code can't apply aerial vspeed by itself
  //if (window >= 5 && window <=7 && window_timer == 2){
  //  vsp = (-window);
  //}
}

//USTRONG Jump Cancel
if (attack==AT_USTRONG) {
    can_fast_fall = false;
    can_move = false;
    
    if (window = 3 && has_hit == true) {
        set_state(PS_IDLE_AIR);
    }
}

//NSPECIAL
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) {
  trigger_wavebounce();

  //Checks for and consumes will charge, advances window
  if(window == 2 || window == 3){
  	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && will_lvl > 0 && special_down) {
    //tn_nspec_will_charge = true;
    will_lvl = (will_lvl) - 1;
    will_charge = (will_charge) - 600;
    sound_play(asset_get("mfx_star"));
    window = (window) + 1;
  	}
  }
  
  	//Attack on release of Special button
  	if (window >= 2 && window <= 4 && special_down == false){
  		window = window + 3;
  		window_timer = 0;
  	}
    
  //Attack ends when Release window is over
  if (window >= 5 && window <= 7){
  	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
  		set_state (PS_IDLE);
  	}
  }
}

if(attack == AT_TAUNT_2){
	if(window >= 3) can_wall_jump = true;
}

//FX DRAW CHARGE LVL 3
	if (attack == AT_NSPECIAL && window == 3 && window_timer %11 == 1){
		spawn_dust_fx(x-4*spr_dir, y, sprite_get("landingdust"), 19);
	}
	if (attack == AT_NSPECIAL && window == 4 && get_gameplay_time() %7 == 1){
		spawn_dust_fx(x-4*spr_dir, y, sprite_get("landingdust"), 7);
	}


// Wavebounce code from the SSL template.
#define trigger_wavebounce() {
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}

#define set_window() {
    window = argument0;
    window_timer = 1;
}