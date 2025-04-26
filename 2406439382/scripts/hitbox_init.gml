//hitbox_init


switch (attack)
{
    case AT_TAUNT:
        with (player_id)
        {
            spawn_hit_fx( x, y - 100, shine_effect );
        }
            image_index = random_func(floor(hsp * 5) % 24,5,true)
    break;
    case AT_DSPECIAL:
    {
        if (hbox_num == 2)
        {
            can_hit_self = true;
        }
    }
}