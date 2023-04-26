state_timer++;
total_timer++;

var state0Check = state == 0 && image_index != 25;

var previous_image_index = image_index;

if(image_index != 25 && image_index != 30 && image_index != 44){
    image_index += .50;
}

//hit detection
if(state == 0){
    var player_detection = collision_rectangle(x + 45 * spr_dir, y - 15, x - 45 * spr_dir, y - 50, asset_get("pHurtBox"), false, true);
} else if(state == 1){
    var player_detection = collision_rectangle(x + 45 * spr_dir, y - 15, x - 45 * spr_dir, y - 50, asset_get("pHurtBox"), false, true);
}

if(player_detection != noone){
    if(variable_instance_exists(player_detection, "playerID")){
        if(player_detection.dodging == true){
            player_detection = noone;
        } else {
            player_detection = player_detection.playerID;
        }
        // laser unable to detect amber
        // if(player_detection == player_id){
        //     player_detection = noone;
        // }
    } else {
        player_detection = noone;
    }
}

switch(state){
    case 0:
    
    if(state_timer == 4){
        var temp_hitbox = create_hitbox(AT_DSTRONG, 11, x, y-25);
        temp_hitbox.can_hit_self = true;
        temp_hitbox.can_hit[player_id.player] = false;
    }
    
    if(state_timer > 30){
        if(player_detection != noone){
            state = 1;
            state_timer = 0;
            image_index = 25.5;
        }
    }
    
    break;
    
    case 1:
    
    if(state_timer == 4){
        create_hitbox(AT_DSTRONG, 12, x, y-25);
    }
    
    if(state_timer > 30){
        if(player_detection != noone){
            state = 0;
            state_timer = 0;
            image_index = 20;
        }
    }
    
    
    
    break;
    
    case 69:
    if(state_timer == 1){
        image_index = 37;
        if(previous_image_index >= 22 && previous_image_index < 28){
            x -= 30 * spr_dir;
        }
    }
    if(state_timer == 8){
        instance_destroy();
        exit;
    }
    
    break;
    
    default:
    state = 69;
    state_timer = 0;
    image_index = 37;
    break;
}