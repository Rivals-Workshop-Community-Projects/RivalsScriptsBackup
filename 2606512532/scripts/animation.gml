switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if custom_clone {
    draw_indicator = false;
    sprite_index = asset_get("empty_sprite")
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 11;
var intro_length = 66;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

if intro_time < 60 draw_indicator = false;
else if intro_time == 60 draw_indicator = true;

if intro_time >= 60 && intro_time < 80 {
    char_height = ease_expoOut(140, 52, intro_time - 60, 20)
}