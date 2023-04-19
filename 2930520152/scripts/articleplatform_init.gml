sprite_index = sprite_get("plat")
mask_index = sprite_get("plat_mask")
sound_play(asset_get("sfx_abyss_explosion_start"));

var deep = depth;
with(oPlayer){
    if(depth <= deep){
        deep = depth - 1;
    }
}
depth = deep;