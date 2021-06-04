if holding_house_is {
    switch state {
        case PS_IDLE:
            sprite_index = sprite_get("house_idle_lv"+string(holding_house_level))
            image_index = state_timer*idle_anim_speed
            break;
        case PS_FIRST_JUMP:
            sprite_index = sprite_get("house_jump_lv"+string(holding_house_level))
            break;
        case PS_IDLE_AIR:
            sprite_index = sprite_get("house_jump_lv"+string(holding_house_level))
            break;
        case PS_WALK:
            sprite_index = sprite_get("house_walk_lv"+string(holding_house_level))
            image_index = state_timer*walk_anim_speed
            break;
        case PS_WALK_TURN:
            sprite_index = sprite_get("house_walkturn_lv"+string(holding_house_level))
            break;
        case PS_CROUCH:
            sprite_index = sprite_get("house_crouch_lv"+string(holding_house_level))
            break;
        case PS_LAND:
            sprite_index = sprite_get("house_land_lv"+string(holding_house_level))
            break;
        case PS_JUMPSQUAT:
            sprite_index = sprite_get("house_jumpstart_lv"+string(holding_house_level))
            break;
        case PS_DOUBLE_JUMP:
            sprite_index = sprite_get("house_doublejump_lv"+string(holding_house_level))
            break;
        case PS_WALL_JUMP:
            sprite_index = sprite_get("house_walljump_lv"+string(holding_house_level))
            break;
        case PS_DASH:
            sprite_index = sprite_get("house_dash_lv"+string(holding_house_level))
            image_index = state_timer*dash_anim_speed
            break;
        case PS_DASH_START:
            sprite_index = sprite_get("house_dashstart_lv"+string(holding_house_level))
            break;
        case PS_DASH_STOP:
            sprite_index = sprite_get("house_dashstop_lv"+string(holding_house_level))
            break;
        case PS_DASH_TURN:
            sprite_index = sprite_get("house_dashturn_lv"+string(holding_house_level))
            break;
    }
    if state_cat == SC_HITSTUN {
        sprite_index = sprite_get("house_hurt_lv"+string(holding_house_level))
    }
}