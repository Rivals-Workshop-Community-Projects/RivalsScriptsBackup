if(spark_timer > 0){
    spark_timer--;
    var spark_effect = (5 - spark_timer % 10) / 10;
    gpu_set_fog(true, c_teal, true, false);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x, y + 2 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x, y - 2 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect + 0.5);
    draw_sprite_ext(sprite_index, image_index, x + 4, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    draw_sprite_ext(sprite_index, image_index, x, y + 4 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    draw_sprite_ext(sprite_index, image_index, x - 4, y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    draw_sprite_ext(sprite_index, image_index, x, y - 4 + draw_y, 2 * spr_dir, 2, spr_angle, c_white, spark_effect);
    gpu_set_fog(true, c_teal, false, true);
}
gpu_set_fog(false, c_teal, false, false);
shader_start();
if(state == PS_ATTACK_GROUND && attack == AT_DATTACK){
    draw_sprite_ext(sprite_index, image_index, x - spr_distance * spr_dir, y + draw_y, 2 * spr_dir, 2, 0, c_white, 0.6);
    draw_sprite_ext(sprite_index, image_index, x - spr_distance * spr_dir * 2, y + draw_y, 2 * spr_dir, 2, 0, c_white, 0.3);
}
shader_end();

// cosmic alt
if(get_player_color(player) == 29){
	maskHeader();
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x,y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, 1);
	maskMidder();
	draw_sprite_tiled_ext(sprite_get("cosmic_bg"), game_time * idle_anim_speed * 10, get_gameplay_time()/10 , get_gameplay_time()/10 , 1, 1, c_white, 1);
	maskFooter();
}

#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    
}
//================================================================================
#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
