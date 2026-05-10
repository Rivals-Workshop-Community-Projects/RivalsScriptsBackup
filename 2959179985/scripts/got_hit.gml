if (instance_exists(bento))
{
    bento.timer = 0;
    bento.phase = 3;
}

if (instance_exists(bento2))
{
    bento2.timer = 0;
    bento2.phase = 3;
}
with(pHitBox)
{
    if (attack == AT_NSPECIAL)
    {
        destroyed = true;
    }
}
move_cooldown[AT_USPECIAL] = 0;

if (ex_meter > 0 and state_cat == SC_HITSTUN and (prev_state != PS_HITSTUN and prev_state != PS_HITSTUN_LAND and prev_state != PS_WRAPPED and prev_state != PS_FROZEN))
ex_meter -= 10