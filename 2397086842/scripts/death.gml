///


if get_player_color(player) == 16 {
    sound_play(sound_get("death"))
}

with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}


sagemode = 0