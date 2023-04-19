if sprite_index == sprite_get("spinhurt") {
  image_index = state_timer/2;
}

if clinging{
    if cling_time < 60{
        sprite_index = sprite_get("wallcling")
    }
    if cling_time >= 60{
        sprite_index = sprite_get("wallslide")
    }
    // state_timer = 0
}

// if intro_timer < 108{
//     sprite_index = sprite_get("crouch")
//     //image_index = state_timer/2
// }

// if intro_timer == 170{
//     sprite_index = sprite_get("idle")
//     state_timer = 171
//     //image_index = state_timer
// }