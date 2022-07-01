// Text Debug

//draw_debug_text(offX, offY + 5, string(debug));

var sprite = sprite_get("skull");

var off = (current_time * jiggle + x + 2 * y) mod 3;

var color = c_white;
if !isDefeat color = make_colour_hsv(0,0,100); //c_gray;

draw_sprite_ext(sprite, off, x, y, scale, scale, 0, color, 1);
