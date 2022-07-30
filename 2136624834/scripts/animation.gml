
if state == PS_SPAWN {
    if state_timer == 1 {
         sound_stop(sound_get("fs2"));
         sound_play(sound_get("fs2"), false, noone, .8);
            var shortest_dist = 9999;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						other.hit_player_obj = self
					}
				}
			}
			
         spr_dir *= -1
    }
    
    if state_timer < 90 {
        
        if state_timer % 60 == 30 {
              sound_stop(sound_get("fs1"));
				sound_play(sound_get("fs1"), false, noone, .8);
		}
		
		if state_timer % 60 == 0 {
		      sound_stop(sound_get("fs2"));
			sound_play(sound_get("fs2"), false, noone, .8);
		}
		
        draw_indicator = false
        move_cooldown[AT_NSPECIAL] = 5
        timebroke = 1
	  draw_x = (hit_player_obj.x - x) + (state_timer - 50)*spr_dir*1.3
	  draw_y = (hit_player_obj.y - y)
      sprite_index = sprite_get("walk");
      image_index = state_timer / 7.5;
    }
     
     
     if state_timer  = 90 {
    	draw_x = 0
    	timebroke = 0
    	image_index = sprite_get("idle");
      sound_stop(asset_get("sfx_bird_downspecial"));	
      sound_stop(asset_get("sfx_spin"));	
      sound_play(asset_get("sfx_bird_downspecial"),false, noone, 1,1.6);
      sound_play(asset_get("sfx_spin"),false, noone, 1,0.3);
      spawn_hit_fx( x, y , darken )	
      shake_camera(4,4)
     }
     
     if state_timer < 110 && state_timer % 3 == 0 {
	  draw_x = (hit_player_obj.x - x) + (state_timer - 50)*spr_dir*1.3
	  draw_y = (hit_player_obj.y - y)
      sprite_index = sprite_get("walk");
      image_index = state_timer / 7.5;
    }
    
}

if (state == PS_DASH) {
   if timefreeze > 1 {
        sprite_index = sprite_get("walk");
        image_index = state_timer / 7.5;
   } else { 
       
        sprite_index = sprite_get("dash");
        image_index = state_timer / 3;
       
   }
}


if (state == PS_DASH_START) {
   if timefreeze > 1 {
        sprite_index = sprite_get("walk");
        image_index = state_timer / 6;
   } else { 
       
        sprite_index = sprite_get("dashstart");
        image_index = state_timer / 3;
       
   }
}


