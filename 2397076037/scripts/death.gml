///


with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}

    sound_play(sound_get("vdeath"))  

DT = 6
drank = 1
triggered = 0
weapon = -1
exheld = -1