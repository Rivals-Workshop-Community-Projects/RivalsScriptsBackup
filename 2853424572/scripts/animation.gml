switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case PS_PRATLAND:
        sprite_index = sprite_get("landinglag");
    break;
    case PS_RESPAWN:
        //sprite_index = sprite_get("respawn");
        //image_index = floor(image_number*state_timer/(image_number*6));
    break;
    default: break;
}

var intro_time = get_gameplay_time();
var intro_frames = 17;
var intro_length = 102;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

if intro_time < 45 draw_indicator = false;
else if intro_time == 45 draw_indicator = true;

if intro_time >= 45 && intro_time < 55 {
    char_height = ease_expoOut(200, 48, intro_time - 45, 10)
}