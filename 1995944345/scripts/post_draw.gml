

shader_start();

//draw_debug_text(x, y+8, string(window)+" "+string(window_timer))
if fspecial_nodex != 0 {

	draw_sprite(sprite_get("fspecial_node"),1+(!instance_exists(fspecial_box))*2,x+fspecial_nodex*spr_dir,y+fspecial_nodey)

	var os = y-30
	
	var xs = 6
	var d = point_distance(xs, os-y, fspecial_nodex, fspecial_nodey)/172
	var dr = point_direction(xs, os-y, fspecial_nodex, fspecial_nodey)*spr_dir
	var xx = lengthdir_x(2, dr-90)
	var yy = lengthdir_y(2, dr-90)
	var im = 0;
	
	
	if attack == AT_FSPECIAL_2 im = max(5-window_timer, 0)+(state_timer mod 6 < 3)*7
	else im += min(abs(fspecial_nodey-fspecial_nodey_start)*0.15, 5)+(fspecial_nodey < fspecial_nodey_start)*7
//	draw_debug_text(x, y+8, string(im))
	draw_sprite_ext(sprite_get("rope"), im, x+xx+xs*spr_dir, os+yy, (d*spr_dir)*2, (1.3-d*0.5)*2, dr, c_black, image_alpha)
	draw_sprite_ext(sprite_get("rope"), im, (x-xx)+xs*spr_dir, os-yy, (d*spr_dir)*2, (1.3-d*0.5)*2, dr, c_black, image_alpha)
	draw_sprite_ext(sprite_get("rope"), im, x+xs*spr_dir, os, (d*spr_dir)*2, (1.3-d*0.5)*2, dr, image_blend, image_alpha)
	
	draw_sprite(sprite_get("fspecial_node"),(!instance_exists(fspecial_box))*2,x+fspecial_nodex*spr_dir,y+fspecial_nodey)

}



if sprite_index == sprite_get("bighurt") or sprite_index == sprite_get("bouncehurt") {
	var xs = -sign(hsp)
	if xs == 0 xs = 1;
	var d = point_direction(0,0,hsp,vsp)
	if hitpause d = point_direction(0,0,old_hsp,old_vsp)
	if d > 90 && d < 270 d -= 180;
	draw_sprite_ext(sprite_get("bighurt_real"), image_index, x, y-10, xs, 1, d, image_blend, image_alpha)
}

if reflects_left > 0 {
		
	var s = sprite_get("sporering")
	
	
	
	var a, c;
	var w = ((bbox_right-bbox_left)+20)
	var yy = y - char_height/2
	for (var i = 0; i < reflects_left; i++) {
		a = dcos((reflect_spin)+(i*(360/max_reflects)))
		c = dsin((reflect_spin)+(i*(360/max_reflects)))

		if c > 0 draw_sprite_ext(s, i, x + a*w, yy+c*20, 1, 1, 0, c_white, 1)
	}
	
	
}


/*
	if healdraw{
	var d, t, xx, yy;
			d = sprite_get("dmgtag");

		draw_set_halign(fa_middle)
		draw_set_valign(fa_middle)
		draw_set_font(asset_get("roundFont"));
		t = "+"+string(floor(healdraw))+"%"
		
		
		xx = x+19
		yy = y-char_height-26
		
		draw_sprite(d, 0, xx, yy)
		
//		draw_text_colour(xx-2, yy, t, c_black, c_black, c_black, c_black, 1)
//		draw_text_colour(xx, yy+2, t, c_black, c_black, c_black, c_black, 1)
//		draw_text_colour(xx+2, yy, t, c_black, c_black, c_black, c_black, 1)
//		draw_text_colour(xx, yy-2, t, c_black, c_black, c_black, c_black, 1)
		
		draw_text_colour(xx, yy, t, $D0FFA8, $D0FFA8, $D0FFA8, $D0FFA8, 1)
		
	}
	*/

if attack == AT_DATTACK && state == PS_ATTACK_GROUND {
	draw_sprite_ext(sprite_get("dattack_proj"),image_index,x+attack_offset*spr_dir,y,spr_dir,1,0,c_white,1)
}

var fs = 4
if attack == AT_DSTRONG && state == PS_ATTACK_GROUND && image_index - fs >= 0{
	draw_sprite_ext(sprite_get("dstrong_proj"),image_index-fs,x,y,spr_dir,1,0,c_white,1)
	
}

shader_end();


var vs = 0;
with (asset_get("pHurtBox")) {
	vs = visible;
}
if vs with (obj_article2){
	draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, 0, c_red, 0.3)
}