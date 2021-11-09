///

if state == PS_AIR_DODGE && state_timer > 1 {
            sprite_index = sprite_get("parry");
        image_index = state_timer/5.4;
}