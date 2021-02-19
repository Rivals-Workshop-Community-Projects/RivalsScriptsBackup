///


if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1) {
    	sound_play(sound_get("2stock"))  
}
stormtarget = self

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
create_hitbox(AT_FSPECIAL,3,x,y - 40)
with (asset_get("pHitBox")) {
if(player_id == other.id) {
    hitbox_timer = 270
}
}
}

with (asset_get("pHitBox")) {
if(player_id == other.id) {
    if attack != AT_FSPECIAL {
    hitbox_timer = 270
    }
}
}

DT -= 2

weapon = -1
exheld = -1