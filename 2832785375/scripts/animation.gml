switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_ATTACK_AIR:
    switch attack {
        case AT_FAIR:
        if special_fair {
            sprite_index = sprite_get("fair_special");
        }
        break;
    }
    break;
    
    default: break;
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 14;
var intro_length = 70;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

if intro_time <= 60 draw_indicator = intro_time == 60;

if intro_time >= 60 && intro_time < 80 {
    char_height = ease_expoOut(140, 44, intro_time - 60, 20)
}