//ass
state_timer ++;
//sprite_index = sprite_get("airship");
if (state_timer > 0){
    image_index += 20 / 60;
}

if (state == 0 && state_timer == 1){
    spawn_hit_fx( x + 550, y + 280, 143 );
    shake_camera( 6, 20 );
    sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
}

if (state_timer == 100 && state == 0){
    state = 1;
    state_timer = 0;
}

if (state == 1){
    sprite_index = asset_get("empty_sprite");
}