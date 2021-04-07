if (attack == AT_NSPECIAL) and (state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND) and got_fruit = false or will_toss = false
{
//stored_fruit = 0;
//got_fruit = false;
//can_toss = false;
//will_toss = false;
}
if enemy_hitboxID.damage > 14// and !audio_is_playing(sound_get("gothit"))
sound_play(sound_get("gothit"))