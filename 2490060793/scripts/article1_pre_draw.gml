//article1_pre_draw

var trail_alpha = 0;
var prev_index = image_index;
for (var i = 0; i < array_length(trail_array); i++) {
    if trail_array[i][0] != undefined {
        trail_alpha += 1/array_length(trail_array);
        draw_sprite_ext(sprite_index, -1, trail_array[i][0], trail_array[i][1], 1, 1, 0, c_white, trail_alpha)
    }
}