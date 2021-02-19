// article1_update

if (state == 0){
    state_timer++;
    if (state_timer == 4){
        sound_play(sound_get("sfx_rise"));
        state = 1;
        state_timer = 0;
    }
}

if (state == 1){
    sprite_index = sprite_get("boneshigh");

    with (pHurtBox) {
        if (other.player_id != id && place_meeting(x, y, other)) {
            other.state = 2;
        }
    }
    
    life_timer ++;
    if (life_timer == 240){
        state = 3;
        state_timer = 0;
    }
}

if (state == 2){
    state_timer++;
    if (state_timer == 2){
        create_hitbox(AT_DSPECIAL, 1, x, y - 20);
    }
    if (state_timer == 10){
        state = 1;
        state_timer = 0;
    }
}

if (state == 3){
    sprite_index = sprite_get("boneslow");
    state_timer++;
    if (state_timer == 4){
        instance_destroy();
    }
}