switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 22;
var intro_length = 110;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames) - 1);
}

if intro_time < 90 draw_indicator = false;
else if intro_time == 90 draw_indicator = true;

if intro_time >= 90 && intro_time < 110 {
    char_height = ease_expoOut(140, 52, intro_time - 90, 20)
}