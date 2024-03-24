//Animation.gml
if(attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
    if(window == 3 && strong_charge > 0){
        image_index = 7 + (strong_charge / 5) % 2;
    }
}

var intro_time = get_gameplay_time()-12;
if intro_time < 28 {
    intro_y = ease_linear(y - 400, y - 40, intro_time, 24)
    intro_x = ease_linear(x - 400 *spr_dir, x - 44*spr_dir, intro_time, 24)
//} else if intro_time < 34 {
    //intro_y = ease_quadOut(y - 40, y - 10, intro_time-26, 10)
    //intro_x = ease_linear(x - 10*spr_dir, x, intro_time-26, 10)
} else if intro_time < 34 {
    intro_y = ease_quadOut(y , y, intro_time-34, 14)
}


if intro_time < 80 {
    sprite_index = asset_get("empty_sprite")
}

draw_indicator = intro_time >= 60
if intro_time >= 60 && intro_time < 80 {
    char_height = ease_expoOut(80, default_height, intro_time - 60, 20)
}