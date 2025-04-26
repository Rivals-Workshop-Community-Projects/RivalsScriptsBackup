//got_parried.gml
saro_frenzy = 0;
true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

play_voice(["parrystun_0", "parrystun_1"], 4, false, 2);;

if (instance_exists(my_grab_id) && my_grab_id != noone) my_grab_id = noone;

//multihit projectile hit count resets on parry
if (my_hitboxID.type == 2 && my_hitboxID.multihit_amount > 0 && my_hitboxID.proj_hit_count < my_hitboxID.multihit_amount)
{
    my_hitboxID.proj_hit_count = 0;
    my_hitboxID.hitbox_timer = 0;
}

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
