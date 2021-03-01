//hitplayer

if my_hitboxID.effect == 229 {
    sound_play(asset_get("sfx_blow_heavy2"));
}

if my_hitboxID.effect == 230 {
    hit_player_obj.grabbed_by_zeph = true;
    hit_player_obj.grabbed_by_zeph_id = id;
}