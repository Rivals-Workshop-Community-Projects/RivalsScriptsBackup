//death.gml

if (attack == 3) //kill sonic
{
    set_player_stocks(player, 1);
    if (get_match_setting(SET_STOCKS) == 0) set_player_stocks(player, -999); //for stockless matches sonic just gets -999 so he's always losing
    sonic_suicide = true;
}
mask_index = 6;

boost_cur = 0;
can_nspec = true;
can_spawn_trick_ring = true;

trick_attack_buffered = 0;
attack_should_pratfall = false;

combo_timer = 0;

if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

blast_cur = 0;
blast_meter_ready_img = 1;
blast_post_timer = 0;

//ring loss
if (has_superform)
{
    if (rings_cur > 0) sound_play(sound_get("sfx_ring_death"));
    var amount = min(rings_cur, 20);
    var center_stage = point_direction(x, y, room_width/2, 0);
    var ring_base_hsp = point_distance(x, 0, room_width/2, 0)/200;
    var ring_base_vsp = point_distance(0, y, 0, get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE))/50;

    for (var i = 1; i <= amount; i ++)
    {
        var ring = create_hitbox(
            0, 1,
            floor(x),
            floor(y - char_height / 1.75)
        );
        ring.hsp = lengthdir_x(ring_base_hsp + random_func_2(i, amount, true)/2 + (21 - amount), center_stage);
        ring.vsp = lengthdir_y(ring_base_vsp + random_func_2(i + amount, amount, true)/2 + (21 - amount), center_stage);
        ring.ring_player = 0;
    }
    rings_cur = 0;
}

if (lang != 0 && attack != 3)
{
    var number = random_func(6, 4, true)+1;
    if (number < 3) cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_hurt_strong" + string(number)));
    else cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_death" + string(number-2)));
}