///
shader_start();

if phase >= 3 && downed == 0{
	
     draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y - (14*triggered)  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.2);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y - (14*triggered) - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.1); 
     
		  gpu_set_blendmode(bm_add);
	 draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y - (14*triggered)  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.2);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y - (14*triggered) - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.1); 
  gpu_set_blendmode(bm_normal);
}

if attacking && attack == AT_DATTACK{
    if window == 3 {
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
    } else {
      draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);  
    }
}

if attacking && attack == AT_DAIR{
 if window > 2 {
      draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);  
 }
}

if visible and (!attacking or (attacking && attack != AT_USPECIAL && ((attack != AT_DSTRONG) or (attack == AT_DSTRONG && window != 2 && window != 3))))  { 
if triggered == 1 && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_PARRY_START
&& state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD && state != PS_AIR_DODGE  {
			draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - 14 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);

	if free and state != PS_WALL_JUMP {
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	
	if !free {
		if (hsp <= 1 and hsp >= -1) && state != PS_WALK_TURN && state != PS_DASH_TURN {
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
		}
		
		if (hsp > 1 or hsp < -1) && (hsp <= 5 and hsp >= -5) && state != PS_WALK_TURN && state != PS_DASH_TURN {
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%20)/5, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%20)/5, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
		}
		
		if (hsp > 5 or hsp < -5)  && state != PS_WALK_TURN && state != PS_DASH_TURN {
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%16)/4, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 7 + (get_gameplay_time()%16)/4, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
		}
	}
	
		if state == PS_WALK_TURN or state == PS_DASH_TURN or state == PS_WALL_JUMP{
				draw_sprite_ext(sprite_get("DTclone"), 6, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		      draw_sprite_ext(sprite_get("DTclone"), 6, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	
		} 
		
		
}


if triggered == 1 && state_timer % 4 < 2 && state_timer > 8 &&
(state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or state == PS_AIR_DODGE)  {
			draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - 14 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);

	if free {
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 11 + (get_gameplay_time()%21)/7, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	
	if !free {
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x , y - 30  , spr_dir, 1, 0 , c_white , 0.6);
		draw_sprite_ext(sprite_get("DTclone"), 0 + (get_gameplay_time()%30)/6, x + 4 - random_func(1,8,true) , y - 30 - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
}
}

if attacking {
	
if attack == AT_USPECIAL {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	if window == 2 {
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
    }
	
}
	
if attack == AT_USTRONG {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	if window == 1 {
		draw_set_alpha(window_timer/128);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
	}
	if window == 2 {
		draw_set_alpha(0.3);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
	}
}

if attack == AT_FSTRONG {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
}

    if window == 3 {
	 draw_sprite_ext(sprite_index, image_index-1, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);
    }
    
    if window == 4{
      draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_white , 0.3);
     draw_sprite_ext(sprite_index, image_index, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_white , 0.2);  
    }
    
}

if attack == AT_DSTRONG {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
	}
	if window == 1 {
		draw_set_alpha(window_timer/128);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
	}
}


}

if state == PS_RESPAWN {
		 draw_sprite_ext(sprite_get("plat2"), 0, x - 4*spr_dir , y - 40 , 1 * spr_dir, 1, 0 , c_white , 1);
		 spawn_hit_fx(x - 4*spr_dir - 4 + random_func(1,8,true) ,y - 40 - 4 + random_func(2,8,true),plat2)
}

if ending > 0 {

    	


         draw_debug_text(room_width/2 - 84,room_height/2 - 119,"!!!BOSS DEFEATED!!!");
         
            if temp_level == 1 {
         draw_debug_text(room_width/2 - 84,room_height/2 - 104,"Difficulty: Dante Must Die");	
         }
         if temp_level > 1 && temp_level < 6 {
         draw_debug_text(room_width/2 - 84,room_height/2 - 104,"Difficulty: Human");	
         }
         if temp_level > 6 && temp_level < 9 {
         draw_debug_text(room_width/2 - 84,room_height/2 - 104,"Difficulty: Demon Hunter");	
         }
         if temp_level >= 9{
         draw_debug_text(room_width/2 - 84,room_height/2 - 104,"Difficulty: Sons of Sparda");	
         }   
         
    	if ending < 520 {
    		   draw_debug_text(room_width/2 - 64,room_height/2 - 84,"Stock:  " + string(stock));
    	}
    	    	
    	if ending < 500 {
    		   draw_debug_text(room_width/2 - 64,room_height/2 - 69,"Style:  " + string(style));
    	}
    	
    	if ending < 480 {
    		   draw_debug_text(room_width/2 - 64,room_height/2 - 54,"Time:  " + string(time));
    	}
    	
    	if ending < 460 {
    		   draw_debug_text(room_width/2 - 64,room_height/2 - 39,"Total:  " + string(total));
    	}
    	
    	if ending < 400 {
    		   draw_debug_text(room_width/2 - 84,room_height/2 - 4,"RANK:");
    	}
}




shader_end() 