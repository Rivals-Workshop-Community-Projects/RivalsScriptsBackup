//post_draw

if (lightning_fx > 0) {
    if (spr_dir = 1) {
        draw_sprite(sprite_get("lightning"), (lightning_fx - 1) / 2, x + 4, y - 108)
    }
    else {
        draw_sprite(sprite_get("lightning"), (lightning_fx - 1) / 2, x - 2, y - 108)
    }
}