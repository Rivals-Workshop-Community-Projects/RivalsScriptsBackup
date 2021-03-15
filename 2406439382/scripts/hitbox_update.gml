//hitbox_update

switch (attack)
{
    case AT_NSPECIAL:
        with (player_id)
        {
            var time = get_hitbox_value(AT_NSPECIAL, other.hbox_num, HG_LIFETIME)
            if (other.hitbox_timer == time - 1) and (other.hbox_num == 1)
            {
                create_hitbox( AT_NSPECIAL, 2, other.x,other.y);
            }
        }
    break;
    case AT_TAUNT:
        if (!free)
        {
            destroyed = true;
        }
    
    break;
}
