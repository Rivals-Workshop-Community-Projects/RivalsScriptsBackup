#macro POWDER_CASCADE 0
#macro POWDER_BLACK 1
#macro POWDER_CLUSTER 2
#macro POWDER_SPARKLER 3
should_spawn_special_bomb = true;

if current_bomb_powder != POWDER_BLACK {
    
    // If a bomb already exists with this powder, we know that we should not spawn another one of that type.
    var hitbox_exists = false;
    with pHitBox {
        if player_id != other or "powder" not in self or powder != other.current_bomb_powder continue;
        
        hitbox_exists = true
        break;
    }
    
    if hitbox_exists {
        should_spawn_special_bomb = false;
    }
    else 
    {
        //Let's see if any residuals of any other bombs exist.
        switch (current_bomb_powder) {
            case POWDER_CASCADE:
                var arrays = [cascade_flames, cascade_flames_2]
                
                var i = 0;
                var found = false;
                repeat (2) {
                    var j = 0;
                    repeat (array_length(arrays[i])) {
                        var flame = arrays[i][j]
                        if flame.active {
                            found = true;
                            break;
                        }
                    }
                    
                    if found break;
                }
                
                should_spawn_special_bomb = !found;
            break;
            case POWDER_CLUSTER:
                should_spawn_special_bomb = !bomb_cluster_info.active
            break;
        }
    }
}
