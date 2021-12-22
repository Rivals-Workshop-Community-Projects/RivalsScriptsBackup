//hitbox_update

if (attack == AT_NSPECIAL) {
    if (player_id.CannBallOppHit == true){
        
        if(hbox_num == 1 || hbox_num == 2 || hbox_num == 3){
            can_hit_self = true;
            
            with(oPlayer){
                if(player != other.player){
                    other.can_hit[player] = false;
                }
            }
        }
        
    } else {
        if(hbox_num == 1){
            can_hit_self = false;
        }
        if(hbox_num == 2){
            can_hit_self = false;
        }
        if(hbox_num == 3){
            can_hit_self = false;
        }
    }
}


