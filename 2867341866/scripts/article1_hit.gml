
is_hittable = false;
exist_timer = lifetime; // force destroy
if (enemy_hitboxID.type == 1) hitstop = floor(hit_player.hitstop);

with enemy_hitboxID {
    sound_play(sound_effect);
    spawn_hit_fx(other.x, other.y, hit_effect);
}