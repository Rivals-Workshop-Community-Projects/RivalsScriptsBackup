shader_start();

if ntarget != self {
    

if !hitpause or ntarget != hit_player_obj  {
if drop == 1 {
    draw_sprite(sprite_get("kmark1"), 1 + floor ((get_gameplay_time() % 15)/5), ntarget.x, ntarget.y - 140 );
}


if drop == 2 {
    draw_sprite(sprite_get("kmark2"), 1 + floor ((get_gameplay_time() % 15)/5), ntarget.x, ntarget.y - 140 );
}

if drop == 3 {
    draw_sprite(sprite_get("kmark3"), 1 + floor ((get_gameplay_time() % 15)/5), ntarget.x, ntarget.y - 140 );
}
} else if ntarget = hit_player_obj {
    
if drop == 1 {
    draw_sprite(sprite_get("kmark1"), 0, ntarget.x, ntarget.y - 140 );
}


if drop == 2 {
    draw_sprite(sprite_get("kmark2"), 0, ntarget.x, ntarget.y - 140 );
}

if drop == 3 {
    draw_sprite(sprite_get("kmark3"), 0, ntarget.x, ntarget.y - 140 );
}  
    
}

}


	if state == PS_ATTACK_AIR && attack == AT_USPECIAL && window == 4 && vsp > -2 {
		draw_sprite_ext(sprite_index, image_index, x  , y , spr_dir, 1, 0 , c_black , 0.5);	
	}
	
if inloop && looptime < 401{
    
    	var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
	 hit1 = random_func(1, 150, true);
	 hit2 = random_func(2, 150, true);
        if  get_gameplay_time() % 12 <= 20 && get_gameplay_time() % 3 == 0 {
         draw_sprite_ext(sprite_get("waveland"), window_timer / 1, shortest_id.x -70 + hit1, shortest_id.y -50 + hit2, 1, 1, 0,-1,.5 );
         sound_play(sound_get("slicel"));
        }
        if  get_gameplay_time() % 13 <= 20 && get_gameplay_time() % 2 == 0 {
         draw_sprite_ext(sprite_get("airdodge"), window_timer / 1, shortest_id.x -70 + hit2, shortest_id.y -50 + hit1, 1, 1, 0,-1,.5 );
                 sound_play(sound_get("slice1"));
        	
        }
        if  get_gameplay_time() % 14 <= 20 && get_gameplay_time() % 3 == 1 {
         draw_sprite_ext(sprite_get("uspecial"), window_timer / 1, shortest_id.x -70 + hit1, shortest_id.y -50 + hit2, 1, 1, 0,-1,.5 );
                        sound_play(sound_get("slice3"));
        }
        if  get_gameplay_time() % 15 <= 20 && get_gameplay_time() % 2 == 1{
         draw_sprite_ext(sprite_get("jab"), window_timer / 1, shortest_id.x -70 + hit2, shortest_id.y -50 + hit1, 1, 1, 0,-1,.5  );
        }
        if  get_gameplay_time() % 16 <= 20 && get_gameplay_time() % 3 == 2 {
         draw_sprite_ext(sprite_get("fair"), window_timer / 1, shortest_id.x -70 + hit1, shortest_id.y -50 + hit2, 1, 1, 0,-1,.5  );
          sound_play(sound_get("slicel"));
        	
        }
         if  get_gameplay_time() % 17 <= 20 && get_gameplay_time() % 3 == 2 {
         draw_sprite_ext(sprite_get("dtilt"), window_timer / 1, shortest_id.x -70 + hit1, shortest_id.y -50 + hit2, 1, 1, 0,-1,.5  );
          sound_play(sound_get("slice"));
         	
         }
         if  get_gameplay_time() % 18 <= 20  && get_gameplay_time() % 2 == 0{
         draw_sprite_ext(sprite_get("ftilt"), window_timer / 1, shortest_id.x -70 + hit1, shortest_id.y -50 + hit2, 1, 1, 0,-1,.5  );
         sound_play(sound_get("slice"));
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



