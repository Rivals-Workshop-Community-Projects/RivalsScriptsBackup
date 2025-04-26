if (state == 0 && enemy_hitboxID.player != owner){
    state = 1;
    state_timer = 0;
    vsp = -6;
    hsp *= -1;
    owner = enemy_hitboxID.player;
    sound_play(asset_get("sfx_shovel_hit_med1"));
    spawn_hit_fx(x, y, 301);
}