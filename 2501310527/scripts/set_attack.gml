if (attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_NSPECIAL && blaster_out == true){
    attack = AT_NSPECIAL_AIR;
}

if ((right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed) 
&& blaster_out == true && blaster_close == true){
    if (right_strong_pressed){
        spr_dir = 1;
    }
    if (left_strong_pressed){
        spr_dir = -1;
    }
    attack = AT_STRONG;
}


