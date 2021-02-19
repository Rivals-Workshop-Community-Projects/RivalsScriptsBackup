//hitbox_update

if (attack == AT_EXTRA_1)
{
    if (player_id.kk_rat != noone)
    {
        x = player_id.kk_rat.x;
        y = player_id.kk_rat.y;
        hitbox_timer--;
    }
    else
        destroyed = true;
}
