state_timer ++;
    
direction = image_angle;

if (state == 0) {
    spr_index = sprite_get("final_smash_lasers")
    if (state_timer == 1) {
        sound_play(sound_get("sfx_final2"))
    }
    if (state_timer % 4 == 1) {
        with (player_id) {
            var hb = create_hitbox(49, 1, other.x + lengthdir_x(64, other.direction), other.y + lengthdir_y(64, other.direction));
            hb.hsp = lengthdir_x(48, other.direction)
            hb.vsp = lengthdir_y(48, other.direction)
        }
    }
    if (state_timer <= 24) {
        image_index = ease_linear(0, 7, state_timer, 24);
    }
    else {
        state_timer = 0;
        state = 1;
    }
}

if (state == 1) {
    spr_index = sprite_get("final_smash_laser")
    image_index = state_timer % 4;
    shake_camera(5, 5);
    if (state_timer % 4 == 1) {
        with (player_id) {
            var hb = create_hitbox(49, 1, other.x + lengthdir_x(64, other.direction), other.y + lengthdir_y(64, other.direction));
            hb.hsp = lengthdir_x(48, other.direction)
            hb.vsp = lengthdir_y(48, other.direction)
        }
    }
    
    if (state_timer > 170) {
        state_timer = 0;
        state = 2;
    }
}

if (state == 2) {
    if (state_timer == 1) {
        shake_camera(32, 32);
        sound_play(sound_get("sfx_final3"))
    }
    if (state_timer % 4 == 1 && state_timer < 12) {
        with (player_id) {
            var hb = create_hitbox(49, 2, other.x+ lengthdir_x(64, other.direction), other.y + lengthdir_y(64, other.direction));
            hb.hsp = lengthdir_x(48, other.direction)
            hb.vsp = lengthdir_y(48, other.direction)
        }
    }
    spr_index = sprite_get("final_smash_lasere")
    if (state_timer <= 24) {
        image_index = ease_linear(0, 7, state_timer, 24);
    }
    else {
        instance_destroy();
        exit;
    }
}