if(my_hitboxID.attack == AT_NSPECIAL){
    my_hitboxID.was_parried = true;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.hitbox_timer = 0;
    with(pHitBox){
        if(player_id == other and (attack == AT_NSPECIAL or attack == AT_FSTRONG_2 or attack == AT_FSPECIAL) and was_parried == false){
            player = other.hit_player;
            hsp = -hsp*1.5;
            if (freeze_lockout != 2)
            spr_dir *= -1;
            hitbox_timer = 0;
            was_parried = true;
            length = 90;
        }
    }
}

if(my_hitboxID.attack == AT_FSTRONG_2){
    my_hitboxID.was_parried = true;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.length = 60;
    my_hitboxID.hitbox_timer = 0;
    with(pHitBox){
        if(player_id == other and (attack == AT_NSPECIAL or attack == AT_FSTRONG_2 or attack == AT_FSPECIAL) and was_parried == false){
            player = other.hit_player;
            hsp = -hsp*1.5;
            if (freeze_lockout != 2)
            spr_dir *= -1;
            hitbox_timer = 0;
            was_parried = true;
            length = 60;
        }
    }
}

if(my_hitboxID.attack == AT_FSPECIAL){
    
    my_hitboxID.was_parried = true;
    my_hitboxID.hitbox_timer = 0;
    var spacing = point_direction(x, y - 20, my_hitboxID.x, my_hitboxID.y)
    my_hitboxID.hsp = lengthdir_x(18, spacing)
    my_hitboxID.vsp = lengthdir_y(18, spacing);
    with(pHitBox){
        if(player_id == other and (attack == AT_NSPECIAL or attack == AT_FSTRONG_2 or attack == AT_FSPECIAL) and was_parried == false){
            player = other.hit_player;
            if (freeze_lockout != 2)
            spr_dir *= -1;
            hitbox_timer = 0;
            was_parried = true;
            length = 90;
            var spacing = point_direction(x, y, player_id.x, player_id.y - 20)
            hsp = lengthdir_x(18, spacing)
            vsp = lengthdir_y(18, spacing);
        }
    }
}

if (my_hitboxID.frozen >= 1)
{
    with(pHitBox)
    {
        if (type == 2)
        {
            destroyed = true;
        }
    }
}
else if (my_hitboxID.frozen == 0)
{
    with(pHitBox)
    {
        if (type == 2 and (frozen >= 1 or stun == 1))
        {
            destroyed = true;
        }
    }
}
if (instance_exists(stopwatch))
{
    stopwatch.dead = 1;
    stopwatch2.dead = 1;
    stopwatch.explode = 0;
    move_cooldown[AT_DSPECIAL] = 120;
}