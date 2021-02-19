//article2_init

with (player_id){
    if (rising = 1){
        other.y = other.y - 1.1;
    }
}

if (get_gameplay_time() = 670){
    sprite_index = sprite_get("enoughisenough_slap");
    image_speed = .5;
}

if (get_gameplay_time() = 690){
    image_speed = 0;
}

if (get_gameplay_time() = 720){
    with (player_id){
spawn_hit_fx( other.x - 140, other.y - 430, eyegleameffect );
}
}

if (get_gameplay_time() = 775){
    image_speed = .5;
}

if (get_gameplay_time() = 785){
    shake_camera(69, 30);
}


if (get_gameplay_time() = 790){
    image_speed = 0;
}

if (get_gameplay_time() = 800){
    shake_camera(5, 30);
}

if (get_gameplay_time() = 830){
    image_speed = .5;
}

if (get_gameplay_time() = 845){
    image_speed = 0;
}