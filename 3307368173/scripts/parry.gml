//parry.gml

play_voice(["parry_0", "parry_1"], 4, false, 2);;

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

#define stop_voice()
sound_stop(cur_voiceclip[1]);

#define play_voice (_voice, _cooldown, _random, _size)
var arr = _voice;
var ran = random_func(1, _size, true);
if (!is_array(arr)) arr = [_voice];

if (vo != 0)
{
	var num = random_func( 1, 3, true );
//	print("sarolyn_vo_" + string(_voice) + "_" + string(num))
print(_random);
	if(_random == true)
	{
    cur_voiceclip[0] = sound_play(sound_get("sarolyn_vo_" + string(_voice) + "_" + string(ran)));
	}
	else {
			if(!(arr == noone))
			{
		//		print("sarolyn_vo_" + string(arr[num]))
				cur_voiceclip[0] = sound_play(sound_get("sarolyn_vo_" + string(arr[ran])));	
			}
			else
				{
			//			print("sarolyn_vo_" + string(_voice))
						cur_voiceclip[0] = sound_play(sound_get("sarolyn_vo_" + string(_voice)));
				}
	}
    voice_cooldown = _cooldown;
}
