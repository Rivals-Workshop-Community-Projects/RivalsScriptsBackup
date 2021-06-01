if (attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_NSPECIAL && blaster_out == true){
    attack = AT_NSPECIAL_AIR;
}

if ((right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed) 
&& !free && blaster_out == true && blaster_close == true){
    attack = AT_STRONG;
}
