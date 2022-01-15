//update
if(instance_exists(bubbleg))
{
    if (get_player_color(player) == 7)
    {
        bubbleg.EA = 1;
    }
    if (bubbleg.bloop = 1)
    {
        shrimp_set = 1;
    }
    if (follow == 1)
    {
        bubbleg.x = x - (1 * spr_dir) ;
        bubbleg.y = y + 5;
    }
    if (bubbleg.state == 9)
    {
        shrimp_set = 0;
        if (bubbleg.destroy_timer == 1)
        {
            if (bubbleg.EA == 1)
            spawn_hit_fx(bubbleg.x, bubbleg.y, bubble_pop_ea);
            else
            spawn_hit_fx(bubbleg.x, bubbleg.y, bubble_pop);
        }
    }
    else if (bubbleg.state == 8)
    {
        shrimp_set = 0;
        if (bubbleg.destroy_timer == 1)
        spawn_hit_fx(bubbleg.x, bubbleg.y, bubble_pop2);
    }
    if(instance_exists(bubbleg.bubbled_playerid))
    {
        if (bubbleg.bubbled_playerid == self)
        {
            shrimp_set = 0;
        }
        move_cooldown[AT_DSPECIAL] = 20;
        if (bubbleg.bloop == 1)
        {
            pikmin = bubbleg.bubbled_playerid
            bubbleg.bloop = 0;
        }
    }
}

if (instance_number(oPlayer) > 1)
{
    with(oPlayer)
    {
        if (state == PS_RESPAWN)
        {
            wet = 0;
        }
    }
}

if (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)
{
    follow = 0;
    pop = 0;
    shrimp = shrimp_set;
    nspec_charge = 0;
}

if (free == false)
{
    fspec_use = 0;
}