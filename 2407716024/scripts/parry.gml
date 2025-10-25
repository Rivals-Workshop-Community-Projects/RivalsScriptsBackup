//parry - called when you parry any hitbox

if easter_egg_set = true {
    snd_rng = random_func(0, 4, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("parry1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("parry2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("parry3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("parry4"));
    }
}

if (enemy_hitboxID.attack == AT_DSPECIAL && enemy_hitboxID.player_id == id)
{
    invince_time = 0;
    invincible = false;
}