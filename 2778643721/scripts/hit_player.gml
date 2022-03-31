if (my_hitboxID.attack == AT_FSTRONG){
    sound_play(asset_get("sfx_shovel_hit_heavy1"));
    sound_play(sound_get("sfx_hit_sharp"));
}

if (my_hitboxID.attack == AT_DATTACK){
    sound_play(sound_get("sfx_hit_kirby"));
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num =- 1){
    my_hitboxID.player_id.vsp -= 10;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && !hit_player_obj.clone && !hit_player_obj.super_armor && !hit_player_obj.invincible){
    fspecial_id = hit_player_obj;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 && fspecial_id != noone){
    fspecial_id = noone;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num != 4){
    laugh_cancel = true;
}

if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num != 4 or my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    hit_player_obj.should_make_shockwave = false;
}

if (my_hitboxID.attack == 49){
    hit_player_obj.force_depth = true;
    hit_player_obj.depth = depth - 3;
}