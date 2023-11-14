//boost mode toggle stuff (unused)

var mult = 0.75;
for (var i = 0; i < 50; i ++)
{
    //window values
    for (var j = 1; j <= get_attack_value(i, AG_NUM_WINDOWS); j ++)
    {
        if (boost_mode)
        {
            reset_window_value(i, j, AG_WINDOW_LENGTH);
            reset_window_value(i, j, AG_WINDOW_CANCEL_FRAME);
            reset_window_value(i, j, AG_WINDOW_SFX_FRAME);
        }
        else
        {
            set_window_value(i, j, AG_WINDOW_LENGTH, get_window_value(i, j, AG_WINDOW_LENGTH) * mult);
            set_window_value(i, j, AG_WINDOW_CANCEL_FRAME, get_window_value(i, j, AG_WINDOW_CANCEL_FRAME) * mult);
            set_window_value(i, j, AG_WINDOW_SFX_FRAME, get_window_value(i, j, AG_WINDOW_SFX_FRAME) * mult);
        }
    }

    //hitboxes
    for (var j = 1; j <= get_num_hitboxes(i); j ++)
    {
        if (boost_mode)
        {
            reset_hitbox_value(i, j, HG_WINDOW_CREATION_FRAME);
        }
        else
        {
            set_hitbox_value(i, j, HG_WINDOW_CREATION_FRAME, get_hitbox_value(i, j, HG_WINDOW_CREATION_FRAME) * mult);
        }
    }
}