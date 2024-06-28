
if (!instance_exists(other_player_id) or "dust_trail_size" not in other_player_id) exit;


with(other_player_id) {
    shader_start();
}
for(var _i = 0; _i < other_player_id.dust_trail_size; _i++){
    var _d = other_player_id.dust_trail[_i];
    draw_sprite_ext(_d.sprite_index, _d.image_index, _d.x, _d.y, 1, 1, _d.draw_angle, c_white, _d.image_alpha)
}
shader_end();