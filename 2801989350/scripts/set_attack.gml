//set_attack

if (attack == AT_FSPECIAL && free){
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_USPECIAL && cycle == 1 && fairy == true) {
    attack = AT_USPECIAL_2;
}

if (attack == AT_NSPECIAL && cycle == 1) {
    attack = AT_NSPECIAL_2;
}

if (throwing == 1) {
    if (attack == AT_FTILT || attack == AT_FAIR || attack == AT_DATTACK || attack == AT_BAIR || attack == AT_FSPECIAL || attack == AT_FSTRONG) {
        if (attack == AT_BAIR) {
            spr_dir *= -1;
        }
        attack = AT_FTHROW;
        throwX = 15;
        throwY = y-60;
        throwHSP = 11;
        throwVSP = -5;
    }
    
    if (attack == AT_JAB || attack == AT_NAIR || attack == AT_NSPECIAL || attack == AT_NSPECIAL_2) {
        attack = AT_FTHROW;
        throwX = 15;
        throwY = y-60;
        throwHSP = 5;
        throwVSP = -5;
    }
    
    if (attack == AT_UTILT || attack == AT_UAIR || attack == AT_USPECIAL || attack == AT_USTRONG || attack == AT_USPECIAL_2) {
        attack = AT_UTHROW;
        throwX = 0;
        throwY = y-60;
        throwHSP = 4;
        throwVSP = -14;
}
    
    if (attack == AT_DTILT || attack == AT_DAIR || attack == AT_DSPECIAL || attack == AT_DSTRONG || attack == AT_EXTRA_1) {
        attack = AT_DTHROW;
        throwX = 0;
        throwY = y+30;
        throwHSP = 0;
        throwVSP = 0;
    }
}

muno_event_type = 2;
user_event(14);