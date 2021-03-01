if (state == PS_AIR_DODGE) {
    var startup = air_dodge_startup_frames;
    var before_recovery = air_dodge_startup_frames + air_dodge_active_frames - 2;
    var recovery = air_dodge_startup_frames + air_dodge_active_frames;
    
    if (floor(image_index) == startup && air_dodge_fx_state == 0) {
        air_dodge_fx_state = 1
        sound_play(asset_get("sfx_leaves"))
        spawn_hit_fx(round(x), round(y) - 24, fx_airdodge);
    }
    if (floor(image_index) >= recovery) {
        draw_x = 0;
        draw_y = 0;
    }
    else {
        draw_x = hsp * state_timer;
        draw_y = vsp * state_timer;
    }
}
else {
    air_dodge_fx_state = 0;
}