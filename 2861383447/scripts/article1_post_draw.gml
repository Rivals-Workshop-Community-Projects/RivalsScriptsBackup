//sound_play(asset_get("sfx_clairen_dspecial_counter_active"));

var cross_dist = abs(point_distance(target.x, target.y - 33, x, y)) * 0.01;



draw_sprite_ext( sprite_get("crosshair"), 0, x, y, 1 + clamp(cross_dist,0,1.5), 1 + clamp(cross_dist,0,1.5), 0, c_white, clamp(1 - (cross_dist + 0.1), 0.1, 1));

// print_debug(cross_dist);