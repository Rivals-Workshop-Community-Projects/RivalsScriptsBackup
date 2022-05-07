hovertime -= 1;
midmissile -= 1;
//slip_lifetime -= 1;
if (state != PS_AIR_DODGE){
    grav = 0.3;
}
if (shine_timer < 50){
    shine_timer += 1;
}
if (big_shine_timer < 50){
    big_shine_timer += 1;
}

if (jump_down && djumps == 0 && vsp > -4 && midmissile < 1 && hovertime > 0){ //Gives the player a few frames to hover after fspecial to enable things like missile nair, so that it feels like Elliana
        vsp -= 1;
}
djump_speed = 8 - (djumps * 2);

if (state == PS_HITSTUN){
    grav = 0.45;
}


small_sprites = 0;

if (not free && attack = AT_NSPECIAL && state = PS_ATTACK_GROUND){
    small_sprites = 1;
}
if (not free && attack = AT_JAB && state = PS_ATTACK_GROUND){
    small_sprites = 1;
}
if (not free && attack = AT_JAB && state = PS_ATTACK_GROUND){
    small_sprites = 1;
}
if (not free && attack = AT_UTILT && state = PS_ATTACK_GROUND){
    small_sprites = 1;
}
if (not free && attack = AT_FSPECIAL && state = PS_ATTACK_GROUND){
    small_sprites = 1;
}
if (not free && attack = AT_USTRONG && state = PS_ATTACK_GROUND){
    small_sprites = 1;
}
if (not free && attack = AT_DSTRONG && state = PS_ATTACK_GROUND){
    small_sprites = 1;
}
if (free && state = PS_ATTACK_AIR){
    small_sprites = 1;
}
if (attack = AT_DSPECIAL_AIR){
    small_sprites = 0;
}
if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack = AT_USPECIAL){
    small_sprites = 1;
}






//if (slip_lifetime > 0 and abs((slip_y+10) - y) < 50){
//    max_air_speed = 7;
//    air_accel = 0.6;
//    dash_turn_accel = 2.7;
//    dash_speed = 10;
//    air_dodge_speed = 10;
//    push(slip_fx_x, x);
//    push(slip_fx_y, y + random_func(0, 30, false));
//    push(slip_fx_sprites, random_func(0, 7, false));
//    push(slip_fx_ages, 0);
//}
//else{
//    max_air_speed = 5;
//    air_accel = 0.3;
//    dash_turn_accel = 2
//    dash_speed = 7;
//    air_dodge_speed = 8;
//}
//if (slip_lifetime > 0) {
//  move_cooldown[AT_FSPECIAL] = 2;
//}


