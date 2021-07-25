//depending on current arrow
if(my_hitboxID.type != 2)
{
    player_dmged = hit_player_obj.player;
    switch(power_color)
    {
        case 1: //fire
            take_damage(player_dmged, player, ceil(my_hitboxID.damage * .15));
            break;
        case 2: //electric
            take_damage(player_dmged, player, -ceil(my_hitboxID.damage * .2));
            break;
        case 3: //ice
            take_damage(player_dmged, player, -ceil(my_hitboxID.damage * .1));
            break;
    }
}

if(my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR)
{
    if(my_hitboxID.type == 2)
    {
        fspechit = true;
        hit_check = 2;
        hit_id = hit_player_obj;
    }
    else
    {
        set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
        set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 8);
        window_timer = 21;
    }
}