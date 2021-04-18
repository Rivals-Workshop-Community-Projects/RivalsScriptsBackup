//set_attack

switch(attack)
{
    case AT_DSPECIAL:
        attack = AT_NSPECIAL;
    break;
    case AT_NSPECIAL:
        attack = AT_DSPECIAL;
    break;
}

switch(attack)
{
    case AT_USPECIAL:
        if (can_uspe)
        {
            reset_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX);
        }
        else
        {
           set_window_value( AT_USPECIAL, 1, AG_WINDOW_VSPEED, -10) 
           set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
        }
    break;
    case AT_DSPECIAL:
        aimed_id = noone;
    break;
    case AT_FSPECIAL:
        acc_hand = acc_hand_ref;
        reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START);
        reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START);
    break;
}