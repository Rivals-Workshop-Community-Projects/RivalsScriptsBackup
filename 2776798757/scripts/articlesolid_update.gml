if (state_timer == 100){
    sound_play(asset_get("sfx_absa_singlezap2"));
    instance_destroy();   
}
state_timer++;
