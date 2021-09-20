if custom_clone {
    draw_indicator = false;
    sprite_index = asset_get("empty_sprite")
}


//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 13;
var intro_length = 78;
if intro_time < intro_length {
    sprite_index = sprite_get("intro_2");
    image_index = floor(intro_time/(intro_length/intro_frames));
}

if intro_time < 80 draw_indicator = false;
else if intro_time == 80 draw_indicator = true;

if intro_time >= 80 && intro_time < 100 {
    char_height = ease_expoOut(140, 52, intro_time - 80, 20)
}