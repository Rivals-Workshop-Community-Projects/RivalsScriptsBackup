
//COMPATIBILIT-HEE HEE
var distort_draw_y;
var vfx_rand;

if ("hatstate" in other_player_id)
distort_draw_y = 0;
else
distort_draw_y = draw_y;

var trick_vfx_intensity = 7;


if  get_gameplay_time()%2 == 0
vfx_rand = random_func( 0, trick_vfx_intensity, true );

gpu_set_fog(1,c_aqua,0,0);
	if (chaos_guncursed){
	draw_sprite_ext( sprite_index, image_index, (x + draw_x) + vfx_rand, (y + distort_draw_y), (1 + small_sprites) * spr_dir, (1 + small_sprites), spr_angle, c_aqua, 0.9 );
	draw_sprite_ext( sprite_index, image_index, (x + draw_x) - vfx_rand, (y + distort_draw_y), (1 + small_sprites) * spr_dir, (1 + small_sprites), spr_angle, c_aqua, 0.9 );
	}
gpu_set_fog(0,0,0,0);





if (witch_timer > 0){

gpu_set_blendmode_ext(bm_src_alpha, bm_one);
draw_circle_colour(x, round((hurtboxID.bbox_top + hurtboxID.bbox_bottom)/2), 100, c_purple, c_black, 0);
gpu_set_blendmode(bm_normal);




}











