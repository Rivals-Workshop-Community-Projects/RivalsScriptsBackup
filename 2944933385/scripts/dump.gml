//AT_FSPECIAL_2, window 2
/*
    	if (!pellet.hydrant_stuck && fspecial_stuck && collision_line(x, y, x + 32*spr_dir, y, hydrant, false, false)){
		    create_hitbox(AT_FSPECIAL_2, 2, x, y);
    	}
    	if (pellet.hydrant_stuck == true && fspecial_stuck && collision_line(x, y, x + 32*spr_dir, y, hydrant, false, false)){
    		window = 3;
    		window_timer = 0;
		    create_hitbox(AT_FSPECIAL_2, 2, x, y);
    	}
*/

//DSPECIAL
/*
if (attack == AT_DSPECIAL){
	if (window == 1 && window_timer == 1){
		vsp -= 8;
	}
    if (window == 2 && window_timer == 1 && !hitpause){
    	spawn_hit_fx(x, y + 6, 144);
    	if (!instance_exists(hydrant)){
    	hydrant_hit = create_hitbox(AT_DSPECIAL, 1, x, y + 6);
    	}
    	}
    can_fast_fall = false;
    can_move = false;
}
*/