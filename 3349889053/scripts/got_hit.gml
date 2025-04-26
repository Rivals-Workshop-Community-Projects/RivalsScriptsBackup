minion_attack_forgiveness_timer = 0;

if "decay_info" in hit_player_obj {
    hit_player_obj.decay_info.player = -1
    hit_player_obj.decay_info.timer = 0;
    hit_player_obj.outline_color = [0, 0, 0]
}

with hit_player_obj init_shader();

var minion_exists = instance_exists(minion_obj)

if minion_exists {
    var in_tombstone = minion_obj.state == PS_BURIED or minion_obj.state == PS_SPAWN;
    var in_valid_attack = (minion_obj.state == PS_ATTACK_GROUND and minion_obj.attack != 4 and minion_obj.attack != 5 and minion_obj.attack != 7);
    var in_other_state = minion_obj.state != PS_ATTACK_GROUND
    
    if (!in_tombstone and (in_valid_attack or in_other_state)) {
        minion_obj.state = PS_HITSTUN_LAND
        minion_obj.state_timer = 0;
        minion_obj.lock_state = true
        minion_obj.minion_image_index = 0;
        minion_obj.minion_sprite_index = minion_state_info[? minion_obj.state].sprite;
        with pHitBox {
            if owner != other.minion_obj continue;
            
            destroyed_next = true;
        }        
    }
}

if instance_exists(minion_obj) and (minion_obj.state == PS_ATTACK_GROUND and minion_obj.attack == 7) and enemy_hitboxID.player_id != id {
    minion_obj.grabbed_player = noone;
}