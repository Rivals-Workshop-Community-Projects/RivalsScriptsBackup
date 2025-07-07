
if ("other_player_id" not in self || "commando_status_state" not in self || "init_complete" not in other_player_id) exit;

// Sticky Bomb
if (commando_status_state[0] == 1) {
    draw_sprite_ext(other_player_id.spr_sticky, 0, x-(10*spr_dir), y-char_height+6, spr_dir*2, 2, 0, c_white, 1);
}
