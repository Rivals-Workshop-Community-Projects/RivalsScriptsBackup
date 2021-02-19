//set_attack.gml

if (attack == AT_NSPECIAL && fry_platinum == 1 && temperature >= temperature_max){
    attack_end();
    window_timer = 0;
    attack = AT_EXTRA_1;
    sound_play(asset_get("sfx_abyss_explosion_start"));
    temperature = 0;
}