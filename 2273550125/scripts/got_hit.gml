//got_hit.gml

if (abs(orig_knock) > 20)
{
	sound_play(sound_get("dog_hurt"));
}
if (abs(orig_knock) > 30)
{
	sound_play(sound_get("dog_ouch"));
}

if (greaterdog_object != 0 && greaterdog_timer >= 100)
{
	greaterdog_timer -= 100;
}