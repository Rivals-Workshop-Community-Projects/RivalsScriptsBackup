//a

var tmp_a = ease_quadOut( 0, 100, z_timer, z_max )/100
var tmp_y = (sun)?ease_quadOut( 200, 0, z_timer, z_max ):0

draw_sprite_ext( sprite_index, 0, temp_x, temp_y+tmp_y, 2, 2, 0, -1, tmp_a );