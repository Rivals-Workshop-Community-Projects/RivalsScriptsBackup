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



//Freefall
if stage_freefalling && state != PS_ATTACK_AIR && state != PS_DOUBLE_JUMP && free && vsp > 0
{
    sprite_index = spr_stagefreefall;
    image_index = get_gameplay_time()/5;
}