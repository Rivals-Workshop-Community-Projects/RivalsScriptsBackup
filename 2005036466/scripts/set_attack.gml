prev_attack = cur_attack;
cur_attack = attack;

// Checking which FSpecial to use.
if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR){
  // check if free
  hsp = clamp(hsp, -4, 4);

  if (free){
    attack = AT_FSPECIAL_AIR;
  } else {
    attack = AT_FSPECIAL;
  }
}

if (attack == AT_DSPECIAL) {

  if (free) {
    attack = AT_DSPECIAL_AIR;
    }
}

if (attack == AT_DATTACK) {
  clear_button_buffer(PC_ATTACK_PRESSED);
}

if (attack == AT_DAIR)
  {
  clear_button_buffer(PC_DOWN_STRONG_PRESSED)
  }

//To check if you cancel an attack into another.
if (cancelable_active and attack != AT_JAB)
  {
  cancel_effect_timer = 25;
  }
