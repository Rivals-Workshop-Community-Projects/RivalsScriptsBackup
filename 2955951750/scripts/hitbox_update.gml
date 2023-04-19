//crash prevention

if (attack == AT_NSPECIAL){ 
    
    if (hbox_num == 1){
        
        if (hitbox_timer == 1){
            vsp = 0;
        }
        
        if (free){
            destroyed = true;
        }
    }
}

if (attack == AT_FSPECIAL){
    if (hbox_num == 6){
        x = player_id.x+(50*spr_dir);
        if (player_id.attack != AT_FSPECIAL || !(player_id.window == 2 || player_id.window == 3 || player_id.window == 6)){ //If not during fspecial, or if not during windows 2, 3, or 6 of fspecial
            destroyed = true;
        }
    } 
}