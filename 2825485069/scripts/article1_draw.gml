// Draw the platform

var sprite = sprite_get(spr);
var spritebottom = sprite_get(spr+"bottom");
var spriteinside = sprite_get(spr+"inside");
var a = 2.5;
var b = 1/a;
var off = 0;
var off2;
off = (current_time*jiggle + x) mod 3;

var color = c_white;
if !active color = make_colour_hsv(0,0,100); //c_gray;

draw_sprite_ext(sprite, off, x, y, 2, 2, 0, color, 1);