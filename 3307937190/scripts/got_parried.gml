//got_parried.gml

voice_cooldown = 0;
stop_voice()
play_voice(["parried1", "parried2", "parried3"], voice_cooldown_set);;

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

    hit_player_obj.past_ink_r = 0;
    hit_player_obj.past_ink_b = 0;
    hit_player_obj.past_ink_y = 0;

if(my_hitboxID.attack == AT_NSPECIAL and my_hitboxID.hbox_num == 2){
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.hitbox_timer = 0;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) my_hitboxID.effect = 0;


#define play_voice (_string_array, _cooldown)
var arr = _string_array;
if (!is_array(arr)) arr = [_string_array];

if (lang != 0)
{
	if(secretalt == 1)
	{
        if(my_hitboxID.attack == AT_NSPECIAL and my_hitboxID.hbox_num >= 4)
	    cur_voiceclip[0] = sound_play(sound_get("sl_what_are_you_doing"));
        else 
	    cur_voiceclip[0] = sound_play(sound_get("sl_yikes"));
	}
	else if (voice_cooldown <= 0) {
		var num = floor(random_func(6, array_length(arr), false));
	    cur_voiceclip[0] = sound_play(sound_get("va_" + string(arr[num]) + "_" + string(lang)));
	    voice_cooldown = _cooldown;
	}
}

#define stop_voice()
sound_stop(cur_voiceclip[1]);