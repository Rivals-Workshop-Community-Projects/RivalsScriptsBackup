switch (state) {
        case PS_WALL_JUMP:
            if clinging {
                image_index = clamp(floor(state_timer/6), 0, 1)
            } else if state_timer > 4 {
                image_index = 2 + floor(walljump_timer/6)
            }
        break;
        case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
        if(attack == AT_USPECIAL){
            if has_hit_player sprite_index = sprite_get("uspecial") else sprite_index = sprite_get("uspecial_miss");
        }
        break;
}