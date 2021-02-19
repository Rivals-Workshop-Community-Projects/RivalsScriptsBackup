if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR){
  if (attack == AT_FSPECIAL_SUN && charge_level < CHARGE_MAX) charge_level = 0;
  if (attack == AT_NSPECIAL) char_height = 52;
}
