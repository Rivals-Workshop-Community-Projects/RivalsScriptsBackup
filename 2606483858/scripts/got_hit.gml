sound_stop(sound_get("Tankman Ascends"));

// //If gets hit while charging the Babe
// if (babe_counting == true){
//     babe_cont = 0;
//     babe_counting = false;
// }

// //If you get hit while charging the Babe (again)
// if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_DSPECIAL){
//     babe_cont = 0;
//     babe_counting = false;
// }

//If gets hit while charging the Note
if (note_counting == true){
    note_cont = 0;
    note_counting = false;
}

//If you get hit while charging the Note (again)
if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL){
    note_cont = 0;
    note_counting = false;
}

//If gets hit while charging the Mic
if (mic_counting == true){
    mic_cont = 0;
    mic_counting = false;
}

//If you get hit while charging the Mic (again)
if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_FSPECIAL){
    mic_cont = 0;
    mic_counting = false;
}

//Arrow doesn't give you Walljump
if (enemy_hitboxID.player != player) {
    ArrowWallJump = 1
}