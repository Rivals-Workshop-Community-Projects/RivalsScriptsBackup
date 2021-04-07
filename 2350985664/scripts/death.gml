// called when the character gets KO'd

// death sound effect
sound_play(sound_get("death"));

ds_list_clear(caged_list);
ds_list_clear(cage_time_list);

has_uspecial = uspecial_max;
has_fspecial = fspecial_max;

with(oPlayer)
{
    if (self != other)
    {
        if (blinded_id == other)
        {
            blinded = 0;
        }
    }
}