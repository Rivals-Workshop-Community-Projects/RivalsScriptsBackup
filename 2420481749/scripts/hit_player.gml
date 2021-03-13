//hi


if my_hitboxID.attack == AT_NAIR && (my_hitboxID.hbox_num == 11 || my_hitboxID.hbox_num == 19)
{
    hammercoins = true;
    if my_hitboxID.hbox_num == 11
    {
        shouldSpawnGreat = true;
    }
}

doublepower_reset = true;

if my_hitboxID.attack == AT_DAIR 
{
    if hit_player_obj.orig_knock >= 11
    {
        spawn_hit_fx( x-64*spr_dir, y-46, great);
    }
    else
    {
        spawn_hit_fx( x-64*spr_dir, y-46, good);
    }
}

if my_hitboxID.attack == AT_DSTRONG_2 && my_hitboxID.hbox_num == 1
{
    with pHitbox
    {
        if player_id = other.id
        {
            
        }
    }
}