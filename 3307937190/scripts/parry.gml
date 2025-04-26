//parry.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

play_voice(["parry1", "parry2"], voice_cooldown_set);

#define play_voice (_string_array, _cooldown)
var arr = _string_array;
if (!is_array(arr)) arr = [_string_array];

if (lang != 0)
{
	if(secretalt == 1)
	{
	    cur_voiceclip[0] = sound_play(sound_get("sl_naa"));
	}
	else if (voice_cooldown <= 0) {
		var num = floor(random_func(6, array_length(arr), false));
	    cur_voiceclip[0] = sound_play(sound_get("va_" + string(arr[num]) + "_" + string(lang)));
	    voice_cooldown = _cooldown;
	}
}

#define stop_voice()
sound_stop(cur_voiceclip[1]);