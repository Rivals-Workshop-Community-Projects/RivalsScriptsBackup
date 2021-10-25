user_event(13);

if attack == AT_FSPECIAL && short = 0 {
    attack = AT_FSPECIAL_AIR;
}

if(attack == AT_BAIR){
    sound_play(asset_get("sfx_shovel_swing_light2"))
}