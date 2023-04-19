//ANGELIC FIELD

if (init == 0){
    init = 1;
    sound_play(asset_get("sfx_oly_dspecial_focus"));

}

state_timer++;

if (state == 0){ //creating

    var create_time = 28;
    lifetime -= 1;
    image_index = state_timer * 7 / create_time;
    
    if (state_timer == create_time){
        state = 1;
        state_timer = 0;
        sprite_index = sprite_get("field_loop");
    }
    
}

if (state == 1){ //looping
    
    var loop_time = 25;
    lifetime -= 1;
    image_index = state_timer * 5 / loop_time;
    
    if (lifetime < 10) {
        image_alpha -= 0.1;
    }
    
    if (lifetime <= 0){
        state = 2;
        state_timer = 0;
    }
    
}

if (state == 2){ //destroyed
    player_id.move_cooldown[AT_NSPECIAL] = 10;
    instance_destroy();
    exit;
}

if (state == 3){ //consumed
    
    var consume_time = 30;
    image_index = state_timer * 6 /consume_time;
    
    if (state_timer > 20){
        image_alpha -= 0.1;
    }
    
    if (state_timer == consume_time){
        state = 2;
        state_timer = 0;
    }
    
}