if state == PS_SPAWN {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 0.5);
}
else if state == PS_ATTACK_AIR || type = 1 {
    draw_sprite_ext(player_id.spr_node_glow, 0, x, y, 1, 1, 0, c_white, 0.75);
}