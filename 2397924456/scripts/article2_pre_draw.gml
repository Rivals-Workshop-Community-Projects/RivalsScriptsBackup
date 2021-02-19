image_angle = point_direction(x, y, next.x, next.y);

var mul = max(0, point_distance(x, y, next.x, next.y) / player_id.chain_length - 1)
image_xscale = clamp(1 + mul, 0.5, 2);
image_yscale = clamp(1 - mul * 0.5, 0.5, 2);

// draw_rectangle_color(x - 10, y - 10, x + 10, y + 10, c_white, c_white, c_white, c_white, 0)