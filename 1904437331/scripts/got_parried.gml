switch(my_hitboxID.attack){
  case AT_FAIR:
  case 40: // AT_FSPECIAL_SUN
  case 42: // AT_FSPECIAL_GALAXY
  if (my_hitboxID.type == 2){
      my_hitboxID.hitbox_timer = 0;
      my_hitboxID.hsp *= 1.5;
  }
  case AT_DSPECIAL:
      CARD_OBJ[my_hitboxID.hbox_num-1].card_state = 4;
  break;
}
