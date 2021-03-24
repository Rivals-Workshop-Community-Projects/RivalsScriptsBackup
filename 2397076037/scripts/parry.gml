//parry.gml

sound_play(sound_get("RI"));
sound_play(sound_get("Parried"));
shake_camera(4, 12)

DT += 6
rankm += 300

with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}

