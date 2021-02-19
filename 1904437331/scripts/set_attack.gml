switch(attack){

  // ------------------------------------------------------
	// Tarot Clarity
	// ------------------------------------------------------
  case AT_NSPECIAL:

    // On-Hold - Proceed to attack window
    if (!special_pressed && special_down && card_selecting){
      move_cooldown[AT_NSPECIAL] = 0;
      card_is_returning = false;
    }

    // Tap - Interrupt attack window
    else {
      move_cooldown[AT_NSPECIAL] = 2; // Prevents the attack from activating
    }

  break;

  // ------------------------------------------------------
	// Spell Card Branch
	// ------------------------------------------------------
  case AT_FSPECIAL:
    if (spark_charge != 0){
      switch(card_current){
        case 0: attack = AT_FSPECIAL_SUN; break;
        case 1: attack = AT_FSPECIAL_STAR; break;
        case 2: attack = AT_FSPECIAL_GALAXY; break;
      }
    }

  break;

}
