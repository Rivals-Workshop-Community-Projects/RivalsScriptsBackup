// pre-draw

if draw_limit {
    //draw_sprite_ext(limit_vfx_large, limit_timer/4, x, y, 1, 1, 0, c_white, 1)
}

//fspec afterimage
shader_start()
for (var i = 0; i < array_length(fspec_movearr); i++) {
    var pos = fspec_movearr[i]
    if pos[0] != undefined {
        draw_sprite_ext(sprite_get("fspec_indicator"), 0, pos[0], pos[1], spr_dir, 1, 0, c_white, 0.5)
    }
}
shader_end()