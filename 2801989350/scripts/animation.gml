if (throwing == 1) {
    switch (state){
        case PS_IDLE:
        case PS_IDLE_AIR:
        case PS_JUMPSQUAT:
        case PS_LAND: 
        case PS_CROUCH:
            sprite_index = sprite_get( "nspecialidle" );
            hurtboxID.sprite_index = sprite_get("nik_hurtbox");
            image_index = animationcounter;
            break;
        case PS_WALK:
        case PS_WALK_TURN:
        case PS_DASH:
        case PS_DASH_START:
        case PS_DASH_STOP:
        case PS_DASH_TURN:
            sprite_index = sprite_get( "nspecialwalk" );
            hurtboxID.sprite_index = sprite_get("nik_hurtbox");
            image_index = animationcounter;
            break;
        case PS_FIRST_JUMP:
            sprite_index = sprite_get( "nspecialjump" );
            hurtboxID.sprite_index = sprite_get("nik_hurtbox");
            break;
        case PS_HITSTUN:
        case PS_HITSTUN_LAND:
        case PS_FROZEN:
        case PS_WRAPPED:
        case PS_TUMBLE:
            sprite_index = sprite_get( "nspecialhurt" );
            hurtboxID.sprite_index = sprite_get("nik_hurtbox");
            break;
        
        default: break;
    }
}

if (state == PS_SPAWN) {
    if (introTimer < 19 && introTimer >= 0) {
        sprite_index = sprite_get("entrance");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("entrance");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}