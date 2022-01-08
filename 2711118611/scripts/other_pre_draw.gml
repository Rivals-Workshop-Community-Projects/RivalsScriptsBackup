//
if (instance_exists(other_player_id)){
    if (instance_exists(other_player_id.sword_two) && other_player_id.sword_two != noone && other_player_id.sword_two == self) {
        draw_sprite_ext(other_player_id.spr_sword_mirage, other_player_id.sword_two_timer, x + 13 - (7 * other_player_id.sword_two_timer), y - 80, 1, 1, 0, c_black, 0.75)
    }
}
