
switch(attack){
    case AT_DTILT:
    if(prev_state != PS_IDLE and prev_state != PS_ATTACK_GROUND and prev_state != PS_WALK_TURN){
            spawn_hit_fx(x, y, hfx_crouch);
            sound_play(sound_get("poof"));
    }
    break;
    case AT_FSPECIAL:
        set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
        fspecial_direction = 0;
        fspecial_stall_time = 0;
        if(set_extra){
            set_extra = false;
            attack = AT_EXTRA_1;
        }
        break;
    case AT_DSPECIAL:
        if(free){
            if(nspecial_used){
                move_cooldown[AT_DSPECIAL] = 2;
            }
            nspecial_used = true;
        }
        break;
    case AT_NSPECIAL:
        nspecial_has_wisp = false;
        break;
    case AT_UAIR:
        reset_hitbox_value(AT_UAIR, 2, HG_WIDTH);
        reset_hitbox_value(AT_UAIR, 2, HG_HEIGHT);
        break;
}


if(uspecial_pratfall_go_brr){
    hsp = clamp(hsp*.95, -3, 3); //9//8
    vsp = clamp(vsp*.95, -3, 4);
}