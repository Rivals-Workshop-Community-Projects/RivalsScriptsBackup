// called when the character gets KO'd
sound_play(sound_get("sfx_death"));

if soul != noone and soul.lifetime != soul.lifetime_max{
    soul.state = 5;
    soul.state_timer = 0;
}