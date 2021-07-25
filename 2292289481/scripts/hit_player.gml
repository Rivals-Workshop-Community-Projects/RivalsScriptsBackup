// Poison moves
if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 5){ // Minion explosion
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 350;
}

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 6){ // Minion FSPECIAL explosion
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 350;
}

if (minion_poisoned == true && my_hitboxID.attack == AT_JAB && my_hitboxID.type == 2){ // Minion bite (if poisoned)
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 350;
}

if (my_hitboxID.attack == AT_NSPECIAL && window == 4){ // NSPECIAL bite
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 350;
}

/*
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){ // Nspecial projectile
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 250;
}
*/
/*
if (my_hitboxID.attack == AT_FSTRONG){ // Fstrong
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 250;
}
*/

/*
if (my_hitboxID.attack == AT_FSPECIAL && window == 4){ // Command grab bite
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 250;
}
*/

/* if (my_hitboxID.attack == AT_NSPECIAL && window == 7){ // Nspecial second bite
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 250;
} */

/* if (my_hitboxID.attack == AT_JAB && window == 8){ // Third hit of jab
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 250;
} */


// Fspecial && Nspecial command grab

if (my_hitboxID.attack == AT_FSPECIAL){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
    }
}