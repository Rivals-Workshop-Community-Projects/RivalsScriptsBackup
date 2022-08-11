//article1 update

if (init == 0){
    init = 1;
    
}

// Planted
if (state == 0) {
    if (state_timer == 28) {
        state = 1;
        state_timer = 0;
        image_index = 1;
    }
}

// Rising
if (state == 1) {
    if (state_timer == 5) {
        //create_hitbox(AT_DSPECIAL, 1, x, y);
        state = 2;
        image_index = 2;
    }
    det_timer--;
}

// Active
if (state == 2) {
    if (det_timer == 36) {
        image_index = 3;
        sound_play(asset_get("sfx_absa_harderhit"));
    }
    det_timer--;
}

if (det_timer <= 0) {
    create_hitbox(AT_DSPECIAL, 2, x, y-1024);
    sound_play(asset_get("sfx_absa_new_whip2"));
    instance_destroy();
    exit;
}

state_timer++;
