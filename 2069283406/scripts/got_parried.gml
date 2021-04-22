
    


if (my_hitboxID.attack == AT_DSTRONG) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}   


if (my_hitboxID.attack == AT_NSPECIAL) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}   





fireon = 0
firerange = -100
    with (asset_get("pHitBox")) {
if(player_id == other.id && attack == AT_FSPECIAL && hbox_num == 2) {
    destroyed = true;
}
}


if (my_hitboxID.attack == AT_FSPECIAL) {
    shake_camera(4,4)
            sound_play(asset_get("sfx_forsburn_combust"));
			sound_play(sound_get("RI2"));
}
