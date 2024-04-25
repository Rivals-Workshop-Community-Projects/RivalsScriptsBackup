//hitbox_update

//you broke the bottles. dummy.
if (attack == AT_FAIR){
    if (window == 2) {
        sound_play( asset_get("sfx_icehit_weak1") );
    }
}

//extra punch to the gusts
if (attack == AT_UAIR && my_hitboxID.hbox_num < 3) {
    sound_play( asset_get("sfx_blow_weak1") );
}

//uh oh.
if (attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
    sound_play( sound_get("fspec_one") );
}

//heal upon hitting a 7
if (attack == AT_FSPECIAL && my_hitboxID.hbox_num == 12) {
    take_damage( player, -1, -14 );
    if (has_rune("N")) {
        take_damage( player, -1, -16 );
    }
    spawn_hit_fx( x, y-30, HFX_RAN_POISON_MED );
}