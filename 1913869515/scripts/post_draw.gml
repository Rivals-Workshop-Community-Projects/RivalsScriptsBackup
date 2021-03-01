shader_start();

if get_player_color(player) == 3 && random_func(4, 2, 1) == 0 {

var fs = floor(random_func(0, sprite_height-1, 1)/2)*2
draw_sprite_part_ext(sprite_index,image_index, 0,fs, abs(sprite_width), floor((random_func(1, 20, 1)+1)/2)*2, (x+(random_func(2, 3, 1)-1)*2)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)

}

if introtimer > 1 {

 if  get_gameplay_time() % 6 == 0 {     
 	
 	
       var RSE1 = random_func(11, 40, true);
	   var RSE2 = random_func(12, 40, true);
 }
		 
		 
 if  get_gameplay_time() % 6 == 1 {     
 	

 	
 	 var RSE3 = random_func(13, 40, true);
	 var RSE4 = random_func(14, 40, true);

 }
		 


        
        if get_gameplay_time() % 4 == 3{
         draw_sprite(sprite_get("airdodge"), get_gameplay_time() / 2, x + 20 - RSE1, y - 9 + 20 - RSE2 );
        }

       if get_gameplay_time() % 4 == 2{
         draw_sprite(sprite_get("roll_backward"), get_gameplay_time() / 2, x + 20 - RSE3, y - 9 + 20 - RSE4 );
       }
   
        if get_gameplay_time() % 4 == 1{
         draw_sprite(sprite_get("waveland"), get_gameplay_time() / 2, x + 20 - RSE4, y - 9 + 20 - RSE3 );
        }
        
        if get_gameplay_time() % 4 == 0{
         draw_sprite(sprite_get("doublejump"), get_gameplay_time() / 2, x + 20 - RSE2, y - 9 + 20 - RSE1 );
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


if get_player_color(player) == 8 {
		if visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir, 1, 0 , c_fuchsia , 0.2);

  gpu_set_blendmode(bm_normal);
}
}