switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 10;
var intro_length = 80;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

if intro_time <= 70 draw_indicator = intro_time == 70;

if intro_time >= 70 && intro_time < 90 {
    char_height = ease_expoOut(140, 44, intro_time - 70, 20)
}