switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case PS_RESPAWN:
        sprite_index = sprite_get("respawn");
        image_index = floor(image_number*state_timer/(image_number*6));
    break;
    case PS_PRATLAND:
        sprite_index = sprite_get("landinglag");
    break;
    default: break;
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 13;
var intro_length = 72;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

if intro_time < 40 draw_indicator = false;
else if intro_time == 40 draw_indicator = true;

if intro_time >= 40 && intro_time < 50 {
    char_height = ease_expoOut(200, 68, intro_time - 40, 10)
}