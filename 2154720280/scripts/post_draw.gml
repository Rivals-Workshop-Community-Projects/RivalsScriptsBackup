shader_start();

	if state == PS_ATTACK_AIR && attack == AT_USPECIAL && window == 4 && vsp > -2 {
		draw_sprite_ext(sprite_index, image_index, x  , y , spr_dir, 1, 0 , c_black , 0.5);	
	}
	
if get_gameplay_time() < 200 && get_player_color(player) >= 6 {
    
     draw_debug_text(x - 80,y - 120,"Press Taunt for Insanity");
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