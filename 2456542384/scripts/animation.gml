//wallcling frame lol
if state == PS_WALL_JUMP {
    if clinging {
        sprite_index = sprite_get("wallcling")
        image_index = 0;
    } else {
        //image_index = ease_linear(0,3,state_timer,walljump_time)
        image_index = min(image_index,3)
    }
}