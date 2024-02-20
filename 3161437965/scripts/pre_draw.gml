//pre_draw.gml

gpu_set_fog(true, save_flash_col, 0, 1);
for (var i = trail_draw_size-1; i > 0; i--)
{
    var pos = (trail_cycle + i) % trail_size;

    draw_sprite_ext(
        trail_vars[pos].spr,
        trail_vars[pos].img,
        floor(trail_vars[pos].x),
        floor(trail_vars[pos].y),
        trail_vars[pos].xscale,
        trail_vars[pos].yscale,
        trail_vars[pos].rot,
        c_white, (trail_draw_size - i)/trail_draw_size
    );
}
gpu_set_fog(false, c_red, 1, 0);