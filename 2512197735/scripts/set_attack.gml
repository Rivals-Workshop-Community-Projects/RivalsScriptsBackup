if (attack == AT_FSPECIAL && free){
  attack = AT_FSPECIAL_AIR;
}

//Grab stuff
if (wario_grab){
    if (special_pressed || attack_pressed || right_strong_pressed
    || left_strong_pressed || up_strong_pressed || down_strong_pressed){
        attack = AT_NSPECIAL_2;
        window = 1;
        window_timer = 0; 
    }
    
}
if(down_down && attack == AT_TAUNT){
    attack = AT_TAUNT_2;
}