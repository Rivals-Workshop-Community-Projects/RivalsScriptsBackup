switch (attack){
    case AT_NSPECIAL:
        player_id.fireballs_out++;
    
        //animate
        if hitbox_timer <= 3 {
            image_index = 0
        }
        else if (hitbox_timer > 3 && hitbox_timer <= 6) {
            image_index = 1
        }
        else if (hitbox_timer > 6 && hitbox_timer <= 9) {
            image_index = 2
        }
        else {
            image_index = (get_gameplay_time()/2%8)+3
        }
        
            
        if !free { 
            vsp = -7;
            player_id.fire_bouncetime = hitbox_timer;
        }
        
        if player_id.fire_bouncetime != 0 {
            if (hitbox_timer == player_id.fire_bouncetime) {
                image_index = 11
            }
            else if (hitbox_timer >= (player_id.fire_bouncetime + 1) && hitbox_timer < (player_id.fire_bouncetime + 4)) {
                image_index = 12
            }
            else if (hitbox_timer >= (player_id.fire_bouncetime + 4) && hitbox_timer < (player_id.fire_bouncetime + 7)) {
                image_index = 13
            }
            if (hitbox_timer == (player_id.fire_bouncetime + 9)) 
                player_id.fire_bouncetime = 0
            
        }
        
        if hitbox_timer == 50 {
            
            destroyed = true;
        }
        
        if destroyed == true {
            spawn_hit_fx( x, y, fireball_dead_fx );
        }
        
    break;
}

