//Remove default parry sound effect
sound_stop(asset_get("sfx_parry_success"));
sound_play(sound_get("guard_success"));
//Voice clip for successful parrying
if (voice = 1)
{
    sound_play(sound_get ("parry"));
}