//set_attack

if (attack == AT_NSPECIAL && frog_exists = 1){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_USPECIAL && !free){
    attack = AT_USPECIAL_GROUND;
}


if (attack == AT_DSPECIAL && frog_exists = 1){
    if (point_distance(x, y, frog.x, frog.y) < 60 && free = 0){
    attack = AT_DSPECIAL_2;
    }
    if (point_distance(x, y, frog.x, frog.y) > 59 || free = 1){
    attack = 48;
    }
    
}

user_event(13);



//FINAL SMASH




