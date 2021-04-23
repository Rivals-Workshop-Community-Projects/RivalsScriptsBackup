//

if exploded {
    var blast_length = 30; //number of sprites in each directon to render
    var increment_dist = 32; //distance between sprites
    var index = floor(explode_timer/2);
    draw_sprite(sprite_get("bomb_cross"), index, x, y);
    for (var i = 0; i < blast_length; i++) {
        draw_sprite_ext(sprite_get("bomb_laser"), index, x, y + (i+1)*increment_dist, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("bomb_laser"), index, x, y - (i+1)*increment_dist, 1, 1, 180, c_white, 1);
        draw_sprite_ext(sprite_get("bomb_laser"), index, x + (i+1)*increment_dist, y - 2, 1, 1, 90, c_white, 1);
        draw_sprite_ext(sprite_get("bomb_laser"), index, x - (i+1)*increment_dist, y - 2, 1, 1, 270, c_white, 1);
    }
}

//draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);