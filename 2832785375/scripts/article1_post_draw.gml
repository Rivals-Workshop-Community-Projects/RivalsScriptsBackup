//article1_post_draw.gml

if draw_vine {
    for (var i = 0; i < num_segs; i++) {
        draw_sprite_ext(sprite_get("vine_segment"), i mod seg_parts, floor(x+(i*seg_xdist)), floor(y+(i*seg_ydist)), 1, 1, vinedir, c_white, 1)
    }
    draw_sprite_ext(sprite_get("vine_erupt_base"), 0, x, y, 1, 1, 0, c_white, 1)
}


if draw_base_timer > 0 {
    draw_sprite_ext(sprite_get("vine_erupt_base"), clamp(floor(draw_base_timer/6), 0, 1), x, y, 1, 1, 0, c_white, 1)
}