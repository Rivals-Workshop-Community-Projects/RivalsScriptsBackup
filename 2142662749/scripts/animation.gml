switch (state){
    case PS_IDLE:
    //sprite_index = sprite_get("idleA");
    break;
    
    default: break;
}

if (onRocket) {
    if (!free) {
        hurtboxID.sprite_index = hurtbox_spr;
    } else {
        hurtboxID.sprite_index = air_hurtbox_spr;
    }
}