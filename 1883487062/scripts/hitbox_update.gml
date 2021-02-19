//hitbox_update

if (attack == AT_EXTRA_3 && hbox_num == 2){
    proj_angle++;
}

if (attack == AT_EXTRA_3 && hbox_num == 4){
    spr_dir = 1;
}

if (attack == AT_FSPECIAL && hbox_num == 1){
    if (hspeed <= 8 && hspeed >= -8){
            if (spr_dir == 1){
                hsp += 0.4;
            }
            else{
                hsp -= 0.4;
            }
        }
}

if (attack == AT_FSPECIAL_2 && hbox_num == 1){
    var shortest_dist = 9999;
    var shortest_id = noone;
                
    with (asset_get("oPlayer")) {
        if (player != other.player) {
            var curr_dist = point_distance(x,y,other.x,other.y);
            if (curr_dist < shortest_dist) {
                shortest_dist = curr_dist;
                shortest_id = id;
            }
        }
    }
    
    if (shortest_id != noone) {
    with (shortest_id) {
        
        if (other.hspeed <= 10 && other.hspeed >= -10){
            if (other.spr_dir == 1){
                other.hsp += 0.5;
            }
            else{
                other.hsp -= 0.5;
            }
        }
    
        if (other.y > y - 28){
            other.y -= 3;
        }
        else if (other.y < y - 36){
            other.y += 3;
        }
    }
    } else {
    }
}

if (attack == AT_USPECIAL && hbox_num == 1){
    if(window == 1 && window_timer == 1){
        popTimer = 0;
    }
    if (get_gameplay_time() % 8 == 0){
        create_hitbox(AT_USPECIAL, 3, x + (80 * spr_dir), y + 80);
    }
}

// FIRE BAR

