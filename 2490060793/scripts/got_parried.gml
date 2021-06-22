//got-parried

with obj_article1 {
    if player_id == other.id {
        die = true;
    }
}

if my_hitboxID.attack == AT_NSPECIAL {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
}