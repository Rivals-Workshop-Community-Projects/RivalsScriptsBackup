nspecial_charge_level = 0;
skin_count = 1;
with(pHitBox){
    if(attack == AT_DSPECIAL and player = other.player){
        destroyed = true;
    }
}

sound_play(sound_get("death"));