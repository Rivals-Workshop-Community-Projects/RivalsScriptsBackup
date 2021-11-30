if((attack_pressed && special_pressed or attack_pressed && taunt_pressed) && hatch_amount >= 3000){
    attack = AT_EXTRA_1;
}
/*
if(attack == AT_FSPECIAL && window == 2 && has_hit){
    attack = AT_FSPECIAL_2
}
*/



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);