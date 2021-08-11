switch (attack)
{
    case AT_USPECIAL:
        if (fuel == 0)
        {
            failboosttype = 1;
            attack = AT_SPECIALFAIL;
            //if (infield) FieldRefuel();
            //else attack = AT_SPECIALFAIL;
        }
        break;

    case AT_FSPECIAL:
        if (fuel == 0)
        {
            failboosttype = 2;
            attack = AT_SPECIALFAIL;
            //if (infield) FieldRefuel();
            //else attack = AT_SPECIALFAIL;
        }
        break;

    case AT_BAIR:
        if (fuel == 0)
        {
            attack = AT_BAIRFAIL;
            //if (infield) FieldRefuel();
            //else attack = AT_BAIRFAIL;
        }
        break;

    case AT_DSPECIAL:
        if (articleout) attack = AT_DSPECIAL2;
        break;

    case AT_TAUNT:
        if (down_down) attack = AT_TAUNT2;
        else if (get_player_color(player) == 3 || get_player_color(player) == 11 || get_player_color(player) == 13 || get_player_color(player) == 14 || get_player_color(player) == 18)
        {
            attack = AT_ALTTAUNT;
                if (get_player_color(player) == 3) window = 1;
                else if (get_player_color(player) == 11) window = 2;
                else if (get_player_color(player) == 13) window = 3;
                else if (get_player_color(player) == 14) window = 4;
                else if (get_player_color(player) == 18) window = 5;
        }
        break;

}

//#define FieldRefuel()
//{
//    if (instance_exists(fueltank_ins))
//        fieldGain = {x:fueltank_ins.x, y:fueltank_ins.y, timer:fieldGainTimer};
//    fuel = 3;
//    sound_play(asset_get("mfx_coin"));
//    articlestate = 1;
//    tankcooldown = 360;
//}