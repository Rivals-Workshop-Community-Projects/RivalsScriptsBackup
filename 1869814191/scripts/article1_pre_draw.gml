//article1_pre_draw.gml

shader_end();
var col = get_player_hud_color(get_instance_player(sansID));
for (var _x = -2; _x <= 2; _x += 2) for (var _y = -2; _y <= 2; _y += 2) {
    gpu_set_fog(1, col, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + _x, y + _y, spr_dir, 1, image_angle, c_white, 1);
    gpu_set_fog(0, c_white, 1, 1);
} //this is really only here to help show which sans hit the bone last