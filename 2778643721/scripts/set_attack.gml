///#args attack // this line makes code editors not freak out for some reason

if (attack == AT_DSPECIAL && move_cooldown[AT_DSPECIAL] > 0){
    attack = AT_DSPECIAL_2;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);