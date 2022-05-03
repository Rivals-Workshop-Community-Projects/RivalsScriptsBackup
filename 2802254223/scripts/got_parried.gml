if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3) {
    with(obj_article2)
    {
        if(player_id == other.id)
        {
            state = 2;
            state_timer = 0;
        }
    }
}
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3) {
    with(pHitBox)
    {
        if(attack == AT_FSPECIAL && hbox_num == 2)
            destroyed = true;
    }
}

switch(moveparried){
    case AT_JAB:
        state = PS_IDLE;
        break;
}