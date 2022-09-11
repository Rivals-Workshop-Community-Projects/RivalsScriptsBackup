switch (attack)
{

    case AT_NSPECIAL:
        if (!free)
        {
            if (turnabout || turnabout_ready)
            {
                attack_end();
                attack = AT_NSPECIAL_2;
            }
        }
        else 
        {
            if (turnabout || turnabout_ready)
            {
                attack_end();
                attack = AT_NSPECIAL_2_AIR;
            }
            else
            {
                attack_end();
                attack = AT_NSPECIAL_AIR;
            }
        }
        break;

    case AT_DSPECIAL:
        if (evidence_count == 3)
        {
            if (special_error_cooldown == 0)
            {
                sound_stop(asset_get("mfx_tut_fail"));
                sound_play(asset_get("mfx_tut_fail"));
                special_error_cooldown = 60;
            }
            move_cooldown[AT_DSPECIAL] = 2;
        }
        break;

    case AT_FSPECIAL:
        if (turnabout) attack = AT_FSPECIAL_2;
        else if (evidence_count == 0)
        {
            if (special_error_cooldown == 0)
            {
                sound_stop(asset_get("mfx_tut_fail"));
                sound_play(asset_get("mfx_tut_fail"));
                special_error_cooldown = 60;
            }
            move_cooldown[AT_FSPECIAL] = 2;
        }
        break;

    case AT_FSTRONG:
        if (good_evidence_count < 1)
        {
            if (turnabout) attack = AT_FTILT2;
            else attack = AT_FTILT;
        }
        break;

    case AT_USTRONG:
        if (good_evidence_count < 1)
        {
            if (turnabout) attack = AT_UTILT2;
            else attack = AT_UTILT;
        }
        break;

    case AT_DSTRONG:
        if (good_evidence_count < 1)
        {
            if (turnabout) attack = AT_DTILT2;
            else attack = AT_DTILT;
        }
        break;


    case AT_JAB:
        if (turnabout) attack = AT_JAB2;
        break;

    case AT_FTILT:
        if (turnabout) attack = AT_FTILT2;
        break;

    case AT_UTILT:
        if (turnabout) attack = AT_UTILT2;
        break;

    case AT_DTILT:
        if (turnabout) attack = AT_DTILT2;
        break;

    case AT_NAIR:
        if (turnabout) attack = AT_NAIR2;
        break;

    case AT_FAIR:
        if (turnabout) attack = AT_FAIR2;
        break;

    case AT_BAIR:
        if (turnabout) attack = AT_BAIR2;
        break;

    case AT_UAIR:
        if (turnabout) attack = AT_UAIR2;
        break;

    case AT_DAIR:
        if (turnabout) attack = AT_DAIR2;
        break;

}