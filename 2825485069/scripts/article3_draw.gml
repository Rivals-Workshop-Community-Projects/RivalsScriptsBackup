// Baba Debug

draw_debug_text(x, y + 30, string(debug));
debug = "";

var sprite = sprite_get("baba" + dir);

var off = (current_time * jiggle + x + 2 * y) mod 3;

var color = c_white;

var offX = view_get_xview() - 2 * 32 * scale;
var offY = view_get_yview() - 1.68 * 32 * scale;
draw_sprite_ext(sprite, off + pose * 3, x + drawX + offX * parX, y + drawY + offY * parY, imageScale, imageScale, 0, color, 1);