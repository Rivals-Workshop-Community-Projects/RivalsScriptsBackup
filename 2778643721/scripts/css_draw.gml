if (get_color_profile_slot_r(0, 0) == 71)
{
    set_color_profile_slot( 0, 0, 72, 109, 255 );
    sound_stop(sound_get("sfx_taunt"));
    sound_play(sound_get("sfx_taunt"));
}

muno_event_type = 6;
user_event(14);
