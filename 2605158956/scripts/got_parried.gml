with(obj_article2)
{
    if(player == other.player)
    {
        state = 3; state_timer = 0;
    }
}
if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2)
{
    if(state != PS_RESPAWN && state != PS_DEAD && hit_player_obj != self)
    {
        parry_lag = 20 + floor(point_distance(hit_player_obj.x,hit_player_obj.y,x,y)/5);
        was_parried = true;
        set_state(PS_PRATFALL);
    }
    else
    {
        invincible = false;
    }
}
else
{
    move_cooldown[AT_NSPECIAL] = 240;
    portalParry = true;
}
