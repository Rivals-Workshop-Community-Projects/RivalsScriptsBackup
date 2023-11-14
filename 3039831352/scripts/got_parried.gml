//got_parried.gml

//boost loss
if (blast_post_timer == 0)
{
    boost_cur -= boost_parryloss[boost_mode];
    if (boost_cur <= 0) boost_cur = 0;
}

//combo counter
combo_timer = 0;

if (my_grab_id != noone) my_grab_id = noone;