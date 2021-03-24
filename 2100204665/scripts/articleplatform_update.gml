if (time > 180){
    with(oPlayer){
        if(place_meeting(x, y, other) && free == false){
            set_state(PS_PRATFALL);
        }
    }
}