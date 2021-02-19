animtimer  ++

if animtimer > 5 {
    animtimer = 0
    if image_index = 0 {
        image_index = 1
    } else if image_index = 1 {
        image_index = 2
    } else {
        image_index = 0
    }
}

if(spawn_variables[0] == 0){
    if(get_gameplay_time() % 900 == 0){
        platformposition = !platformposition;
    }
    if(platformposition){
        if(y > 430){
            vsp = -.5;
        }else{
            y = 430;vsp = 0;
        }
    }else{
        if(y < 528){
            vsp = .5;
        }else{
            y = 528;vsp = 0;
        }
    }
}else if(spawn_variables[0] == 1){
    if(get_gameplay_time() % 1500 == 0){
        platformposition = !platformposition;
    }
    if(platformposition){
        if(y > 450){
            vsp = -.5;
        }else{
            y = 450;vsp = 0;
        }
    }else{
        if(y < 528){
            vsp = .5;
        }else{
            y = 528;vsp = 0;
        }
    }
}

/*if(y >= 520){
    mask_index = asset_get("empty")
}else{
    mask_index = sprite_get("platformmask")
}*/

with (oPlayer) {
    if (y <= (other.y + 2) && !free && !freemd && other.y <= 528) {
        if (place_meeting(x,y,other.id) || (y > (other.y - 10) && x >= (other.x - 60) && x <= (other.x + 60))){
            y = other.y;
            if (state == PS_FIRST_JUMP && other.vsp < 0 && state_timer == 1) {
                vsp += other.vsp;
            }
        }
    }
}