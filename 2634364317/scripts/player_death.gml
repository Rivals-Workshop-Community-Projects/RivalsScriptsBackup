//death of a player


if (hit_player_obj.state != PS_HITSTUN)
{
	sound_play(sound_get("aw"), false, noone, 0.6);
	if (hit_player_obj.last_player_hit_me != 0)
	{
		sound_play(sound_get("clap"), false, noone, 0.6);
	}
}
else
{
	//knockout hit: died while still in hitstun
    crowd_detect_phase = 0;
    crowd_tracked_player = noone;
	sound_play(sound_get("cheer_1"), false, noone, 0.6);
	
	if (audience_article != noone)
	{
		audience_article.react_type = knockout_reaction;
		audience_article.react_timer = 15 + random_func_2(31, 30, true);
	}
}