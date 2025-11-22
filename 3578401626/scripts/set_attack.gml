//setting the attack

    if (attack == AT_JAB){
        attack = AT_NAIR;
    }
    if (attack == AT_FTILT || attack == AT_DATTACK){
        if (right_pressed && spr_dir == 1 || left_pressed && spr_dir == -1 || right_hard_pressed && spr_dir == 1 || left_hard_pressed && spr_dir == -1){
            attack = AT_FAIR;
        } else{
            attack = AT_BAIR;
            spr_dir *= -1;
        }
    }
    if (attack == AT_UTILT){
        attack = AT_UAIR;
    }
    
    if (attack == AT_DTILT){
        attack = AT_DAIR;
    }


if (attack == AT_FAIR || attack == AT_BAIR || attack == AT_FTILT){
    if (right_strong_pressed - left_strong_pressed != 0){
        if (right_strong_pressed - left_strong_pressed == spr_dir){ 
            attack = AT_FSTRONG;
        } else
        if (right_strong_pressed - left_strong_pressed != spr_dir){ 
             attack = AT_FSTRONG;
             spr_dir *= -1
        }
    }
}

if (attack == AT_UAIR || attack == AT_UTILT){
    if (up_strong_pressed - down_strong_pressed == 1){
        attack = AT_USTRONG;
    }
}
    
if (attack == AT_DAIR || attack == AT_DTILT){
    if (down_strong_pressed - up_strong_pressed == 1){
        attack = AT_DSTRONG;
    }
}

if (attack == AT_FSPECIAL && fspecial_charge == -1){
    attack = AT_FSPECIAL_2;
    fspecial_charge = 0;
}