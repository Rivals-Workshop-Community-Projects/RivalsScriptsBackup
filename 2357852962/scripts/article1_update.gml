state_timer ++;

if (state_timer >= 0){
    image_index += 10 / 60;
}

if state_timer > 10 && sprite_index == sprite_get("platform_landed"){
                    sprite_index = sprite_get("platform");
}

if (landed == true){
    state_timer = 0;
    image_index = 0;
}