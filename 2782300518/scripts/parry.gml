//Remove default parry sound effect
sound_stop(asset_get("sfx_parry_success"));
sound_play(sound_get("guard_success"));
spawn_hit_fx(x, y, parry_shield);
//Voice clip for successful parrying
if (voice = 1)
{
    stopVoice();
    sound_play(sound_get ("parry"));
}

#define stopVoice

sound_stop(sound_get("aw_yeah"));
sound_stop(sound_get("feel_my_power"));
sound_stop(sound_get("hold_on_lilac"));
sound_stop(sound_get("im_bored"));
sound_stop(sound_get ("parry"));
sound_stop(sound_get("pow_pow"));
sound_stop(sound_get("that_stupid_panda"));
sound_stop(sound_get("try_and_catch_me"));
sound_stop(sound_get("what_you_doing"));
sound_stop(sound_get("why_are_we_stopping"));
sound_stop(sound_get("wittle_wiwac"));