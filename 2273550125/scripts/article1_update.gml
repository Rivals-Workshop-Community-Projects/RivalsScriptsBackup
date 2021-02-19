//article1_update

vsp += 0.75;

if (vsp > -10)
{
	hsp = hsp * 0.965;
}

if (vsp > 10)
{
	create_hitbox(AT_UAIR, 1, x, y);
	sound_play(sound_get("dog_kaboom"));
	instance_destroy();
}