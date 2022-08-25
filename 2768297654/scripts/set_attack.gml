//
if(bomb_state = true){
    if(attack == AT_JAB || attack == AT_FTILT || attack == AT_NAIR || attack == AT_FAIR || attack == AT_FSTRONG || attack == AT_DATTACK){
        attack = AT_FTHROW;
    }    if(attack == AT_BAIR){
        spr_dir = -spr_dir;
        attack = AT_FTHROW;
    }    if(attack == AT_UTILT || attack == AT_UAIR || attack == AT_USTRONG){
        attack = AT_UTHROW;
    }    if(attack == AT_DTILT || attack == AT_DAIR || attack == AT_DSTRONG){
        attack = AT_DTHROW;
    }    if(attack == AT_DSPECIAL){
        attack = AT_DSPECIAL_2;
    }
}


/*
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);*/