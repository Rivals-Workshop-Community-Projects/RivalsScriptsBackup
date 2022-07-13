//post-draw

//dspec vine grab
/*
if seeker_id {
    for (var i = 0; i < 8; i++) {
        draw_sprite_ext(sprite_get("vine_segment"), 0, 2, jet_array[i][2], 1, 1, jet_array[i][3], c_white, 1)
    }
}
*/

shader_start()

//regular strongs
if state == PS_ATTACK_GROUND && (attack == AT_FSTRONG) {
    var _spr = get_attack_value(attack, AG_VINE_SPRITE);
    draw_sprite_ext(_spr, image_index, strong_draw_x, strong_draw_y, spr_dir, 1, 0, c_white, 1)
}

shader_end()