if (attack == AT_FSPECIAL)
{
	carfuel = 200;
}
if !chicken_climb
{
	chicken_climb = 1;
}
if can_taunt_dance
{
	can_taunt_dance = 0;
	sound_stop( sound_get( "music_AndNowForTodaysSponsors" ) );
	sound_stop( sound_get( "music_BlackKnife" ) );
}