//article2_post_draw.gml

var index = clamp(floor(timer/5), 0, 5)
draw_sprite_ext(sprite_get("vine"), index, startx, starty, image_xscale*(200/408)/2, 1, image_angle, c_white, 1)
draw_sprite_ext(sprite_get("vine"), index, endx, endy, image_xscale*(200/408)/2, 1, 180+image_angle, c_white, 1)

