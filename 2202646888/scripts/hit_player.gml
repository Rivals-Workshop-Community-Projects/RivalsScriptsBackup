// Variable Definition
var hitmove = my_hitboxID.attack;

if(my_hitboxID.attack == AT_TAUNT && my_hitboxID.hbox_num == 1){
    if(free){
        set_state(PS_FIRST_JUMP);
    }
}

if (my_hitboxID.attack == AT_FSPECIAL){
        if (!did_bounce){
            destroy_hitboxes();
            
            window = 5;
            window_timer = 1;
            did_bounce = true;
            old_vsp = -9;
            old_hsp = 5*spr_dir;
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
        }
}



//runes
if (has_rune("O")){
    djumps = 0;
    has_airdodge = true;
    has_walljump = true;
}

//final smash
if (my_hitboxID.attack == 49){
    sound_play(sound_get("horn"));
}