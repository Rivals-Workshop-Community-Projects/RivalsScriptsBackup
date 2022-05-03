if(instance_exists(stopwatch))
{
    stopwatch.destroy = 1;
}
if(my_hitboxID.attack == AT_BAIR){
    my_hitboxID.was_parried = true;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.length = 45;
    with(pHitBox){
        if(player_id == other and (attack == AT_BAIR) and was_parried == false){
            player = other.hit_player;
            hsp = -hsp*1.5;
            if (freeze_lockout != 2)
            spr_dir *= -1;
            hitbox_timer = 0;
            was_parried = true;
            length = 45;
        }
        if (freeze_lockout == 2)
        {
            destroyed = true;
        }
    }
}

if(my_hitboxID.attack == AT_NSPECIAL){
    my_hitboxID.was_parried = true;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.length = 60;
    with(pHitBox){
        if(player_id == other and (attack == AT_NSPECIAL) and was_parried == false){
            player = other.hit_player;
            hsp = -hsp*1.5;
            if (freeze_lockout != 2)
            spr_dir *= -1;
            hitbox_timer = 0;
            was_parried = true;
            length = 60;
        }
        if (freeze_lockout == 2)
        {
            destroyed = true;
        }
    }
}

if(my_hitboxID.attack == AT_FSPECIAL){
    my_hitboxID.destroyed = true;
    with(pHitBox){
        if(player_id == other and (attack == AT_FSPECIAL) and was_parried == false){
            destroyed = true;
        }
        if (freeze_lockout == 2)
        {
            destroyed = true;
        }
    }
}