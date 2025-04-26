//parry.gml
true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

play_voice(["140", "141"], voice_cooldown_set);

#define play_voice (_string_array, _cooldown)
if (voice == 1) { // Only play voice if the system is active
    var arr = _string_array;
    if (!is_array(arr)) arr = [_string_array];

    if (voice_cooldown <= 0) {
        var num = floor(random_func(6, array_length(arr), false));
        cur_voiceclip[0] = sound_play(sound_get("vc" + string(arr[num])));
        voice_cooldown = _cooldown;
    }
}
#define stop_voice()
sound_stop(cur_voiceclip[1]);