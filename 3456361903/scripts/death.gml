// kill spotlight
with (asset_get("obj_article1")) if (player == other.player) {
    state = 98;
    state_timer = 0;
}
bboost_counter = 0; //reset super boost

sound_play(sound_get("smb2_bonus_chance_lose"))