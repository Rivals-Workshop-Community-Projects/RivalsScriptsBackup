// pre-draw

/*
//fspec holograms
gpu_set_alphatestenable(true);

for (var i = 0; i < array_length(fspec_holograms); i++) {
    var hologram = fspec_holograms[i]
    var _x = hologram[0]
    var _y = hologram[1]
    var _alpha = hologram[2]/10
    var spr = hologram[3]
    var spr_index = hologram[4]
    var _angle = hologram[5]
    var col = hologram[6]
    
    gpu_set_fog(1, col, 0, 1);
    draw_sprite_ext(spr, spr_index, _x, _y, image_xscale, image_yscale, _angle, c_white, _alpha)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);
*/
shader_start()
if dspec_explosion_timer >= 0 {
    var spr = asset_get("empty_sprite")
    if dspec_explosion_size == 1 {
        spr = sprite_get("dspecial_explosion_vfx_small")
    } else if dspec_explosion_size == 2 {
        spr = sprite_get("dspecial_explosion_vfx")
    }
    draw_sprite_ext(spr, dspec_explosion_timer/5, dspec_explosion_coords[0], dspec_explosion_coords[1], 1, 1, 0, c_white, 1)
}
shader_end()