switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

//intro anim
var intro_time = clamp(get_gameplay_time() - 5*(player - 1), 0, 1000000000000000000000000000000000000000000000);
var intro_frames = 15;
var intro_length = 75;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

draw_indicator = intro_time >= 70

if intro_time >= 70 && intro_time < 90 {
    char_height = ease_expoOut(100, 60, intro_time - 70, 20)
}