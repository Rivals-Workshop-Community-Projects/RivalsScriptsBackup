//hitbox_update
if(attack == AT_NSPECIAL and hbox_num == 1){
    if(parry_count > 15){
        spawn_hit_fx(x, y, 143);
        sound_play(sound_get("a_not_as_large_kaboom"), false, noone, .6);
		shake_camera(8, 8);
		sound_play(asset_get("sfx_abyss_explosion_big"), false, noone, .7);
        destroyed = true;
    }
    if(parry_count > 0){
        parry_count--;
    }
}