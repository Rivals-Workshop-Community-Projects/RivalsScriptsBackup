//hitbox update, FOR PROJECTILES ONLY
switch (attack){
    case AT_NSPECIAL:
        if (hbox_num == 1) {
            if hitbox_timer == 20
                destroyed = true;
        }
        if (hbox_num == 2) {
            {
                if hitbox_timer == 28
                    destroyed = true;
            }
            var randfx = player_id.fx_shade_p
    	    if (random_func(7, 2, true) == 0) {
    	    	randfx = player_id.fx_shade_p
    	    } else {
    	    	randfx = player_id.fx_shade_p_small
    	    }
    	    spawn_hit_fx( x-((35 + random_func( 1, 40, true )) * spr_dir), y-50+random_func( 8, 42, true ), randfx)
        }  
    
        if (was_parried) draw_xscale = spr_dir;
    break;
}