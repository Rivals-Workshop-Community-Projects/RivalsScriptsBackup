//La Reina attack_update.gml


//B - Reversals
/* if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
} */


//THE RING CREATION

/* if (grab_victim != noone && !instance_exists("obj_article_solid")){
  instance_create( x+1*spr_dir, y-20, "obj_article_solid" );
} */

// Check if we're grabbing something grabbable.
old_grab_valid = grab_valid;
grab_valid = false;
if instance_exists(grab_victim) {
  if has_hit_player {
    // End the grab if the grabbed player died somehow
    if (!grab_victim.is_a_La_Reina_chair)
    && (grab_victim.state == PS_RESPAWN || grab_victim.state == PS_DEAD) {
      grab_victim.gethit_grabbed = noone;
      grab_victim = noone;
      attack_end();
      window = 20;
    } else {
      grab_valid = true;
    }
  }

  with grab_victim {
    if is_a_La_Reina_chair {
      other.grab_valid = true;

      // disable opposing La Reina's nspecial pull if you grab their chair
      if other.grab_victim != other.myChair {
        if other.grab_victim.gethit_grabbed != noone {
          var opp = other.grab_victim.player_id;
          opp.move_cooldown[AT_NSPECIAL] = max(2, opp.move_cooldown[AT_NSPECIAL]);
        }
      }
    }
  }
}
/* if grab_valid { grab_victim.wrap_time = 9001; grab_victim.state = PS_WRAPPED; } */

////////////////////////////
//JAB, TILTS & DASH ATTACK//
////////////////////////////

if (attack == AT_JAB){
  if window == 1 { // Remove parry stun from jab 1
    set_attack_value(AT_JAB, AG_NO_PARRY_STUN, true);
  } else if window > 3 && window != 8 {
    set_attack_value(AT_JAB, AG_NO_PARRY_STUN, false);
  }
//End from Jab 1
  if (window == 3){
    if (window_timer == 1 && attack_down){
      window = 4;
      window_timer = 0;
    }

    if (window_timer == get_window_value(AT_JAB, window, AG_WINDOW_LENGTH)){
      window = 8;
      window_timer = 0;
    }
  }

//Jab 2 to Jab 3 or end
  if (window == 4){
    if (window_timer == get_window_value(AT_JAB, window, AG_WINDOW_LENGTH)){
      if (attack_down){
        window = 6;
        window_timer = 0;
        attack_end();
      }
      else{
        window = 5;
        window_timer = 0;
      }
    }
  }
  if (window == 5){
    if (attack_pressed){
      window = 6;
      window_timer = 0;
      attack_end();
    }
    if (window_timer == get_window_value(AT_JAB, window, AG_WINDOW_LENGTH)){
      window = 8;
      window_timer = 0;
    }
  }

//Loop back to Jab 2 or end
  if (window == 6){
    if (window_timer == get_window_value(AT_JAB, window, AG_WINDOW_LENGTH)){
      if (attack_down){
        window = 4;
        window_timer = 0;
        attack_end();
      }
      else{
        window = 7;
        window_timer = 0;
      }
    }
  }
  if (window == 7){
    if (attack_pressed){
      window = 4;
      window_timer = 0;
      attack_end();
    }
    if (window_timer == get_window_value(AT_JAB, window, AG_WINDOW_LENGTH)){
      window = 8;
      window_timer = 0;
    }
  }

//Tilt cancels for jabs 2 & 3
  if (window >= 4 && !hitpause){
    if (attack_pressed){
      if (up_down){
        set_attack(AT_UTILT);
      }
      else if (spr_dir == 1 && right_down){
        set_attack(AT_FTILT);
      }
      else if (spr_dir == -1 && left_down){
        set_attack(AT_FTILT);
      }
      else if (down_down){
        set_attack(AT_DTILT);
      }
    }

    if (up_stick_pressed){
      set_attack(AT_UTILT);
    }
    if (spr_dir == 1 && right_stick_pressed){
      set_attack(AT_FTILT);
    }
    if (spr_dir == -1 && left_stick_pressed){
      set_attack(AT_FTILT);
    }
    if (down_stick_pressed){
      set_attack(AT_DTILT);
    }
  }

}//End of Jab

if (attack == AT_FTILT){
  if (window == 3 && has_hit){
    window_timer = 0;
    window = 4;
  }
}

if (attack == AT_UTILT) {
  if window == 1 && window_timer == 1 {
    sound_play(sound_get("pixabay_utilt_cheer"));
  }
}

if (attack == AT_DATTACK){
  can_wall_jump = true;

  if (vsp < -2 || vsp > 1) {vsp = min(19, vsp + 0.92);} // increases drop speed
  if (window == 1 && window_timer == 1) {
    spawn_base_dust(x, y-(vsp-2), "jump");
  }
  if window == 3 or window == 4 {
    if !free {
      if window == 4 {
        sound_play(asset_get("sfx_land_heavy"));
      } else {
        sound_play(asset_get("sfx_land_med"));
      }
      window_timer = 0; window = 5; destroy_hitboxes() // move to landing window
    } else if (window == 3 && has_hit && hitpause) {
      window = 3; window_timer = 1; // prevent the pop-up from hitting the spike
    }
    if window == 3 {
      if y > dattack_starting_y + 14 { // move to spike window after dropping far enough
        destroy_hitboxes();
        window = 4; window_timer = 0;
      }
    }
    if window == 4 { // spike stuff
      hsp = hsp * 0.9;
      if window_timer >= 10 {can_jump = true;}
      if (has_hit && hitpause) {destroy_hitboxes();window_timer = 0; window = 6;}
    }
  } else if window == 5 { // remove hitboxes and spawn landing dust
    if window_timer == 1 {spawn_base_dust(x, y, "land");}
    destroy_hitboxes()
  } else if window == 6 {
    if !hitpause {
      if window_timer <= 5 {
        //vsp = -6;
      } else {
        window = 7;
      }
    }
  }
}//End of Dash Attack


////////////
//STRONGS//
///////////

if (attack == AT_FSTRONG){

  can_fast_fall = false;

  if (window == 1){
    reset_attack_value( AT_FSTRONG, AG_CATEGORY);
    throw_direction = 1;
  }

  if (window == 2){
    if (window_timer == 2 && !hitpause){
      //sound_play(asset_get("sfx_clairen_hit_med"), false, noone, 0.7, 0.9);
      sound_play(asset_get("sfx_rag_plant_eat"), false, noone, 0.7, 1.0);
    }

    if (grab_valid){
      set_attack_value( AT_FSTRONG, AG_CATEGORY, 2);

      grab_victim.x = x + 92 * spr_dir;
      grab_victim.y = y - 2;
      grab_victim.wrap_time = 9001;
      grab_victim.state = PS_WRAPPED;
    }
  }


  if (window == 3){
    if (grab_valid){
      grab_victim.x = x + 69 * spr_dir;
      grab_victim.y = y - 1;

      //Throw direction detector
      if (spr_dir == 1 && left_down || spr_dir == -1 && right_down){
        throw_direction = 3;
      }
      else if (spr_dir == 1 && right_down || spr_dir == -1 && left_down){
        throw_direction = 1;
      }

      if (window_timer >= 3){
        if (throw_direction == 3){
          window = 4;
          window_timer = 0;
        }
        else if (throw_direction == 1){
          spawn_base_dust(x, y-(vsp-2), "jump"); // spawn some dust
          window = 11;
          window_timer = 0;
        }
      }
    }
    else if (!grab_valid){
      if (window_timer >= 3){
        window = 14;
        window_timer = 0;
      }
    }
}
  //Back throw
  //Startup
  if (window == 4){
    //Bthrow Enemy position
    if (window_timer < 5){
      grab_victim.x = x + 56 * spr_dir;
      grab_victim.y = y + 10;
    }

    if (window_timer >= 5){
      grab_victim.x = x + 52 * spr_dir;
      grab_victim.y = y + 14;
    }

    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
      window = 5;
      window_timer = 0;
      sound_play(asset_get("sfx_clairen_swing_strong"), false, noone, 0.7, 1.3);
    }
  }
  //Jump
  if (window == 5){
    //Bthrow jump
    if (window_timer == 0){
      spawn_base_dust(x, y-(vsp-2), "jump"); // spawn some dust
      vsp = -4;
      hsp = -3 * spr_dir;
    } else {
      if sign(hsp) != sign(spr_dir) { hsp *= 0.95; } // reduce drift
    }
    //Bthrow enemy position
    if (window_timer < 4){
      grab_victim.x = x - 20 * spr_dir;
      grab_victim.y = y - 30;
    }

    if (window_timer >= 4){
      grab_victim.x = x - 30 * spr_dir;
      grab_victim.y = y - 20;
    }


    if (window_timer == 7){
      window = 6;
      window_timer = 0;

      if (fstrong_falling_sound == noone){
        fstrong_falling_sound = sound_play(asset_get("sfx_plasma_field_loop"), true, noone, 0.7, 1.3);
      }
    }
  }
  //Fall loop
  if (window == 6){
      if sign(hsp) != sign(spr_dir) { hsp *= 0.91; } // reduce drift
      grab_victim.x = x - 40 * spr_dir;
      grab_victim.y = y + 5;

      if (window_timer >= 3 && free){
        window_timer = 0;
      }

    //  if (vsp >= 0) {hsp = hsp * 0.95;} // limit horizontal momentum

  }
  //Land
  if (window == 6 && !free){
    spawn_base_dust(x, y, "land"); // spawn some dust
    active_landing_fx = spawn_hit_fx(x, y, hitfx_crown_medland);

    sound_stop(fstrong_falling_sound);
    fstrong_falling_sound = noone;

    window = 7;
    window_timer = 0;

    if (!hitpause){
      vsp = -8;
    }
  }

  //Forward throw

  //Window transitions
  if (window >= 8 && window <= 11){
    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
      window += 1;
      window_timer = 0;
    }
  }

  //Startup
  if (window == 8){
    if (window_timer < 2){
      grab_victim.x = x + 56 * spr_dir;
      grab_victim.y = y + 10;
    }
    if (window_timer >= 2){
      grab_victim.x = x + 52 * spr_dir;
      grab_victim.y = y + 14;
    }
  }
  //Hold
  if (window == 9){
    grab_victim.x = x - 40 * spr_dir;
    grab_victim.y = y - 34;
  }
  //Leanback (unused)
  if (window == 10){
    grab_victim.x = x - 42 * spr_dir;
    grab_victim.y = y - 28;
  }
  //Jump
  if (window == 11){
    if (window_timer == 0){
      vsp = -6;
      hsp = 3 * spr_dir;
      sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 0.9, 1);
    }

    if (window_timer == 2){
      if (fstrong_falling_sound == noone){
        fstrong_falling_sound = sound_play(asset_get("sfx_plasma_field_loop"), true, noone, 0.7, 1.3);
      }
    }

    grab_victim.x = x + 28 * spr_dir;
    grab_victim.y = y - 14;
  }
  //Falling
  if (window == 12){
    grab_victim.x = x + 24 * spr_dir;
    grab_victim.y = y + 16;

    if (vsp >= 0) {hsp = hsp * 0.92;} // limit horizontal momentum

    if (free){
      if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH - 1)){
        window_timer = 0;
      }
    }
    else if (!free){
      active_landing_fx = spawn_hit_fx(x, y, hitfx_crown_bigland);
      window = 13;
      window_timer = 0;
    }

    if (vsp >= 0){
      vsp += 2.5;
    }
  }
  //Landing hit + bounce
  if (window == 13){
    if (window_timer == 1 && !hitpause){
      vsp = -8;
      sound_stop(fstrong_falling_sound);
      fstrong_falling_sound = noone;
    }
  }



}//FSTRONG end bracket

if (attack == AT_USTRONG){

  if (window == 2){

    if (window_timer == 2){
      sound_play(asset_get("sfx_clairen_swing_weak"), false, noone, 0.9, 1.3);
    }

    if (grab_valid){
      grab_victim.x = x + 48 * spr_dir;
      grab_victim.y = y - 64;
      grab_victim.wrap_time = 9001;
      grab_victim.state = PS_WRAPPED;
    }
  }



  if (window == 3){
    if (grab_valid){
      grab_victim.x = x + 48 * spr_dir;
      grab_victim.y = y - 64;
    }


    if (window_timer == 6 && grab_valid){
      window = 6;
      window_timer = 0;
    }
  }

//Additional spaghetti end lag
  if (window == 4){
    if (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH))){
      window = 12;
      window_timer = 0;
    }
  }

  if (window == 12){
    if (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH))){
      window = 13;
      window_timer = 0;
    }
  }
//End of additional spaghetti endlag

  if (window == 5){
      grab_victim.x = x + 32 * spr_dir;
      grab_victim.y = y - 24;


    if (window_timer == get_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH)){
      window += 1;
      window_timer = 0;
    }
  }

  if (window == 6){
    grab_victim.x = x + 32 * spr_dir;
    grab_victim.y = y - 24;

    if (window_timer == get_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH)){
      window += 1;
      window_timer = 0;
    }
  }

  if (window == 7){
    grab_victim.x = x + 68 * spr_dir;
    grab_victim.y = y - 58;

    if (window_timer == get_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH)){
      window += 1;
      window_timer = 0;
    }
  }

  if (window == 8){

    if (window_timer == 1 && !hitpause){
      sound_play(asset_get("sfx_ell_uspecial_explode"), false, noone, 0.25, 0.95);
    }

    if (window_timer == get_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH)){
      window += 1;
      window_timer = 0;
    }
  }

  if (window == 9){
    if (window_timer == get_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH)){
      window += 1;
      window_timer = 0;
    }
  }

  if (window == 10){
    if (window_timer == get_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH)){
      window += 1;
      window_timer = 0;
    }
  }

  // Ensure grab victim stays grabbed even if they're hit
  if grab_valid {
    var final_hitbox = 2;
    var hbwindow = get_hitbox_value( attack, final_hitbox, HG_WINDOW );
    var hbcreation_frame = get_hitbox_value( attack, final_hitbox, HG_WINDOW_CREATION_FRAME );

    if window == hbwindow && window_timer == hbcreation_frame {
      grab_victim.wrap_time = 0;
      grab_victim.gethit_grabbed = noone;
      grab_victim = noone;
    } else {
      grab_victim.state = PS_WRAPPED;
    }
  }

}//USTRONG end bracket

if (attack == AT_DSTRONG){
  /* if window == 3 && window_timer == 1 {
    var frontdust = spawn_base_dust(x+1*spr_dir, y, "dash_start");
    frontdust.spr_dir *= -1;
    var backdust = spawn_base_dust(x-5*spr_dir, y, "dash_start");
  } */
}//DSTRONG end bracket

////////////
//AERIALS//
///////////

if (attack == AT_NAIR){
  if (window == 2 && has_hit && !hitpause){
    window_timer = 0;
    window = 3;
  }
}

if (attack == AT_FAIR){
  if (window == 3){
    if (window_timer == 1){
      sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.7, 1);
    }
  } else if window < 3 {
    fair_sweetspot_volume = .9;
  }
}


if (attack == AT_BAIR){
  if (window == 1){
    reset_attack_value( AT_BAIR, AG_CATEGORY);
  }

  if (window < 6 && grab_valid){
    can_fast_fall = false;
  }

  if (window == 2 && grab_valid){
    set_attack_value( AT_BAIR, AG_CATEGORY, 2);

    grab_victim.wrap_time = 9001;
    grab_victim.state = PS_WRAPPED;

    if (window_timer <= 5){
      grab_victim.x = x - 46 * spr_dir;
      grab_victim.y = y + 10;
    }
    else if (window_timer > 5){
      grab_victim.x = x - 52 * spr_dir;
      grab_victim.y = y + 12;
    }
  }

  if (window == 3 && grab_valid){
    grab_victim.x = x - 52 * spr_dir;
    grab_victim.y = y + 12;

    if (window_timer == 1){
      window = 8;
      window_timer = 0;
    }
  }

//This window goes between windows 3 and 5 on hit
if (window == 8){
  grab_victim.x = x - 30 * spr_dir;
  grab_victim.y = y + 16;

  if (window_timer == get_window_value(AT_BAIR, window, AG_WINDOW_LENGTH)){
    window = 5;
    window_timer = 0;
  }
}

if (window == 5){

    //Player alignment

    if (window_timer == 0 || window_timer == 1){
      grab_victim.x = x + 48 * spr_dir;
      grab_victim.y = y + 14;
    }

    if (window_timer == 2 || window_timer == 3){
      grab_victim.x = x + 44 * spr_dir;
      grab_victim.y = y - 16;
    }

    if (window_timer == 4 || window_timer == 5){
      grab_victim.x = x + 14 * spr_dir;
      grab_victim.y = y - 32;
    }

    if (window_timer == 6 || window_timer == 7){
      grab_victim.x = x - 38 * spr_dir;
      grab_victim.y = y - 36;
    }

//Copter boost
    if (window_timer == 2 && vsp > 0){
      vsp = 0;
    }

    if (window_timer == 3){
        vsp += -2;
    }
    if (window_timer == 4){
        vsp += -3;
    }
    if (vsp < -5){
      vsp = -5;
    }

//Next window
    if (window_timer == get_window_value(AT_BAIR, window, AG_WINDOW_LENGTH)){
      window = 6;
      window_timer = 0;
    }
  }

  if (window == 6 && window_timer == get_window_value(AT_BAIR, window, AG_WINDOW_LENGTH)){
    window = 7;
    window_timer = 0;
  }

  if (window == 7 && window_timer == get_window_value(AT_BAIR, window, AG_WINDOW_LENGTH)){
    spr_dir = spr_dir * -1;
  }

}//End of Bair


if (attack == AT_UAIR){
  //Useful variables
  var uair_window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
  var base_x = round(x + hsp);
  var base_y = round(y + hsp);

  if (window > 3 && vsp >= 0) {hsp = hsp * 0.92;} // limit horizontal momentum

  // Reduce hitpause against the chair
    if instance_exists(grab_victim) && grab_victim.is_a_La_Reina_chair && !has_hit_player {
      reset_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
      var hp = get_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
      set_hitbox_value(attack, 2, HG_BASE_HITPAUSE, round(hp*0.65));
    } else {
      reset_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
    }

  //Anticipation
  if (window == 1 && window_timer == 1){
    reset_attack_value( AT_UAIR, AG_CATEGORY);
    reset_window_value( AT_UAIR, 8, AG_WINDOW_TYPE);
    reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);
    backbreaker_damage = 4;
  }

  //Hold
    if ((window == 2 || window == 3) && grab_valid){
      can_fast_fall = false;
      set_attack_value( AT_UAIR, AG_CATEGORY, 2);

      // small upward jump after landing uair
      if (window_timer == 1 && !hitpause){
        hsp = clamp(hsp, -3, 3); vsp = min(vsp - 2.9, -1);
      }


      var elasticity = 1;
      if window_timer < 3 { elasticity = 3; }
      grab_victim.x = grab_victim.x + (base_x+6*spr_dir - grab_victim.x)/elasticity;
      grab_victim.y = grab_victim.y + (base_y-58 - grab_victim.y)/elasticity;
      grab_victim.wrap_time = 9001;
      grab_victim.state = PS_WRAPPED;

      // move to Grab Transition window
      if (!hitpause) { window = 5;window_timer = 0; }
    }
    // for hitpause animation
    if window == 2 && window_timer == 0 && grab_valid && old_grab_valid {window = 3; window_timer = 0;}
  //Grab transition
  if (window == 5){
    grab_victim.x = base_x - 10*spr_dir;
    grab_victim.y = base_y - 50;

    if (window_timer >= uair_window_length){ window = 6; window_timer = 0;}
    uair_acceleration = 0.1;
    uair_acceleration_acceleration = 0.038;
  }

  //Falling
  if (window == 6){
    if (free) { // Normal behaviour while falling
      grab_victim.x = base_x - 20*spr_dir;
      grab_victim.y = base_y - 50;

      vsp += uair_acceleration;
      uair_acceleration += uair_acceleration_acceleration;
      uair_acceleration_acceleration += 0.001;

      if (window_timer >= uair_window_length*0.8){
        //Scale back breaker damage
        backbreaker_damage = min(backbreaker_damage+1, 12);
        set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, backbreaker_damage);
        window_timer = 0;

      }

    } else { // On landing, transition to next window
      active_landing_fx = spawn_hit_fx(x, y, hitfx_crown_medland);
      window = 7; window_timer = 0;
    }
  }

  //Land
  if (window == 7){
    grab_victim.x = base_x - 4*spr_dir;
    if window_timer <= 3 {
      grab_victim.y = base_y - 20;
    } else {
      grab_victim.y = base_y - 40;
    }

    if (window_timer >= uair_window_length){ window = 8; window_timer = 0; }
  }

  //Cause pratfall if La Reina has summoned the LOYAL FANS twice without touching different ground.
  if (window == 8){
    if (ring_summon_count > 1) && (y > get_stage_data( SD_Y_POS )) {
      attack_end()
      set_attack( AT_USPECIAL );
      hurtboxID.sprite_index = sprite_get("uspecial_hurt");
      window = 9;
      window_timer = 4;
      hsp = -2 * spr_dir; vsp = -10;
    }
  }
}//End of Uair


if (attack == AT_DAIR){
  if (window == 1){
    reset_attack_value( AT_DAIR, AG_CATEGORY);
  }

  if (window == 3 && grab_valid){
    /* if (vsp > 0){
      vsp = 0;
    } */
    hsp *= 0.8;
    vsp = min(1, vsp);

    can_fast_fall = false;
    set_attack_value( AT_DAIR, AG_CATEGORY, 2);

    //GRAB ZONE
    grab_victim.x = x + 20 * spr_dir;
    grab_victim.y = y + 30;
  }

  if (window == 4) && grab_valid {

    if (window_timer < 4){
      grab_victim.x = x + 20 * spr_dir;
      grab_victim.y = y + 26;
    }
    else if (window_timer >= 4){
      grab_victim.x = x + 16 * spr_dir;
      grab_victim.y = y - 70;
    }
  }

  if (window == 5){
    can_fast_fall = true;
    reset_attack_value( AT_DAIR, AG_CATEGORY);
  }
}//End of Dair


////////////
//SPECIALS//
////////////

//Rolling girl, currently on down special
if (attack == AT_NSPECIAL_2){

  //put aerial roll on cooldown until landing if La Reina successfully makes it through the startup
  if (window == 1 && window_timer == (get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH))){
      has_rolling_girl = true;
      move_cooldown[AT_DSPECIAL] = max(70, move_cooldown[AT_DSPECIAL]);
      if instance_exists(myChair) {myChair.shine_timer = myChair.shine_timer_max;}
  }

  if (instance_exists(myChair)){ myChair.outline_opacity += 0.1; } // chair aura

  if(window == 1){
    if (instance_exists(myChair)){
      myChair.window = 5;
      myChair.window_timer = 0;
    }
  } else if window == 2 && window_timer == 1 {
    if (instance_exists(myChair)){
      var delta_x = myChair.x - x;
      var delta_y = myChair.y-30 - y;
      magnet_dash_angle = arctan2(delta_y, delta_x);
    }
    add_afterimages_timer = 18; // activate afterimages.
  }

  if (window == 3){
    has_rolling_girl = true;
    fall_through = true;

    if (instance_exists(myChair)){
      // give speed, but not during hitpause
      if !hitpause{
        var delta_x = magnet_dash_x - x;
        var delta_y = magnet_dash_y - y;
        var angle = arctan2(delta_y, delta_x);

        hsp = cos(magnet_dash_angle) * magnet_dash_speed;
        vsp = sin(magnet_dash_angle) * magnet_dash_speed;
      }

      // jumpcancleable
      if window_timer > 4 {
        can_jump = true;
        var max_horizontal_speed = 9; // 7.5-8 is probably a reasonable value, but let's try this :)
        if jump_pressed && abs(hsp) > max_horizontal_speed {
          hsp = sign(hsp) * max_horizontal_speed;
          add_afterimages_timer = 6;
        }
        vsp = vsp * 1.07
      }

      /* if !hitpause{
        if (distance_to_object(myChair) < 1){
          bounce_off_chair = true;
          window = 4;
          window_timer = 0;
          add_afterimages_timer = 6;
          //myChair.window = 4;
        }
      } */
    }
    if has_hit && !hitpause {
      destroy_hitboxes();
      window = 4; window_timer = 0;
      hsp = hsp * 0.4;
      vsp = -10;
    }
    ledge_snap();
  }//End of window 3

}//End of Nspecial_2

if (attack == AT_NSPECIAL){
  // slow fallspeed slightly. effect slightly decreases with each window.
  if (!down_down){
    vsp = min(vsp, vsp*min(1, 0.85 + 0.02*window));
  }

  if (window == 4){
    if (window_timer == 4){
      myChair = instance_create( x+10*spr_dir, y-160, "obj_article1");
      if free {can_create_air_chair = false; }
      myChair.can_land = true;
      myChair.window = 1; myChair.window_timer = 0;
      //vsp = -10;
    }
  }

}//End of Nspecial

if (attack == AT_FSPECIAL){
  var fspecial_window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
  var fspecial_grab_x = x + (10 * spr_dir) + hsp;
  var fspecial_grab_y = y + vsp - 5;

  // Adjust Speeds
  if (window == 1){
    fspecial_can_edgecancel = false;

    //Reset ability to use the LOYAL FANS & Fthrow angle
    if (window_timer == 1){
      reset_window_value( AT_FTHROW, 3, AG_WINDOW_TYPE);
      reset_window_value( AT_NTHROW, 3, AG_WINDOW_TYPE);
      reset_hitbox_value( AT_FTHROW, 1, HG_ANGLE );
    } else if window_timer == fspecial_window_length {
      var ropes = spawn_hit_fx(x, y, ropes_standalone);
      ropes.depth = depth + 1;
    }

    /* set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt")); */
    fspecial_dash_loops = 0;
    set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
    if (free) {
      hsp = hsp*0.9;
    } else {
      /* hsp = hsp*0.99; */
    }
    can_move = false;
  } else if window == 3 {
    if window_timer <= 3 {hsp = hsp + spr_dir*1;}
  }

  can_wall_jump = (window == 4);

  if (window == 3){
    if window_timer == 1 && fspecial_dash_loops < fspecial_max_dash_loops-1 {
      add_afterimages_timer = 0; // 3
      } // activate afterimages.
      // set decaying dash speed
        var wl1 = get_window_value(attack, 1, AG_WINDOW_LENGTH);
        var wl2 = get_window_value(attack, 2, AG_WINDOW_LENGTH);
        var dash_time = fspecial_window_length * fspecial_max_dash_loops;
        if (window_timer < fspecial_window_length/1.8) {
          if was_parried {dash_time = 15;}
          hsp = max(2, dash_time-(state_timer-(wl1+wl2)))*spr_dir;
        }
      // small amount of vertical directional control
      if up_down {vsp = -1;} else if down_down {vsp = 1;} else {vsp = -0.6;}

      //gain a little height against walls + ledgesnap
      ledge_snap();

      if (grab_valid) {
        can_fast_fall = false;

        grab_victim.x = grab_victim.x + (fspecial_grab_x+(30*spr_dir)-grab_victim.x)/10;
        grab_victim.y = grab_victim.y + (fspecial_grab_y-grab_victim.y)/3;
        grab_victim.wrap_time = 9001;
        grab_victim.state = PS_WRAPPED;

        // go to grab transition
        if (!hitpause){window = 5; window_timer = 0;}

      } else if (window_timer >= fspecial_window_length) { // loop window
        window_timer = 0; fspecial_dash_loops += 1;
        if fspecial_dash_loops >= 5 { window = 4; }
      } else if fspecial_dash_loops == 4 { // destroy hitbox on last loop
        destroy_hitboxes()
      }

    }

  if (window == 4) {
    if (free) {
      set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
      if fspecial_can_edgecancel {window = 19; attack_end();}
    } else {
      set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
      if !fspecial_can_edgecancel {spawn_base_dust(x, y, "land");}
      fspecial_can_edgecancel = true;
    }
  }

  if (window == 5){
    can_move = false;
    hsp = hsp*0.85;
    vsp = 0;
    grab_victim.x = grab_victim.x + (fspecial_grab_x+(30*spr_dir)-grab_victim.x)/10;
    grab_victim.y = grab_victim.y + (fspecial_grab_y-grab_victim.y)/3;

    if grab_valid && grab_victim.is_a_La_Reina_chair { destroy_hitboxes(); }

    if (window_timer >= fspecial_window_length)
    || (window_timer == 10 && ((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down))) {
      attack_end()
      if false { //(up_down) {
        set_attack( AT_UTHROW );
        hurtboxID.sprite_index = sprite_get("uthrow_hurt");
      } else if ((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)) {
        /* set_attack( AT_NTHROW ); // backthrow
        hurtboxID.sprite_index = sprite_get("nthrow_hurt"); */
        x += 30*spr_dir; y = y - 10;
        set_attack( AT_FTHROW );
        hurtboxID.sprite_index = sprite_get("fthrow_hurt");
        spr_dir = -spr_dir;
      } else if (down_down) {
        set_attack( AT_DTHROW );
        hurtboxID.sprite_index = sprite_get("dthrow_hurt");
      } else {
        y = y - 10;
        set_attack( AT_FTHROW );
        hurtboxID.sprite_index = sprite_get("fthrow_hurt");
      }
      window = 1;
      window_timer = 0;
    }

  }


}//End of Fspecial Section 1

if instance_exists(grab_victim) {
  if (attack == AT_FTHROW) {

    // put the chair away
    /* if instance_exists(myChair) && (window == 2 && window_timer >= 14 && grab_victim == myChair) {
      if (special_down){
        myChair.window = 4;
        myChair.window_timer = 0;
        set_attack (AT_DSPECIAL_2);
        window = 6;
        window_timer = 0;
      }
    } */

    // Reduce hitpause against the chair
    if instance_exists(grab_victim) && grab_victim.is_a_La_Reina_chair && !has_hit_player {
      reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
      var hp = get_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
      set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, round(hp*0.7));
    } else {
      reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
    }

    if window == 1 {
      fspecial_can_bounce = 2;
      can_move = false;
      hsp = 0; vsp = 0;
    } else if window == 2 {
      if window_timer <= 1 { hsp = 4*spr_dir; vsp = -8; }
      else {
        if vsp > 0 { vsp += 1.5;}
        hsp *= 0.92;
      }
      if (window_timer > 5 && vsp >= 0 && !free){
        window = 3; window_timer = 0;
        active_landing_fx = spawn_hit_fx(x, y, hitfx_crown_medland);
      }
      grab_victim.x += (x+hsp+20*spr_dir - grab_victim.x)/1;
      grab_victim.y += (y+vsp+0 - grab_victim.y)/1;
    }
    if window == 3 {
      can_move = false
      if (window_timer > 1 && fspecial_can_bounce > 0 && !hitpause){
        fspecial_can_bounce -= 1;
        hsp = -spr_dir*2;
        vsp = -(9);
      }
      //Cause pratfall if La Reina has summoned the LOYAL FANS twice without touching different ground.
      if (ring_summon_count > 1) && (y > get_stage_data( SD_Y_POS )) {
          set_window_value(attack, window, AG_WINDOW_TYPE, 7);
      }
    }
  } else if (attack == AT_NTHROW) {
    if window == 1 {
      fspecial_can_bounce = 2;
      nthrow_can_jump = true;
      can_move = false;
      hsp = 0; vsp = 0;
    } else if window == 2 {
      if nthrow_can_jump && window_timer <= 1 { nthrow_can_jump = false; hsp = -6*spr_dir; vsp = -12; }
      else {
        if vsp > 0 { vsp = vsp + 0.5;}
        hsp *= 0.9;
      }
      if (vsp >= 0 && !free){ window = 3; window_timer = 0; spr_dir *= -1;}
      var tx = 0
      var ty = 0
      var nthrow_angle = degtorad(-360 * window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH));
        /* var timer_rounded = min(7, floor((window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH))*8));
        nthrow_angle = degtorad(-45 - 20 + -45*timer_rounded) */
      var nthrow_offset = 10
      tx = cos(nthrow_angle) * nthrow_offset * spr_dir * 2 - 10;
      ty = sin(nthrow_angle) * nthrow_offset;
      grab_victim.x += (x+hsp+tx - grab_victim.x)/1;
      grab_victim.y += (y+vsp+ty - grab_victim.y)/1;
      grab_victim.spr_angle = 45;
    }
    if window == 3 {
      grab_victim.x += (x+hsp+0*spr_dir - grab_victim.x)/1;
      grab_victim.y += (y+vsp+10 - grab_victim.y)/1;
      if window_timer < 2 {
        grab_victim.y += (y+vsp+grab_victim.char_height/2 - grab_victim.y)/1;
      }

      can_move = false
      if (window_timer > 1 && fspecial_can_bounce > 0 && !hitpause){
        fspecial_can_bounce -= 1;
        hsp = -spr_dir*2;
        vsp = -(9);
      }
      //Cause pratfall if La Reina has summoned the LOYAL FANS twice without touching different ground.
      if (ring_summon_count > 1) && (y > get_stage_data( SD_Y_POS )) {
          set_window_value(attack, window, AG_WINDOW_TYPE, 7);
      }
    }
  } else if (attack == AT_UTHROW) {
    var delay = 4;
    hsp = 0; vsp = 0; can_move = false;
    if window == 1 {
      grab_victim.x += (x+40*spr_dir - grab_victim.x)/delay;
      grab_victim.y += (y-20 - grab_victim.y)/delay;
    } else if window <= 2{
      if window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH)/1.5 {
        grab_victim.x += (x-40*spr_dir - grab_victim.x)/delay;
        grab_victim.y += (y+20 - grab_victim.y)/delay;
      } else {
        grab_victim.x += (x+30*spr_dir - grab_victim.x)/delay;
        grab_victim.y += (y+15 - grab_victim.y)/delay;
      }
    } else if window == 3 && window_timer <= 1 {
      grab_victim.x += (x+10*spr_dir - grab_victim.x)/delay;
      grab_victim.y += (y-35 - grab_victim.y)/delay;
      hsp = 0; vsp = 0;
    }
  } else if (attack == AT_DTHROW) {
    can_move = false;
    if window <= 2 {
      hsp = 0; vsp = 0;
      grab_victim.x += (x+0*spr_dir - grab_victim.x)/20;
      grab_victim.y += (y+2 - grab_victim.y)/10;
    } else if window == 3 && window_timer <= 1 {
      hsp = -2*spr_dir; vsp = -10;
    }
  }
}//End of Fspecial Section 2

//Up Special
if (attack == AT_USPECIAL){

  can_fast_fall = false;

  var uspecial_window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
  var uspecial_grab_x = x + (36 * spr_dir) + hsp;
  var uspecial_grab_y = y + vsp;

  // Adjust Speeds
  if (window == 1){
    //Reset ability to use the LOYAL FANS
    if (window_timer == 1){
      reset_window_value( AT_USPECIAL, 9, AG_WINDOW_TYPE);

      sound_play(asset_get("sfx_clairen_swing_med"), false, noone, 0.9, 1.3);
      sound_play(asset_get("sfx_ice_uspecial_jump"), false, noone, 1, 1);
      uspecial_spin_pitch = 1;
      uspecial_slam_pitch = 1;
    }

    hsp = hsp*0.8;
  } else if window == 3 {
    if window_timer <= 3 {hsp = hsp + spr_dir;}
  }

  if (window >= 2 && window <= 4) {
    can_wall_jump = true;
  } else {
    can_wall_jump = false;
  }

  if (window == 3 && grab_valid){
    can_fast_fall = false;

    grab_victim.x = grab_victim.x + (uspecial_grab_x-grab_victim.x)/3;
    grab_victim.y = grab_victim.y + (uspecial_grab_y-grab_victim.y)/3;
    grab_victim.wrap_time = 9001;
    grab_victim.state = PS_WRAPPED;

    if (!hitpause){
      window = 5;
      window_timer = 0;
    }
  }

  if (window == 5){
    can_move = false;
    hsp = hsp*0.8;
    vsp = vsp*0.8;
    grab_victim.x = grab_victim.x + (uspecial_grab_x-grab_victim.x)/2;
    grab_victim.y = grab_victim.y + (uspecial_grab_y-grab_victim.y)/2;

    if (window_timer >= uspecial_window_length){
      window = 6;
      window_timer = 0;
    }
  }
  if (window == 6) {
    can_move = false;
    hsp = hsp*0;
    vsp = vsp*0;
    grab_victim.x = uspecial_grab_x;
    grab_victim.y = uspecial_grab_y;
    if (window_timer >= uspecial_window_length){
      uspecial_last_positions = [];
      uspecial_afterimage_timer = 0;
      uspecial_spin_speed = 24;
      set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, uspecial_spin_speed);
      vsp = -10; // -10
      y = y -1;
      window = 7;
      window_timer = 0;
    }

  }

  if (window == 7){
    // add afterimages to an array
    if uspecial_afterimage_timer % 5 == 0 {
      array_push(uspecial_last_positions, [sprite_index,image_index,x, y,spr_dir,uspecial_afterimage_timer]);
    }

    // Prevent too much aerial drift
    hsp = hsp * 0.92;
    // Increase vertical speed over time
    if vsp >= 0 {vsp = vsp + 3;}

    // Increase spin speed over time
    uspecial_spin_speed = max(8, uspecial_spin_speed-0.38);
    set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, max(8, floor(uspecial_spin_speed)));
    window_timer = min(window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));


    var uspecial_eighth = uspecial_window_length / 8;

    // adjust grab victim's spr_dir
    grab_victim.spr_dir = -spr_dir;
    if (window_timer <= uspecial_eighth*4){grab_victim.spr_dir = spr_dir;}

    //adjust grab victim's coordinates and draw depth
    var timer_rounded = min(7, floor((window_timer/uspecial_window_length)*8));
    grab_victim.x = grab_victim.x + (x+spr_dir*uspecial_spin_offsets[timer_rounded] + hsp-grab_victim.x)/(1 + 24/uspecial_spin_speed);
    grab_victim.y = uspecial_grab_y;
    grab_victim.force_depth = true;
    grab_victim.depth = depth - 1;
    if timer_rounded < 4 { grab_victim.depth = depth + 1; }

    if (window_timer == uspecial_window_length){window_timer = 0;}


    //increment window when landing and adjust power
    if (vsp >= 0 && !free){
      // spin speed ranges from about 15 (slow) to 9 (very fast)
      //formula will produce values from 1 to 1.88
      var kb_formula = max(1, 1.81 - (uspecial_spin_speed - 9.5)/7);

      // exponential version (if desired)
      //var kb_formula = max(1.15, power(1.73 - (uspecial_spin_speed - 9.5)/7, 1.34));

      set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, kb_formula);
      set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, kb_formula);
      if grab_victim.is_a_La_Reina_chair {
        set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 12);
      } else {
        set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 20);
      }
      uspecial_can_cheer = 3;
      window = 8; window_timer = 0;

      active_landing_fx = spawn_hit_fx(x, y, hitfx_crown_bigland);

      uspecial_grab_victim = grab_victim;
    }

    uspecial_spin_pitch += 0.033;

    //SFX
    if (window_timer == 1 || window_timer == 7 || window_timer == 13 || window_timer == 19){
      sound_play(asset_get("sfx_clairen_sword_activate"), false, noone, 0.7, uspecial_spin_pitch);
      //uspecial_spin_pitch += 0.2;
      uspecial_slam_pitch += -0.1;
    }

  }
  if (window == 8){
    // Crowd cheers if up B will purple. Ring bell on last stock.
    if instance_exists(uspecial_grab_victim) && !uspecial_grab_victim.is_a_La_Reina_chair {
      if uspecial_grab_victim.activated_kill_effect && uspecial_can_cheer {
        sound_play( asset_get( "sfx_ring_crowd" ) );
        var stocks = get_player_stocks(uspecial_grab_victim.player)
        if stocks <= 1 {sound_play( asset_get( "mfx_ring_bell2" ) );}
        uspecial_can_cheer = false;
      }
      else if (uspecial_grab_victim.activated_kill_effect == false){
        if (window_timer == 1 && !hitpause){
          sound_play( sound_get( "pixabay_utilt_cheer" ), false, noone, 1, 1.05);
        }
      }
    }
    if instance_exists(grab_victim) {
      grab_victim.x = uspecial_grab_x;
      grab_victim.y = uspecial_grab_y
    }
    hsp = 0; can_move = false;

    if (window_timer == 1 && !hitpause){
      sound_play(asset_get("sfx_ell_uspecial_explode"), false, noone, 0.3, uspecial_slam_pitch);
    }
    //increment window
    if (window_timer == uspecial_window_length){window = 9;window_timer = 0;}
  }
  if (window == 9) {
     can_move = true;
    if window_timer <= 2 {
      var victim_damage = (get_player_damage(uspecial_grab_victim.player));
      if uspecial_grab_victim.is_a_La_Reina_chair { victim_damage = 0; }
      hsp = -spr_dir*(2+(min(victim_damage, 120)/32));
      vsp = -(6+(min(victim_damage, 120)/24));
    }
    //Cause pratfall if La Reina has summoned the LOYAL FANS twice without touching different ground.
    if (ring_summon_count > 1) && (y > get_stage_data( SD_Y_POS )) {
        set_window_value(attack, window, AG_WINDOW_TYPE, 7);
    }
  }

  /* // Correctly ensure grab victim stays grabbed even if they're hit
  if grab_valid {
    var final_hitbox = 2;
    var hbwindow = get_hitbox_value( attack, final_hitbox, HG_WINDOW );
    var hbcreation_frame = get_hitbox_value( attack, final_hitbox, HG_WINDOW_CREATION_FRAME );

    if window == hbwindow && window_timer == hbcreation_frame {
      grab_victim.wrap_time = 0;
      grab_victim.gethit_grabbed = noone;
      grab_victim = noone;
    } else {
      grab_victim.state = PS_WRAPPED;
    }
  } */

}//End of Up special

if (attack == AT_DSPECIAL){

//If chair is already out, transition to rolling girl
  if (window == 1){
    if (instance_exists(myChair)){
      set_attack( AT_NSPECIAL_2);
      hurtboxID.sprite_index = sprite_get("movetochair_hurt")
    }
  }


//Spawn the slam chair
  if (window == 4){
    if window_timer == 6 {
      if !free && !hitpause {spawn_base_dust(x+40*spr_dir, y, "land");}
    } else if (window_timer == 10 && !instance_exists(myChair)){
      myChair = instance_create( x+32*spr_dir, y-10, "obj_article1");
      myChair.pre_draw_index = 5;
      if free {can_create_air_chair = false; }
    }

    //Extra boost for the airborn version
    if (window_timer == 1 && free){
      vsp += -2;
    }
  }

}//End of Dspecial

if (attack == AT_DSPECIAL_2){
  // Slow down, both horizontally and vertically
  hsp *= 0.85; vsp = min(vsp, 2.5);

  if (!instance_exists(myChair)){
    /* set_attack( AT_DSPECIAL);
    hurtboxID.sprite_index = sprite_get("dspecial_hurt") */
    if (window == 3){
      window += 1;
      window_timer = 0;
    }
  }

  var has_looped = false;

  //Start chair movement
  if (window == 2 && window_timer == get_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH)){
    if instance_exists(myChair) {
      myChair.flyspeed = myChair.flyspeed_base;
      myChair.window = 3;
      myChair.window_timer = 0;
    }
    pullchair_can_end = false;
  }

  //Attract the chair if special is held down, otherwise move to the next window
  if (window == 3){
    if instance_exists(myChair) {
    //  myChair.flytoward_x = x + 70 * spr_dir;
    //  myChair.flytoward_y = y - 20;
    } else {
      has_looped = true;
    }

    if (window_timer == get_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH)){
      has_looped = true;
    } else if window_timer >= 11 {
      pullchair_can_end = true;
    }

    if (!special_down && pullchair_can_end) {
      secret_nspecial_cooldown = max(1, secret_nspecial_cooldown, move_cooldown[AT_NSPECIAL]);
      myChair.window = 2;
      myChair.window_timer = 0;

      window += 1;
      window_timer = 0;
    }
  }

  // End the pull early if nspecial gets put on cooldown
  if move_cooldown[AT_NSPECIAL] > 0 {
    attack_end();
    if (window < 4) { window = 4; window_timer = 0; }
  }

}//End of Dspecial 2

// Soft armor during grabs during multiplayer matches
// Also spawn magnet hitfx and manage hitfx
if instance_exists(grab_victim) {
  if (total_player_count > 2) && grab_valid && !grab_victim.is_a_La_Reina_chair {
    soft_armor = 13.8; // Breaks if Kragg Fair hits you at 70% or above.
  } else {
    soft_armor = 0;
  }

  if grab_valid && !old_grab_valid {
    if attack == AT_USTRONG {
      active_magnet_fx = spawn_hit_fx(x, y, hitfx_magnet_inward_slow);
      sound_play(asset_get("sfx_clairen_swing_strong"), false, noone, 0.9, 0.8);
    } else if attack == AT_USPECIAL {
      active_magnet_fx = spawn_hit_fx(x, y, hitfx_magnet_inward_big);
    } else if attack == AT_FSPECIAL || attack == AT_FSTRONG || attack == AT_UAIR {
      active_magnet_fx = spawn_hit_fx(x, y, hitfx_magnet_inward_small);
      if attack == AT_FSPECIAL{sound_play(asset_get("sfx_clairen_swing_strong"), false, noone, 0.6, 0.85)}
    }
  }

  if instance_exists(active_landing_fx) {
    if true || attack == AT_USPECIAL || (attack == AT_FSTRONG && throw_direction == 1) {
      active_landing_fx.depth = max(depth+1, grab_victim.depth+1);
    } else {
      active_landing_fx.depth = depth - 1;
    }
    if !free || (hitpause) {active_landing_fx.y = y;}
    if attack == AT_FSTRONG {
      if throw_direction == 1 {
        active_landing_fx.x = x - 12*spr_dir;
      } else {
        active_landing_fx.x = x - 16*spr_dir;
      }
    } else if attack == AT_UAIR {
      active_landing_fx.x = x - 8*spr_dir;
    }
  }
  if instance_exists(active_magnet_fx) {
    if (attack == AT_FSTRONG && window > 2)
    || (attack == AT_BAIR && window > 2)
    || (attack == AT_USTRONG && window > 2) {
      if attack == AT_FSTRONG {
        active_magnet_fx.x -= 2*spr_dir;
      } else if attack == AT_BAIR {
        active_magnet_fx.x += hsp;
        active_magnet_fx.y += vsp - 1;
      }
    } else {
      active_magnet_fx.x = (grab_victim.x + x)/2 + hsp;
      active_magnet_fx.y = (grab_victim.y + y)/2 - 40 + vsp;
      if attack == AT_FSTRONG {
        active_magnet_fx.x += 23*spr_dir;
      } else if attack == AT_USTRONG {
        active_magnet_fx.x += 29*spr_dir;
        active_magnet_fx.y += -30;
      } else if attack == AT_UAIR {
        active_magnet_fx.x -= 12*spr_dir + hsp;
        active_magnet_fx.y -= 20;
      } else if attack == AT_FSPECIAL || attack == AT_FTHROW {
        active_magnet_fx.x += 6*spr_dir;
      }
    }
  }
}

//////////////////////////////
//Blastzone drag protection && hitbox destruction//
/////////////////////////////

if (instance_exists(grab_victim)){
  if destroy_postgrab_hitbox_countdown > 0 {
    if destroy_postgrab_hitbox_countdown == 1 { destroy_hitboxes(); }
    destroy_postgrab_hitbox_countdown = max(0, destroy_postgrab_hitbox_countdown-1);
  }

  if free { // blastzone protection
    //top blastzone protection
    grab_victim.y = max(grab_victim.y, get_stage_data(SD_TOP_BLASTZONE_Y)+2);

    //side blastzone protection
    if (x > ringout_x_right && x < ringout_x_right_extreme){
      if (hsp > 0){
        hsp = hsp * 0.9;
      }
      set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 55);
    }
    else if (x >= ringout_x_right_extreme){
      if (hsp > 0){
        hsp = 0;
      }
      set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 40);
    }
    else if (x < ringout_x_left && x > ringout_x_left_extreme){
      if (hsp < 0){
        hsp = hsp * 0.9;
      }
      set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 55);
    }
    else if (x <= ringout_x_left_extreme){
      if (hsp < 0){
        hsp = 0;
      }
      set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 40);
    }
  }
}//End of Blastzone drag protection



/////////
//TAUNT//
/////////

if (attack == AT_TAUNT){
  if (window > 2) {
    if ((window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) ||
        (window_timer >= 14 && taunt_pressed)) {
      if ((window % 2) == 1) {
        window = window + 1;
      } else {
        if (taunt_down) {
          user_event(0); // populate available_taunts
        } else {
          window = 2;
        }
      }
      window_timer = 0;
      /* if (get_player_color( player ) == 12){
        add_afterimages_timer = 9;
      } */
    } else if (window_timer >= 22 && taunt_down != true) {
      window = 2;
      window_timer = 0;
    }
  }

}

/// DEFINITIONS ONLY PAST THIS POINT

#define ledge_snap
//gain a little height against walls + ledgesnap
if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
  y -= 2; // gain height
   for (var i = 1; i < 10; i++){
      if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) {
         y -= i+1; // ledgesnap
         if attack == AT_NSPECIAL_2 { x += hsp; }
         break;
      }
   }
}

#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
