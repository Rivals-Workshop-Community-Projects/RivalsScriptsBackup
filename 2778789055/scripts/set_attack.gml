///#args attack // this line makes code editors not freak out for some reason

if(has_shrimp == false){
    if(attack == AT_FSPECIAL){
        attack = AT_FSPECIAL_2;
    }    if(attack == AT_USPECIAL){
        attack = AT_USPECIAL_2;
    }    if(attack == AT_DSPECIAL){
        attack = AT_DSPECIAL_2;
    }    if(attack == AT_FSTRONG){
        attack = AT_FSTRONG_2;
    }    if(attack == AT_USTRONG){
        attack = AT_USTRONG_2;
    }    if(attack == AT_DSTRONG){
        attack = AT_DSTRONG_2;
    }
}

if(has_pot = false){
    if(attack == AT_NSPECIAL){
    if(has_shrimp == true){
        attack = AT_FSPECIAL;
     }    if(has_shrimp == false){
        attack = AT_FSPECIAL_2;
        }
    }
}


// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);