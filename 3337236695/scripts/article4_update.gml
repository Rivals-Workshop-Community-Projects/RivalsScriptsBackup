//Removes a harmless error from appearing in the debug log due to article inits running before init.
if "mii_can_cheer" not in obj_stage_main exit;

//Rotates the wrecking ball sprite to mimic it swinging.
ball_swing_a = dsin(get_gameplay_time() * 1.3) * 36;
shadow_swing_a = dsin(get_gameplay_time() * 1.3) * 108;

//Animates the Miis.
if (obj_stage_main.mii_can_cheer = true) {
    //Controls the article's animation speed by manuually setting the image_index.
    //(Using image_speed doesn't stop the animation when the game is paused).
    //While not the best method, this allows for exact control over how long each frames lasts compared to others, as shown here.
    if (mii_timer < 147) {
        mii_timer += 1
    }
    
    if (mii_timer = 2) {
        sound_play(sound_get("clapping_wii_sports"), false, noone, 0.2);
    }
    
    if (mii_timer = 7 || mii_timer = 14 || mii_timer = 21 || mii_timer = 28 || mii_timer = 35 || mii_timer = 42) {
        mii_anim += 1
    }
    
    if (mii_timer = 49) {
        mii_anim -= 6
    }
    
    if (mii_timer = 56 || mii_timer = 63 || mii_timer = 70 || mii_timer = 77 || mii_timer = 84 || mii_timer = 91) {
        mii_anim += 1
    }
    
    if (mii_timer = 98) {
        mii_anim -= 6
    }
    
    if (mii_timer = 105 || mii_timer = 112 || mii_timer = 119 || mii_timer = 126 || mii_timer = 133 || mii_timer = 140) {
        mii_anim += 1
    }
    
    if (mii_timer = 147) {
        mii_anim -= 6
        mii_timer = 1
        obj_stage_main.mii_can_cheer = false
    }
}