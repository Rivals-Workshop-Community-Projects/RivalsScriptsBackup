hovertime -= 1;
midmissile -= 1;
if (state != PS_AIR_DODGE){
    grav = 0.3;
}
if (shine_timer < 50){
    shine_timer += 1;
}
if (big_shine_timer < 50){
    big_shine_timer += 1;
}

if (jump_down && djumps == 0 && vsp > -8 && midmissile < 1 && hovertime > 0){ //Gives the player a few frames to hover after fspecial to enable things like missile nair, so that it feels like Elliana
        vsp -= 1;
}
djump_speed = 8 - (djumps);


