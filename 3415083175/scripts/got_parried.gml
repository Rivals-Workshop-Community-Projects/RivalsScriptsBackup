//got-parried

with obj_article1 {
    if player_id == other.id {
        state = 9;
        state_timer = 0;
    }
}

if my_hitboxID.attack == AT_FSPECIAL {
    was_parried = true
}

if my_hitboxID.attack == AT_NTHROW && my_hitboxID.hbox_num >= 3 {
    was_parried = true
}

fire_stance = false
fire_amount = 0