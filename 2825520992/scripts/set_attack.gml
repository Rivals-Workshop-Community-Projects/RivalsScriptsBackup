///#args attack // this line makes code editors not freak out for some reason

if(attack == AT_FSPECIAL && free)attack = AT_FSPECIAL_AIR;

if(attack == AT_DSPECIAL && free)attack = AT_DSPECIAL_AIR;

if (attack == AT_TAUNT && (down_down)){
  attack = AT_TAUNT_2 
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);