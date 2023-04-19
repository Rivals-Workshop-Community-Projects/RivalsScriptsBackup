/*if (free && attack == AT_DAIR && ( (down_down && strong_down) || down_strong_pressed ) ) {
    attack = AT_DSTRONG;
}*

if (free && attack == AT_FAIR && ((right_down && strong_down) || (left_down && strong_down) || left_strong_pressed || right_strong_pressed ) ) {
    attack = AT_FSTRONG;
}

if (free && attack == AT_BAIR && ( (left_down && strong_down) || (right_down && strong_down) || right_strong_pressed || left_strong_pressed )) {
    attack = AT_FSTRONG;
    spr_dir *= -1;
}

if (free && attack == AT_UAIR && ( (up_down && strong_down) || up_strong_pressed ) ) {
    attack = AT_USTRONG;
}

/*
if(free && attack == AT_DSPECIAL){
    attack = AT_DSPECIAL_AIR;
}*/


//#region Nair

if(attack == AT_NAIR){
    set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 6);
    alterExtra = true;
}

//#endregion

//#region Dtilt
if(attack == AT_DTILT){
    boomvsp = -8;
    boomhsp = 8;
}

//#endregion


//#region Strongs
    //#region Fstrong
if(attack == AT_FSTRONG){
    boomvsp = -10;
    boomhsp = 0;
}
    //#region Ustrong
if(attack == AT_USTRONG){
    boomvsp = -3;
    boomhsp = -4;
}
    
    
    //#endregion

if(attack == AT_EXTRA_1){
    
    sound_stop(sound_get("mollo_fuse"))
    sound_stop(sound_get("crackerFuse"))
}


//#endregion
if(attack == AT_TAUNT && left_down){
    if(!handsDisplay){
        handsDisplay = true;
    }else{
        handsDisplay = false;
    }
}