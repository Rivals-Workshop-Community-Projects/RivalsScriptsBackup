//got_hit.gml

if (my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;

    if (enemy_hitboxID.kb_value == 0) set_state(PS_IDLE);
}


#define voice_play()
if (voice_id != noone){
sound_stop(voice_playing_sound);}
voice_playing_sound = sound_play(sound_get(voice_id));
voice_id = noone;