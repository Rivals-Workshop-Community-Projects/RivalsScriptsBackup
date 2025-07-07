if (attack == AT_JAB)
{
    sound_stop(sound_get("lapis_lazuli"));
}

if (attack == AT_DTILT)
{
    sound_stop(sound_get("crafting_table"));
}

if (attack == AT_NSPECIAL && free)
{
    attack = AT_NSPECIAL_AIR;
}