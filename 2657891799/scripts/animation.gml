switch (state){
    case PS_WALL_JUMP:
    if clinging {
        image_index = clamp(floor(state_timer/4), 0, 1)
    } else if state_timer > 3 {
        image_index = 2 + floor(walljump_timer/8)
    }
    break;
    
    default: break;
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 9;
var intro_length = 63;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames) - 1);
}

draw_indicator = intro_time >= 40

if intro_time >= 40 && intro_time < 60 {
    char_height = ease_expoOut(80, 52, intro_time - 40, 20)
}