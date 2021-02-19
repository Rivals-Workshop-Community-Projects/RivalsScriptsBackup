shader_start();


if attack == AT_DSPECIAL{
    
    if window == 5 {
        gpu_set_blendmode(bm_subtract)
    gpu_set_colorwriteenable(false,true,true,true);
	
	draw_circle_colour(x, y - floor(char_height/2), window_timer * 20, c_white, c_white, false);

    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal)
	
	shader_start();
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end()
    }
}

shader_end() 

if spr_dir = 0.99 {
            draw_debug_text(room_width/2 - 110 ,room_height/2 - 135, "Setting time:   " + string (10 - (get_gameplay_time()/100)));
    		draw_debug_text(room_width/2 - 110 ,room_height/2 - 120, "STOCK SETTING! STOCK SETTING! STOCK SETTING!");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 90, "'JUMP' to change YOUR STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 75, "'SPECIAL' to change OPPONENTS STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 55, "'TAUNT' to exit");
}