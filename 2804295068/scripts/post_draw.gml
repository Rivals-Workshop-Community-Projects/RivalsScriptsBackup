//post-draw
if (snow_pea_chill_id != noone){
	if (snow_pea_chill_time > 0){
		gpu_set_fog(1, c_blue, 0, 1);
		
		draw_sprite_ext(sprite_index, image_index, 
		round(x) + draw_x, round(y) + draw_y, 
		image_xscale * (small_sprites+1), image_yscale * (small_sprites+1), 
		spr_angle, c_white, 0.5);
		
		gpu_set_fog(0, c_white, 0, 0);
	}
}



if (get_player_color(player) == 18 && object_index != asset_get("oTestPlayer"))
{
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x +draw_x, y + draw_y, (1+small_sprites) * spr_dir, 1+small_sprites, spr_angle, -1, 1);
    maskMidder();
    draw_sprite_tiled(sprite_get("gold_shimmer"), get_gameplay_time() * 0.4, x - 50 *spr_dir, y - (char_height/2) - 50);
    maskFooter();
}
//These are custom mask functions that can be used to add effects. In this case we are adding a shimmer effect to the Gold alt
#define maskHeader
{
    gpu_set_blendenable(false)
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(-200, -200, room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true, true, true, true);
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}