//got_parried.gml


if (attack == AT_FSPECIAL && window >= 5
|| attack == AT_FSPECIAL_2 && window >= 5){
    
    print_debug("hi")
    state = PS_PRATFALL
    
    /*
    //Deletes Kunai
    with(kunai){ //article1
        if (id==kunai.id) {
            state_timer = 0;
            state = 6;
        }
    }
    */
    
    vsp = 0;
    hsp = 0;
}