//Visual indicators for Uspec's range when a disk is out.
shader_start();
if("disk_obj" in self && instance_exists(disk_obj) && move_cooldown[AT_USPECIAL_2] == 0){ 
	var disk_dir = point_direction(x, y-char_height*.5, disk_obj.x, disk_obj.y);
	if(uspec_opaq > 0){
		//Sound wave visual between SnB and their disk when within Uspec range
		var true_dist = point_distance(x, y-char_height*.5, disk_obj.x, disk_obj.y);
		var rel_pos = 110-(get_gameplay_time() % 110);
		
		var x_adj = rel_pos * -dcos(disk_dir);
		var y_adj = rel_pos * dsin(disk_dir);
		
		maskHeader();
		draw_sprite_ext(sprite_get("wave_long_mask"), 0, x, y-char_height/2, true_dist/162, 2, disk_dir, c_white, 0.75);
		maskPreMidder();
		draw_sprite_ext(sprite_get("wave_long"), 0, x+x_adj, y+y_adj-char_height/2, 2, 2, disk_dir, c_white, uspec_opaq);
		maskMidder();
		draw_sprite_ext(sprite_get("wave_long"), 0, x+x_adj, y+y_adj-char_height/2, 2, 2, disk_dir, c_white, uspec_opaq);
		maskFooter();
		
		/*//white outline on disk when its within range
		var temp_col = make_color_rgb(255, 255, 255);
		gpu_set_fog(true,temp_col,0,1);
		
		draw_sprite_ext(sprite_get("disc"), disk_obj.image_index, disk_obj.x - 2, disk_obj.y - 2, disk_obj.spr_dir, 1, 0, c_white, 0.75 );
		draw_sprite_ext(sprite_get("disc"), disk_obj.image_index, disk_obj.x + 2, disk_obj.y - 2, disk_obj.spr_dir, 1, 0, c_white, 0.75 );
		draw_sprite_ext(sprite_get("disc"), disk_obj.image_index, disk_obj.x + 2, disk_obj.y + 2, disk_obj.spr_dir, 1, 0, c_white, 0.75 );
		draw_sprite_ext(sprite_get("disc"), disk_obj.image_index, disk_obj.x - 2, disk_obj.y + 2, disk_obj.spr_dir, 1, 0, c_white, 0.75 );
		
		gpu_set_fog(false,c_white,0,0);
		*/
	}
	//Radius indicator
	if(abs(disk_dist - uspec_range) <= 120){
		draw_sprite_ext(sprite_get("radiusindicator"), is_bite, disk_obj.x, disk_obj.y, 2, 2, -(180-disk_dir), c_white, (120 - abs(disk_dist - uspec_range))/120 + (disk_dist <= uspec_range? 0.3 : 0));
	}
}
shader_end();


//mask code goes at bottom
//================================================================================
#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskPreMidder
//Used to draw 2 masks at once and circumvent the issue with shaders
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_src_alpha);
}
//================================================================================
#define maskMidder
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
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    if instance_number(oTestPlayer) > 0 {
        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    }
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    gpu_set_blendenable(1);
    gpu_set_colorwriteenable(true,true,true,true);
}