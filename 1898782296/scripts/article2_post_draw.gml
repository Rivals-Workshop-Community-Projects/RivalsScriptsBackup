//post_draw

var flashing_time = state_timer % (11 - major_shot);

if (state == 1 && (flashing_time == 1 || flashing_time == 2 || flashing_time == 3)){
    draw_sprite_ext(autobomb_overlay, image_index, x, y, image_xscale, image_yscale, image_angle, $00ffff, 0.5)
}
