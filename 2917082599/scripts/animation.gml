if (state == PS_SPAWN) {
    if (introTimer = 1){
        sound_stop(asset_get("mfx_coin_portal"))
        sound_play(asset_get("mfx_coin_portal"),false,noone,1.2, 1)
    }
    if (introTimer < 14 && introTimer >= 0) {
        sprite_index = sprite_get("taunt");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("taunt");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

#define basic_animations()
/// Run this after changing the sprite_index.
// Corrects certain animations to be how they normally would be.
switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = state_timer*idle_anim_speed;
    break;
    case PS_WALK:
        image_index = state_timer*walk_anim_speed;
    break;
    case PS_DASH:
        image_index = state_timer*dash_anim_speed;
    break;
}
