if (fast_graphics) exit
var a = 0
var calc = false
time++
if (last_tx != temp_x || last_ty != temp_y) {
	last_tx = temp_x
	last_ty = temp_y
	calc = true
}
repeat(facecount) {
	//drawface(faces[a++])
	drawface(a++, calc, -0.8, 1)
}

/* if (y > temp_y) {
	//commented out because i cant figure this out
	Mask_Stencil()
	drawface(0, false, -0.8, 1)
	drawface(16, false, -0.8, 1)
	drawface(17, false, -0.8, 1)
	drawface(21, false, -0.8, 1)
	Mask_Drawing()
	gpu_set_colorwriteenable(true,true,true,false);
	draw_sprite_ext(asset_get("spr_whitepixel"), 0, 0, 0, room_width, room_height, 0, c_black, 1)
	var ysc = (y - temp_y) / 80
	var xsc = x - temp_x
	print(ysc)
	draw_set_alpha(0.5);
	with (oPlayer) {
		if ( "url" in self && url > 100) { //breaks on base cast
			var floory = y > other.plat_ym ? other.plat_yg : (x != clamp(x, other.plat_xl, other.plat_xr) ? other.plat_ym : other.plat_yt)
			var floordist = (floory - y) / 180
			var sc = 1 + small_sprites
			var bleft = x - (sprite_xoffset * sc)
			var bright = bleft + (sprite_width * sc)
			var tleft = bleft + (sprite_height * (0.5 + (xsc / 50)))
			var tright = tleft + (sprite_width * sc)
			var ratio = (sprite_height - sprite_yoffset)
			var up = floory - (sprite_yoffset * ysc)
			var down = floory + (ratio * ysc)
			var F_down = lerp(down, up, floordist)
			var F_up = lerp(down, up, 1 + floordist)
			var F_tleft = lerp(tleft, tright, floordist)
			var F_tright = lerp(tleft, tright, 1 + floordist)
			var F_bleft = lerp(bleft, bright, floordist)
			var F_bright = lerp(bleft, bright, 1 + floordist)
			//up += ((sprite_yoffset * sc * ysc) * 0.01)
			//var tmp_img_blend = image_blend
			//image_blend = c_black
			draw_sprite_pos(sprite_index, image_index, F_tleft, F_up, F_tright, F_up, F_bright, F_down, F_bleft, F_down, 1)
			//image_blend = tmp_img_blend
		}
	}
	Mask_End()
	gpu_set_colorwriteenable(true,true,true,true);
	draw_set_alpha(1);
} */

#define drawface(n, recalc, mx, my)
var a = faces[n]
if (recalc) {
	faces_vis[n] = ((a.xa == 2 || (x < temp_x == a.xa)) && (a.ya == 2 || (y < temp_y == a.ya)))
	if (faces_vis[n]) {
		RecalcVert(a.a, mx, my)
		if (a.m) {
			RecalcVert(a.b, mx, my)
			RecalcVert(a.c, mx, my)
			RecalcVert(a.d, mx, my)
		}
	} else {
		return
	}
}
if (faces_vis[n]) {
	if (a.m)
		draw_sprite_pos(a.spr, a.sub, vtxs_calc[a.a][0], vtxs_calc[a.a][1], vtxs_calc[a.b][0], vtxs_calc[a.b][1], vtxs_calc[a.c][0], vtxs_calc[a.c][1], vtxs_calc[a.d][0], vtxs_calc[a.d][1], 1)
	else
		draw_sprite_ext(a.spr, a.sub, vtxs_calc[a.a][0], vtxs_calc[a.a][1], 2, 2, 0, -1, 1)
}

#define pos_to_depth(xyz, f, a, b, m)
return xyz[f] + lerp(a, b, xyz[2] * m)

#define Mask_Stencil()
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, -1, -1, -1, -1, false);
draw_set_alpha(1);

#define Mask_Drawing()
gpu_set_blendenable(true);
gpu_set_colorwriteenable(false,false,false,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define Mask_End()
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

#define RecalcVert(n, mx, my)
if (vtx[n][3] != time) {
	vtxs_calc[n][@0] = pos_to_depth(vtx[n], 0, x, temp_x, mx)
	vtxs_calc[n][@1] = pos_to_depth(vtx[n], 1, y, temp_y, my)
	vtx[n][@3] = time
}