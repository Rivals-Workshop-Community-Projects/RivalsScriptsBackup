// article1_update

state_timer++;
if (state == 0){
    busy = false;
    image_index += 0.25;
    if (state_timer == 2){
        
            sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.5, 1);
        sound_play(sound_get("sfx_rise"));
    }
    if (image_index >= 3){
        state = 1;
        state_timer = 0;
    }
}

if (state == 1){
    busy = false;
    create_hitbox(AT_DSPECIAL, 1, x, y + 12);
    life_timer ++;
    if (life_timer >= 300){
        state = 3;
        state_timer = 0;
        image_index = 4;
    }
}

if free == true && !collision_rectangle(x - 2, y, x + 2, y + 64, player_id.bone_spire, false, true){
    should_die = true;
}

if (state == 2){
    busy = true;
    if(sprite_index == sprite_get("trap") || sprite_index == sprite_get("unshaded_trap")){
    image_index += 0.15;
    }
    if (image_index >= 5.8){
        sprite_index = sprite_get( (shader == 0 ? "unshaded_" : "") + "trap_big");
        image_index = 0;
    }
    if (sprite_index == sprite_get("trap_big") || sprite_index == sprite_get("unshaded_trap_big")){
        image_index += 0.15;
        if (image_index >= 1){
            sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.8, 1);
            create_hitbox(AT_DSPECIAL, 2, x, y - 24);
            state = 5;
            state_timer = 0;
        }
    }
}

if (state == 3){
    busy = false;
    image_index += 0.2;
    if (image_index >= 5.8){
        should_die = true;
    }
}

if (state == 5){
    busy = true;
    if (!hitpause){
        image_index += 0.16;
    }
    if (image_index >= 5.8){
        should_die = true;
    }
}

if (should_die){
        instance_destroy();
        exit;
}