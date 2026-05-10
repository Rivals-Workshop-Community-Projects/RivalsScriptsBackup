if(my_hitboxID.attack == AT_NSPECIAL){
    my_hitboxID.was_parried = true;
    with(pHitBox){
        if(player_id == other and (attack == AT_NSPECIAL) and was_parried == false){
            player = other.hit_player;
            if (vsp > 0)
            vsp = -vsp;
            hsp = -hsp*1.5;
            kb_angle = 180 - kb_angle;
            hitbox_timer = 0;
            was_parried = true;
        }
    }
}
if (ex_meter > 0)
ex_meter -= 10;