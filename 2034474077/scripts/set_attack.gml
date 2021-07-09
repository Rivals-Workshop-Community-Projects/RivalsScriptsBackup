can_final_spark = true;

switch (attack){
    
    case AT_NSPECIAL:
        if(specialnums[0] == 1){
            attack = AT_NSPECIAL_2 //changes Neutral B to Ultimate Uppercut
        }else if(specialnums[0] == 2){
            attack = AT_NSPECIAL_3 //changes Neutral B to Explosive Side Kick
        }
        break;

    case AT_FSPECIAL:
        if(specialnums[1] == 0){
            attack = AT_FSPECIAL_1 //changes Side B to Onslaught
        }else if(specialnums[1] == 1){
            attack = AT_FSPECIAL_2 //changes Side B to Burning Dropkick
        }
        break;

    case AT_USPECIAL:
        if(specialnums[2] == 0){
            attack = AT_USPECIAL_1 //changes Up B to Soaring Axe Kick
        }else if(specialnums[2] == 2){
            attack = AT_USPECIAL_3 //changes Up B to Thrust Uppercut
        }
        break;

    case AT_DSPECIAL:
        if(specialnums[3] == 0){
            attack = AT_DSPECIAL_1 //changes Down B To Head-On Assault
        }else if(specialnums[3] == 2){
            attack = AT_DSPECIAL_3 //changes Down B to Counter Throw
        }
        break;
    
    case AT_UAIR:
        if(runeO){
            attack = AT_UNCHAINED; //run
        }
    
}