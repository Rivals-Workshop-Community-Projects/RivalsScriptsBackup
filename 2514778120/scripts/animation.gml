//

if get_gameplay_time() < 110 {
if get_gameplay_time() < 60 {
    
      sprite_index = sprite_get("crouch")
      image_index = ease_linear(crouch_startup_frames, 
      crouch_startup_frames + crouch_active_frames + crouch_recovery_frames, state_timer, 60);
    
    if get_gameplay_time() == 4 && !hitpause {
        sound_stop(asset_get("sfx_clairen_spin"))
        sound_play(asset_get("sfx_clairen_spin"),false,noone,0.9,.8)
    }
    if get_gameplay_time() == 58 && !hitpause {
        
        sound_stop(asset_get("sfx_spin"))
         sound_stop(asset_get("sfx_bird_downspecial"))

        sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.2)
        sound_play(asset_get("sfx_spin"),false,noone,1,.8)
    }
    for (var i = 0; i <= 1; i++) {
        if (instance_exists(sword_id[i])) {
            sword_id[i].visible = false;
        }
    }
    
} else {
    sprite_index = sprite_get("dspecial")
    image_index = (state_timer - 60)/5
    if (get_gameplay_time() == 60) {
        for (var i = 0; i <= 1; i++) {
            if (instance_exists(sword_id[i])) {
                sword_id[i].visible = true;
                sword_id[i].go_back = true;
            }
        }
    }
}

}