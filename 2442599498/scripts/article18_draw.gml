//

if timer < delay_time {
    draw_sprite_ext(sprite_get("exclamation"), floor(timer/2), x - 108 - (108*spr_dir), y, 4, 4, 0, c_white, 1);
} else {
    draw_sprite_part_ext(sprite_get("leg_stab_proj"), 0, 0, 0, (abs(x - spawnx) + 20)/4, 80, x, y, image_xscale, image_yscale, c_white, 1);
}

//draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);