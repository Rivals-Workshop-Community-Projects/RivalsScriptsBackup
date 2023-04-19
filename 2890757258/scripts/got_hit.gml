//	got_hit.gml

//	Sound Control
if (hitpause == true)
{
	sound_stop(sound_get("sfx_shantae_crouch"));
	sound_stop(sound_get("sfx_shantae_crawlsqueak"));
	sound_stop(sound_get("sfx_shantae_monkey_cling"));
	sound_stop(sound_get("sfx_shantae_monkey_drop"));
	sound_stop(sound_get("sfx_shantae_elephant_stomp"));	
}
