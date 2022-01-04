
if(attack == AT_DSPECIAL or attack == AT_DATTACK){
    set_attack_value(attack, AG_CATEGORY, 2);
}

if(free and attack == AT_FSPECIAL){
    attack = AT_FSPECIAL_AIR;
}

if(attack == AT_USPECIAL and shadowball_hit and shadowball_hit_timer > 0){
    attack = AT_USPECIAL_2;
}

if(attack == AT_NSPECIAL){
    if(nspecial_cur_size == 1){
        proj_size = 1;
    }
    clear_button_buffer(PC_SPECIAL_PRESSED);
}


