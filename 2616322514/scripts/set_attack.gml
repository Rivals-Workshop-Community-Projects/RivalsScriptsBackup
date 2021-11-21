if (attack == AT_NSPECIAL && electro_charged == false && !place_meeting(x, y, terrain)){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_FSPECIAL && electro_charged == false && !place_meeting(x, y, terrain)){
    attack = AT_FSPECIAL_2;
}


if (attack == AT_FSTRONG && electro_charged == true){
    attack = AT_FSTRONG_2;
}

if (attack == AT_USTRONG && electro_charged == true){
    attack = AT_USTRONG_2;
}

if (attack == AT_DSTRONG && electro_charged == true){
    attack = AT_DSTRONG_2;
}

muno_event_type = 2;
user_event(14);