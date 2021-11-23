//hitplayer

if (my_hitboxID.attack == UNOWN_ATK.J && my_hitboxID.hbox_num == 1)
{
    if (!instance_exists(unown_j_victim))
    {
        //track victim
        unown_j_victim = hit_player_obj;
        sound_play(sound_get("ssbm_grab"));
        //grab phase 2
        window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}