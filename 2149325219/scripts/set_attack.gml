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

