if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3) {
    with(obj_article2)
    {
        if(player_id == other.id)
        {
            state = 2;
            state_timer = 0;
        }
    }
    move_cooldown[AT_NSPECIAL] = 75;
}
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3) {
    with(pHitBox)
    {
        if(attack == AT_FSPECIAL && hbox_num == 2)
            destroyed = true;
    }
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
    with(pHitBox)
        hitbox_timer = 0;
}

if (my_hitboxID.attack == AT_DSPECIAL)
    move_cooldown[AT_DSPECIAL] = 75;

switch(moveparried){
    case AT_JAB:
        state = PS_IDLE;
        break;
}