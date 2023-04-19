//hitbox_init

//==========================================================
if (attack == AT_JAB)
{
    if ("msg_unsafe" not in self) msg_unsafe = false;
}
//==========================================================
else if (attack == AT_USTRONG)
{
    coin_fading = false;

    original_kb_value = kb_value;
    original_kb_scale = kb_scale;
    temp_team_attack = get_match_setting(SET_TEAMATTACK);
}
//==========================================================
else if (attack == AT_FSPECIAL_2)
{
    var bubble_can_hit = orig_player_id.msg_collective_bubble_lockout;

    for (var p = 0; p < array_length(bubble_can_hit); p++)
    {
        can_hit[p] = bubble_can_hit[p] == 0;
    }
}
//==========================================================
else if (attack == AT_FSPECIAL_AIR) //Hydro Pump
{
    uses_sprite_collision = false; //to show hitbox
}
//==========================================================
else if (attack == AT_NSPECIAL)
{
    if ("missingno_copied_player_id" not in self)
        missingno_copied_player_id = player_id;

    initial_hsp = hsp;
    initial_vsp = vsp;

    //bypass team attack 
    my_team = get_player_team(orig_player_id.player);
    for (var p = 1; p < array_length(can_hit); p++)
    {
        if (is_player_on(p)) can_hit[p] = (get_player_team(p) != my_team);
    }
}