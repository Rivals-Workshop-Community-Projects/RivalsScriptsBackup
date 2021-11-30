if (( my_hitboxID.attack == AT_UAIR) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}



if ( my_hitboxID.attack == 49){
	if(my_hitboxID.hbox_num = 1){
		if(my_hitboxID.destroyed = true){
			window = 5;
			window_timer = 0;
		}
	}
}