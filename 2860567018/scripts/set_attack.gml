fspec_charge = 0;
fspec_sonic = 23;
fspec_misfire = false;
//fspecial_window_2_length = 30;
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 30);

if(attack == AT_FSTRONG){
    hsp = clamp(hsp, -5, 5);
} else if(attack == AT_DSTRONG){
    hsp = clamp(hsp, -5, 5);
}

if(down_down and attack == AT_TAUNT and !suppress_music){
    attack = AT_EXTRA_2;
}