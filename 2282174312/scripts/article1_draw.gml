var ul = temp_x - 126
var ur = temp_x + 126
var bl = x - 126
var br = x + 126

//bridge
draw_sprite_pos(sprite_index, 0, ul, temp_y, ur, temp_y, br, ytarget, bl, ytarget, 1)

var fro_x = x - 126
var mid_x = lerp(x, temp_x, 0.7)
var fro_xr = x + 126
var mid_xr = mid_x + 34
mid_x -= 34
var mid_y = lerp(ytarget, temp_y, 0.7)
var bac_x = temp_x - 14
var bac_xr = temp_x + 14
fro_x = lerp(fro_x, mid_x, 0.5/3.25)
fro_xr = lerp(fro_xr, mid_xr, 0.5/3.25)
var fro_y = lerp(mid_y, ytarget, 0.83)

//bridge strings front
var b_f_midy = mid_y - 4
var b_f_midy2 = fro_y - 20
var b_f_froy = fro_y - 40
var b_f_froy2 = mid_y + 16
draw_sprite_pos(spr_bridgestrings_f, 1, fro_x, b_f_froy, mid_x, b_f_midy, mid_x, b_f_froy2, fro_x, b_f_midy2, 1)
draw_sprite_pos(spr_bridgestrings_f, 1, fro_xr, b_f_froy, mid_xr, b_f_midy, mid_xr, b_f_froy2, fro_xr, b_f_midy2, 1)

//bridge strings back
var b_b_bacy = temp_y - 4
var b_b_bacy2 = temp_y + 14
var b_b_midy = mid_y - 20
var b_b_midy2 = mid_y - 2
draw_sprite_pos(spr_bridgestrings_b, 1, mid_x, b_b_midy, bac_x, b_b_bacy, bac_x, b_b_bacy2, mid_x, b_b_midy2, 1)
draw_sprite_pos(spr_bridgestrings_b, 1, mid_xr, b_b_midy, bac_xr, b_b_bacy, bac_xr, b_b_bacy2, mid_xr, b_b_midy2, 1)

//bridge back poles
for (var i=2; i>=1; i--) {
	var prog = i/2
	draw_sprite_ext(spr_bridgepoles, 4, lerp(mid_x, bac_x, prog), lerp(mid_y, temp_y, prog), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_bridgepoles, 4, lerp(mid_xr, bac_xr, prog), lerp(mid_y, temp_y, prog), 2, 2, 0, c_white, 1)
}

//bridge front poles
for (var i=4; i>=0; i--) {
	var prog = i/4
	draw_sprite_ext(spr_bridgepoles, i, lerp(fro_x, mid_x, prog), lerp(fro_y, mid_y, prog), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_bridgepoles, i, lerp(fro_xr, mid_xr, prog), lerp(fro_y, mid_y, prog), 2, 2, 0, c_white, 1)
}