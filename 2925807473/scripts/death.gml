//death.gml

if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (clinging) clinging = false;

sound_stop(voice_playing_sound);

if voiceon == 2
{snd_rng = random_func(0, 3, true);
    if (snd_rng == 0){
     sound_play(sound_get("hz_death"))
     }
     if (snd_rng == 1){
     sound_play(sound_get("hz_death2"))
     }
     if (snd_rng == 2){
     sound_play(sound_get("hz_death3"))
     }
}
else if voiceon == 1
{snd_rng = random_func(0, 3, true);
    if (snd_rng == 0){
     sound_play(sound_get("hz_death4"))
     }
     if (snd_rng == 1){
     sound_play(sound_get("hz_death5"))
     }
     if (snd_rng == 2){
     sound_play(sound_get("hz_death6"))
     }
}

chainstocks = 2
chaintimer = 0