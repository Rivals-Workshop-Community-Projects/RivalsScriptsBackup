with(obj_article2)
{
    if(player == other.player)
    {
        state = 3; state_timer = 0;
    }
}

move_cooldown[AT_NSPECIAL] = 120;
portalParry = true;