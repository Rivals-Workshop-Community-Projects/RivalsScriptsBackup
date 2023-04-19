for (var i = 0; i < num_blocks; i += 1) {
    var c = (blocks[i].draw_y == blocks[i].y) ? c_white : c_ltgray;
    draw_sprite_ext(spr_block, 0, blocks[i].draw_x, blocks[i].draw_y, 1, 1, 0, c, 1);
}