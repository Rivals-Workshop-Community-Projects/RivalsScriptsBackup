// a3 post draw
// Calculate trajectory angle




// Knife white
if(knife_white > 0){
	gpu_set_blendmode(bm_normal);
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index, x,y,spr_dir,1,image_angle,c_white,(knife_white / 10));
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}


draw_sprite(sprite_get("dspecial_proj_2"), (clock_timer >= teleport_time ? teleport_time-1 : clock_timer) * 18 / teleport_time,x,y);

gpu_set_blendmode(bm_add);
if(charged)draw_sprite(sprite_get("charged"),(get_gameplay_time()%(12*4))/4,x,y);
gpu_set_blendmode(bm_normal);
