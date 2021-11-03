//hitbox_update


if (attack == AT_FSPECIAL_2){
    
if (player_id.state = PS_ATTACK_AIR && player_id.attack == AT_FSPECIAL_2 && player_id.window = 1){
        length = 0;
    }
    
    
    if (y > room_height + 99){
    length = 0;
}
    
    if (player_id.frog_exists = 1){
        
        
        
        if (free = 1){
        player_id.frog.x = x
        player_id.frog.y = y
        player_id.frog.hsp = hsp;
        player_id.frog.vsp = vsp;    
        
        if (hsp > 0){
            player_id.frog.spr_dir = 1
        }
        
        if (hsp < 0){
            player_id.frog.spr_dir = -1
        }
    
    }
    
            if (free = 0){
        player_id.frog.state = PS_IDLE_AIR;
        player_id.frog.state_timer = 0;
        length = 0;
    }    
    
}

}




if (player_id.frog_exists = 1 && (player_id.frog.state != PS_ATTACK_GROUND && player_id.frog.state != PS_ATTACK_AIR) && attack = AT_FSPECIAL){
    if (point_distance(x, y, player_id.frog.x, player_id.frog.y ) < 70){
        player_id.frog.state = PS_TUMBLE;
        player_id.frog.state_timer = 0;
    }
}
