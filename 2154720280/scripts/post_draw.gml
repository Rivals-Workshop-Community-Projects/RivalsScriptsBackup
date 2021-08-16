shader_start();
if get_player_color(player) == 11 {
		if visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir, 1, 0 , c_fuchsia , 0.2);
  gpu_set_blendmode(bm_normal);
}
}
	if state == PS_ATTACK_AIR && attack == AT_USPECIAL && window == 4 && vsp > -2 {
		draw_sprite_ext(sprite_index, image_index, x  , y , spr_dir, 1, 0 , c_black , 0.5);	
	}
	
if get_gameplay_time() < 200 && get_player_color(player) >= 6 {
    
     draw_debug_text(x - 86,y - 120,"Press Taunt for Insanity");
}

shader_end() 

if spr_dir = 0.99 {
            draw_debug_text(room_width/2 - 110 ,room_height/2 - 135, "Setting time:   " + string (10 - (get_gameplay_time()/100)));
    		draw_debug_text(room_width/2 - 110 ,room_height/2 - 120, "STOCK SETTING! STOCK SETTING! STOCK SETTING!");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 90, "'JUMP' to change YOUR STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 75, "'SPECIAL' to change OPPONENTS STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 55, "'TAUNT' to exit");
}



if has_rune("M") && supply >= 16 {
    if get_gameplay_time() % 3 == 0{
    draw_debug_text(x - 80,y - 120,"Maximum Tax Frauding");
    }
}