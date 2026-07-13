///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml

switch (attack)
{
    case AT_DATTACK:
        if (up_down) attack = AT_UTILT;
        else if (down_down) attack = AT_DTILT;
        else if (left_down || right_down) attack = AT_DATTACK;
        break;
    case AT_USTRONG:
        ustrong_first_hit = noone;
        if (do_ustrong_ex)
        {
            for (var i = 1; i <= 2; i++)
            {
                reset_hitbox_value(attack, i, HG_DAMAGE); //8
                reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK); //8
                reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING); //1
                reset_hitbox_value(attack, i, HG_BASE_HITPAUSE); //9
                reset_hitbox_value(attack, i, HG_HITPAUSE_SCALING); //0.6
            }
            do_ustrong_ex = false;
        }
        break;
    case AT_DSTRONG:
        dstrong_ex_charges = 0;
        dstrong_ex_uses = 0;
        dstrong_ex_useable = min(floor(charge_cur/100), dstrong_ex_usable_max);

        reset_hitbox_value(attack, 2, HG_BASE_KNOCKBACK);
        reset_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
        break;
    case AT_USPECIAL:
        can_uspec = false;
        reset_window_value(attack, get_attack_value(AT_USPECIAL, AG_NUM_WINDOWS), AG_WINDOW_TYPE);
        break;
    case AT_FSPECIAL:
        can_fspec = false;
        break;
    case AT_DSPECIAL:
        healing_dspec = false;
        break;
}