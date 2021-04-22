//article3_pre_draw - slash

if (!afterimage_mode){ //if normal slash.

gpu_set_blendmode(bm_add);
var angle = image_angle + ((spr_dir)?0:180)
draw_sprite_ext( sprite_get("na_slash"), 0, x, y, (image_xscale-2)*spr_dir, 0.5, angle, c_white, image_alpha );
if (state == 0){
	var tmp_alpha1 = ease_cubeIn( 100, 0, state_timer, state_end )/100;
	draw_sprite_ext( sprite_get("na_slash_wh"), 0, x, y, (image_xscale+1.5)*spr_dir, 1.25, angle, c_white, tmp_alpha1/3 );
	draw_sprite_ext( sprite_get("na_slash_wh"), 0, x, y, (image_xscale+2)*spr_dir, 1.5, angle, c_white, tmp_alpha1/3 );
}

if (state == 3){
	var tmp_alpha1 = ease_cubeIn( 0, 100, state_timer, state_end )/100;
	draw_sprite_ext( sprite_get("na_slash_wh"), 0, x, y, (image_xscale+1.5)*spr_dir, 1.25, angle, c_white, tmp_alpha1/3 );
	draw_sprite_ext( sprite_get("na_slash_wh"), 0, x, y, (image_xscale+2)*spr_dir, 1.5, angle, c_white, tmp_alpha1/3 );
}
gpu_set_blendmode(bm_normal);









/*
var alp_tmp = 0;

if (state == 0){
	alp_tmp = ease_linear( 0, alp2, state_timer, state_end )/10;
}
if (state == 1){
	alp_tmp = alp2/10;
}
if (state == 2){
	alp_tmp = ease_linear( alp2, 0, state_timer, state_end )/10;
}
if (state == 3){
	alp_tmp = alp2/10;
}

var angle = image_angle + ((spr_dir)?0:180)

draw_sprite_ext( sprite_get("na_slash"), 0, x, y, length_scale*spr_dir, 1, angle, c_white, alp_tmp );*/

}