if (my_hitboxID.attack == AT_JAB) {
  if my_hitboxID.hbox_num == 1 {
    set_attack_value(AT_JAB, AG_NO_PARRY_STUN, true);
  }
}

if (fstrong_falling_sound != noone){
  sound_stop(fstrong_falling_sound);
  fstrong_falling_sound = noone;
}
