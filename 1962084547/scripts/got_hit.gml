
if (taunt_timer != 0)
{
	taunt_timer = 0;
	suppress_stage_music( 1, 1 );
	sound_stop( sound_get( "static" ) );
}