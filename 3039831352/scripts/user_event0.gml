//boost mode (and super sonic) attack speed increase

var mult = boost_atk_spd_mult;
for (var i = 1; i < 48; i ++) if (i != AT_INTRO && i != 3 && i != AT_EXTRA_1 && i != AT_TAUNT && i != AT_TAUNT_2)
{
    //window values
    for (var j = 1; j <= get_attack_value(i, AG_NUM_WINDOWS); j ++)
    {
        if (!boost_mode && !is_super)
        {
            reset_window_value(i, j, AG_WINDOW_LENGTH);
            reset_window_value(i, j, AG_WINDOW_CANCEL_FRAME);
            reset_window_value(i, j, AG_WINDOW_SFX_FRAME);
        }
        else
        {
            set_window_value(i, j, AG_WINDOW_LENGTH, max(1, floor(get_window_value(i, j, AG_WINDOW_LENGTH) * mult)));
            set_window_value(i, j, AG_WINDOW_CANCEL_FRAME, floor(get_window_value(i, j, AG_WINDOW_CANCEL_FRAME) * mult));
            set_window_value(i, j, AG_WINDOW_SFX_FRAME, floor(get_window_value(i, j, AG_WINDOW_SFX_FRAME) * mult));
            if (get_window_value(i, j, AG_WINDOW_SFX_FRAME) == get_window_value(i, j, AG_WINDOW_LENGTH))
            {
                set_window_value(i, j, AG_WINDOW_SFX_FRAME, get_window_value(i, j, AG_WINDOW_SFX_FRAME)-1);
            }
        }
    }

    //hitboxes
    for (var j = 1; j <= get_num_hitboxes(i); j ++)
    {
        if (!boost_mode && !is_super)
        {
            if (get_hitbox_value(i, j, HG_HITBOX_TYPE) == 1) reset_hitbox_value(i, j, HG_LIFETIME);
            reset_hitbox_value(i, j, HG_WINDOW_CREATION_FRAME);
        }
        else
        {
            if (get_hitbox_value(i, j, HG_HITBOX_TYPE) == 1) set_hitbox_value(i, j, HG_LIFETIME, max(1, floor(get_hitbox_value(i, j, HG_LIFETIME) * mult)));
            set_hitbox_value(i, j, HG_WINDOW_CREATION_FRAME, floor(get_hitbox_value(i, j, HG_WINDOW_CREATION_FRAME) * mult));
        }
    }
}