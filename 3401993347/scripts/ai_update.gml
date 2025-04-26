if(attack == AT_NSPECIAL){
    if(state == 6){
        //cast it by spamming nspecial
        special_pressed = get_gameplay_time() % 4 > 1;
        special_down = special_pressed;
    }
}

if(attack == AT_USPECIAL){
    if(state == 5){
        //go up
        vsp = -2;
    }
}