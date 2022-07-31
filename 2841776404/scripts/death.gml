if (suit_power > 0 && suit_cooldown == false && in_suit){
    suit_power -= 40;
}

if (in_suit){
    spawn_hit_fx(x, room_height, 143);
    shake_camera( 8, 12 );
    sound_play(asset_get("sfx_abyss_explosion_big"));
    sound_play(sound_get("sfx_explode"));
}
attack_charge = 0;
attack_charged = false;

sound_play(sound_get("sfx_susie_death"));