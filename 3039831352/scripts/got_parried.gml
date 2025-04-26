//got_parried.gml

//boost loss
if (blast_post_timer == 0 && (my_hitboxID.orig_player != player || my_hitboxID.attack != AT_USPECIAL))
{
    boost_cur -= boost_parryloss;
    if (boost_cur <= 0) boost_cur = 0;
}

//combo counter
combo_timer = 0;