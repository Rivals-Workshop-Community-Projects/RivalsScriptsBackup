//hit_player

if(my_hitboxID.attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 50
}

if(hit_player_obj.invoid == 1 && my_hitboxID.attack == AT_FSPECIAL){
    hit_player_obj.hitstop = 40
    hit_player_obj.hitstop_full = 40
    sound_play(asset_get("sfx_clairen_tip_strong"))
}

if(my_hitboxID.attack == AT_NSPECIAL){
    jetpack.hitbox_timer = 20
    jetpack.rotation += 3*jetpack.spr_dir
    jetpack.vsp = -3
    jetpack.hsp = -3 + random_func_2(1, 6, false)
}

if(my_hitboxID.attack == AT_DSTRONG){
    old_hsp /= 2
    hsp /= 2
}

if(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2 || my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2){
    sound_play(asset_get("sfx_blow_heavy1"))
}