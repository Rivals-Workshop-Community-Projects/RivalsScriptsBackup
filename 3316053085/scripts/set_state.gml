//set_state.gml

if (last_sound_to_stop != noone && (state_cat == SC_HITSTUN || attack == AT_UAIR && state == PS_LANDING_LAG))
{
    sound_stop(last_sound_to_stop);
    last_sound_to_stop = noone;
}

if (!can_uspec && (!free || state == PS_WALL_JUMP || state == PS_DEAD || state == PS_RESPAWN || state_cat == SC_HITSTUN)) can_uspec = true;