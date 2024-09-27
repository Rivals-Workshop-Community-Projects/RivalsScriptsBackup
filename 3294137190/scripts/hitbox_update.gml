switch attack {
    case AT_FSPECIAL:
        if (hitbox_timer >= length - 1) {
            spawn_hit_fx(x, y, player_id.fspecial_proj_die)
        }
        if (player_id.enemy_attacks){
            damage = 0;
            kb_value = 1;
            hitpause = 18;
        }
        else {
            damage = 6;
            kb_value = 6;
            hitpause = 8;
        }
        
    break;
    case AT_DSPECIAL:
        can_hit_self = true;
    break;
}