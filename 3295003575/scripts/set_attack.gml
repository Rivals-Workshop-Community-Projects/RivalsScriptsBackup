///#args attack // this line makes code editors not freak out for some reason


if(!free and attack == AT_USPECIAL){

  attack = AT_USPECIAL_GROUND;
  hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);