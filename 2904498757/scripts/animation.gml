switch state {
    case PS_IDLE_AIR:
        sprite_index = spr_idle_air;
        image_index = state_timer / 4;
        break;
    case PS_FIRST_JUMP:
        if vsp >= max_fall {
            sprite_index = spr_idle_air;
            image_index = state_timer / 4;
        }
        break;
    case PS_PRATFALL:
        image_index = state_timer / 4;
        break;
}