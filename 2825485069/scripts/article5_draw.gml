// Baba Draw

//draw_debug_text(offX, offY + 5, string(debug));

var sprite = sprite_get("particle");

//var off = (current_time * jiggle + x + 2 * y) mod 3;

var sprindex = ceil(startlife/life);

var color = c_white;

var sub = (current_time * jiggle) mod 3;
var offX = view_get_xview() - 2 * 32 * scale;
var offY = view_get_yview() - 1.68 * 32 * scale;
var partsize = 16 * scale * life/startlife;
draw_sprite_ext(sprite, sub, x + drawX + offX * parX - partsize/2, y + drawY + offY * parY - partsize/2, imageScale * life/startlife, imageScale * life/startlife, 0, color, 1);