//

// for parrot's nair, I wanted the parrot to draw behind the recipient
// initially, I just set the 'force_depth' variable to 1, but that led to some of the stage elements drawing in front
// so, here's the new solution.
if ("nair_hit_player" in other_player_id && other_player_id.nair_hit_player == id) with other_player_id if (attack == AT_EXTRA_1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y, 2 * spr_dir, 2, spr_angle, c_white, 1.0);
    shader_end();
}