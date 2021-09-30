//set_attack

if (attack == AT_NSPECIAL && frog_exists = 1){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_USPECIAL && !free){
    attack = AT_USPECIAL_GROUND;
}


if (attack == AT_DSPECIAL && frog_exists = 1){
    if (point_distance(x, y, frog.x, frog.y) < 76 && free = 0){
    attack = AT_DSPECIAL_2;
    }
    if (point_distance(x, y, frog.x, frog.y) > 75 || free = 1){
    attack = 48;
    }
    
}

	muno_event_type = 2;
	user_event(14);




