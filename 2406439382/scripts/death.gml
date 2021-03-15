// called when the character gets KO'd

// death sound effect
sound_play(sound_get("death"));

jizo = has_rune("M");

with (obj_article1)
{
    if (player_id == other)
    {
        state = 1;
    }
}

fspe_stall = 0;