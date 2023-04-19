// ------------- death.gml -------------------
// this file runs for one frame on death

with (obj_article1)
{
    if (other.id == player_id) state = 3;
}

//sound_play(ssl_death_sound); //this plays when you die, change it in init for a different sound!

sound_play(sound_get("death_mad"),false, noone, .9, 1);  