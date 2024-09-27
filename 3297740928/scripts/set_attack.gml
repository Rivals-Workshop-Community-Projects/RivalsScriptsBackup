//code used to check the other specials

switch (attack){
    
    case AT_NSPECIAL:
        if(specialnums[0] == 1){
            attack = AT_NSPECIAL_2 //changes Neutral B to Laser Blaze
        }else if(specialnums[0] == 2){
            attack = AT_NSPECIAL_3 //changes Neutral B to Grenade Launch
        }
        break;

    case AT_FSPECIAL:
        if(specialnums[1] == 1){
            attack = AT_FSPECIAL_2 //changes Side B to Stealth Burst
        }else if(specialnums[1] == 2){
            attack = AT_FSPECIAL_3 //changes Side B to Gunner Missile
        }
        break;

    case AT_USPECIAL:
        if(specialnums[2] == 1){
            attack = AT_USPECIAL_2 //changes Up B to Cannon Jump Kick
        }else if(specialnums[2] == 2){
            attack = AT_USPECIAL_3 //changes Up B to Arm Rocket
            arocket_angle = 90;
            arocket_target_angle = 90;
            //arocket_can_land = free;
        }
        break;

    case AT_DSPECIAL:
        if(specialnums[3] == 1){
            attack = AT_DSPECIAL_2 //changes Down B to Bomb Drop
        }else if(specialnums[3] == 2){
            attack = AT_DSPECIAL_3 //changes Down B to Absorbing Vortex
        }
        break;

}