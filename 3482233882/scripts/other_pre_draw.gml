
if ("other_player_id" not in self || "commando_status_state" not in self || "init_complete" not in other_player_id) exit;

// Ol' Lopper
if (commando_status_state[4] == 1) {
    var i = clamp(7 * commando_status_counter[4] / 100, 0, 7);
    draw_sprite_ext(other_player_id.spr_lopper_start, i, x, y+floor(char_height/3), 2*spr_dir, 2, 0, c_white, 1);
}

// Shattering Justice
if (commando_status_state[5] > 0) {
    shader_start();
    var _s = (is_real(url) && url < 30) ? 2 : 1*small_sprites;
    var _a1 = sin(get_gameplay_time()*pi/31);
    var _a2 = sin(get_gameplay_time()*pi/101 + pi/2);
    var _a3 = sin(get_gameplay_time()*pi/31 + pi);
    draw_sprite_ext(sprite_index, image_index, x+10*_a1, y, _s*spr_dir, _s, 0, c_white, 0.4);
    draw_sprite_ext(sprite_index, image_index, x+8*_a2, y, _s*spr_dir, _s, 0, c_white, 0.4);
    draw_sprite_ext(sprite_index, image_index, x+6*_a3, y, _s*spr_dir, _s, 0, c_white, 0.4);
    shader_end();
}