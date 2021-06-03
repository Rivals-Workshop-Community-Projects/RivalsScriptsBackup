//nothing here

if attack == AT_FSPECIAL and !free {
    spawn_hit_fx(x,y,111)
    sound_play(asset_get("sfx_ori_seinhit_medium"))
    instance_destroy()
}