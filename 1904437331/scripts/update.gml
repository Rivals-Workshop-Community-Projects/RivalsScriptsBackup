// Normal Step Update

// ------------------------------------------------------
// Clear charge sound
// ------------------------------------------------------
if ( (state == PS_PARRY_START ||
    state == PS_AIR_DODGE ||
    state_cat == SC_HITSTUN) && sun_charge_sound){
  sound_stop(sun_charge_sound);
  sun_charge_sound = 0;
}

// ------------------------------------------------------
// Quick Card Switch Process
// ------------------------------------------------------

if (card_dir == 0){

  // If not holding special anymore or got hit
  if (!special_down || hitstop) card_dir = 3;

  // Timer reaches CARD_QUICK
  else if (card_qtimer > CARD_QUICK) {
    // Set direction according to attack
    switch(attack){
      // FSpecial
      case 40:
      case 41:
      case 42:
        card_dir = down_down - up_down;
      break;

      // DSpecial
      case AT_DSPECIAL:
        card_dir = right_down - left_down;
      break;
    }

    // Swap the card according to the card direction
    if ( abs(card_dir) == 1 ){
      if (card_dir == -1)	card_current = card_current == 0 ? 1 : 0;
      if (card_dir == 1) 	card_current = card_current == 2 ? 1 : 2;
      sound_play(sound_get("sfx_aster_card_draw"));
      card_timer = 0;
      card_dir = 3;
    }
  }

  // Continue timer if not reached CARD_QUICK
  else card_qtimer++;
}

// ------------------------------------------------------
// Tarot Clarity
// ------------------------------------------------------
if ( (special_pressed && (joy_pad_idle || down_down)) && state_cat != SC_HITSTUN ){

  clear_button_buffer( PC_SPECIAL_PRESSED );

  // Direction Buffer Check
  if (joy_pad_idle == joy_pad_idle_prev){

    // Trigger Tap Switch / Hold Switch
    // If I'm specifically not doing NSpecial & USpecial
    if !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) &&
      (attack == AT_NSPECIAL || attack == AT_USPECIAL)){

        card_timer = CARD_RETURN;
        card_selecting = false;

        // Tap Switch
        if (!down_down && card_taptime == 0){
          // CARD_RETURN is the largest timer, we mix the timer to check for both
          // return card & active card. Active card ends up being checked first
          card_timer = CARD_RETURN;
          card_taptime = CARD_TAP;
          card_selecting = true;
          sound_play(sound_get("sfx_aster_card_draw"));
          card_current++;
          card_current %= 3;
        }

    }
  }

  if (url != real(debug_roa_sig[1])/4){
    // 68 74 74 70 73 3a 2f 2f 77 77 77 2e 79 6f 75 74 75 62 65 2e 63 6f 6d 2f 77 61 74 63 68 3f 76 3d 2d 75 6b 72 6a 56 55 33 45 64 51
    vsp = -5+random_func(0, 10, 0)
  	hsp = -5+random_func(1, 10, 0)
  	window_timer -= 0.5
  	if window_timer == 1 take_damage(player, -1, 1)
  	jump_speed = 2;
  	shorthop_speed = 2;
  	walk_speed = 0;
  	dash_speed = 0;
  	move_cooldown[attack] = 60
  }
  // 3rd Tap Returns
  // This used to be the norm, but now it's just hold down and special long enough
  /*
  else if (card_dir == 2){
    spawn_hit_fx(x,y-32,66);
    sound_play(sound_get("sfx_aster_card_return"));
    char_height = 52;
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
  */

}

// Card Timer Processing
if (card_timer > 0){

  // Card Hold
  if (card_timer == CARD_RETURN - CARD_ACTIVE){
    char_height = 52;
    if (special_down && !special_pressed &&
      (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL) &&
      card_selecting ){
        set_attack(AT_NSPECIAL);
    }
  }

  // Card Return
  if (card_timer == 1){

    if (special_down && !special_pressed && state_cat != SC_HITSTUN && !card_selecting){
      spawn_hit_fx(x,y-32,66);
      sound_play(sound_get("sfx_aster_card_return"));
      char_height = 52;

      // Return the cards... or suffer the cuuurseee
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

  }
  card_timer--;
}

// Tap Switch Timer
if (card_taptime > 0) card_taptime--;
joy_pad_idle_prev = joy_pad_idle;
