//got-hit

if attack == AT_DSPECIAL {
    if soft_armor > 0 {
        sound_play(sound_get("orbitar_reflect"))
        var player_dir = sign(x - hit_player_obj.x);
        old_hsp = player_dir*6
    }
}