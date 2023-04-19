if state == PS_SPAWN && get_gameplay_time() < 120 {
    if state_timer == 2 {
        sound_play(asset_get("sfx_bird_sidespecial_start"))
    }
    if state_timer < 40 {
        sprite_index = sprite_get("dspecial")
        image_index = 10 - state_timer/4
    } else {
         sprite_index = sprite_get("idle")
    }
    
    
}