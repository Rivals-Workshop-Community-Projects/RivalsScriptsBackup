//

if stopped {
    var rect_width = 20;
    var rect_height = 100;
    var img_index = floor(stopped_timer/2);
    var scale = 1 + (stopped_timer/20);
    var alpha = 1 - (stopped_timer/20);
    draw_sprite_ext(sprite_get("attack_marker_colour"), img_index, x - (4*scale/2), y - (128*scale/2), scale, scale, 0, c_white, alpha);
}