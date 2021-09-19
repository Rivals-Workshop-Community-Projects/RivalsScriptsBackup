
if (display_expire){
var tmp_index = 0 + state_timer * 9 / state_end;
//that's:
//starting animation frame +
//current time *
//number of anim frame in the duration /
//time it takes
draw_sprite_ext( sprite_get("solid_expire"), tmp_index, x, y, 2, 2, image_angle, -1, 1 )
}