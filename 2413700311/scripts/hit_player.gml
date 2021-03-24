//hit_player

//Final Smash
if (attack == 49 && hit_player_obj.state_cat == SC_HITSTUN) {
    if (window == 5 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
    }
}