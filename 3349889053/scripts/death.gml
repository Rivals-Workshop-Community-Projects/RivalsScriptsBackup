if instance_exists(minion_obj) {
    if minion_obj.state == PS_BURIED or minion_obj.state == PS_SPAWN {
        minion_obj.state = PS_DEAD;
    }
    else {
        minion_obj.state = PS_CRYSTALIZED
    }
    
    minion_obj.minion_sprite_index = minion_state_info[? minion_obj.state].sprite;
    minion_obj.minion_image_index = 0;
    minion_obj.state_timer = 0;
    minion_obj.lock_state = true;
    
    with pHitBox {
        if owner != other.minion_obj continue;
        
        destroyed_next = true;
    }
}