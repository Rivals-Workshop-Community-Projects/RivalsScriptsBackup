//
shader_start();

if phaseh == 9999 && !hitpause {
       draw_sprite_ext(sprite_get("defense"), 0, x, y - 40,1,1,move_cooldown[AT_EXTRA_2]*4,-1,.8) 
        
    if phaseh > 3 {
        draw_sprite_ext(sprite_get("defense"), 1, x, y - 40,1,1,move_cooldown[AT_EXTRA_2]*3 + 40,-1,.8) 
    } 
    
    if phaseh >= 7 {
        draw_sprite_ext(sprite_get("defense"), 2, x, y - 40,1,1,move_cooldown[AT_EXTRA_2]*2 + 80,-1,.8) 
    } 
    
}

if ending == 0 {
    force_depth = true 
    depth = 1
if phaseh <= 9999 {
   if shield > 0 {    
    draw_sprite_ext(sprite_get("heathbar"), max(0,47 - (phase/2.8333)),x - hsp - old_hsp,y - 124 - hsp - old_hsp,1,1,0,-1,.5 )
   } else {
    draw_sprite_ext(sprite_get("heathbar"), max(48,95 - (heathdecay/2.8333)),x - hsp - old_hsp,y - 124 - hsp - old_hsp,1,1,0,-1,1 )    
    draw_sprite_ext(sprite_get("heathbar"), max(0,47 - (phase/2.8333)),x - hsp - old_hsp,y - 124 - hsp - old_hsp,1,1,0,-1,1)   
   }

if phaseh < 9 {
   if shield > 0 {     
   if move_cooldown[AT_NSPECIAL] == 0 {
      draw_sprite_ext(sprite_get("head1"), (get_gameplay_time()/6)%4, x, y - 40,1,1,angle,-1,1)  
   } else {
       draw_sprite_ext(sprite_get("head1"), (get_gameplay_time()/6)%4, x, y - 40,1,1,angle,c_black, 1) 
       draw_sprite_ext(sprite_get("head1"), (get_gameplay_time()/6)%4, x, y - 40,1,1,angle,-1,get_gameplay_time()%3 + 0.3) 
   }
   } else {
       draw_sprite_ext(sprite_get("head1"), 4, x, y - 40,1,1,angle,-1,1) 
   }
} else {
    if shield > 0 {     
    if move_cooldown[AT_NSPECIAL] == 0 {
       draw_sprite_ext(sprite_get("head2"), (get_gameplay_time()/4)%4, x, y - 40,1,1,angle,-1,1)  
    } else {
        draw_sprite_ext(sprite_get("head2"), (get_gameplay_time()/6)%4, x, y - 40,1,1,angle,c_black, 1) 
        draw_sprite_ext(sprite_get("head2"), (get_gameplay_time()/4)%4, x, y - 40,1,1,angle,-1,get_gameplay_time()%3 + 0.3) 
    }
    } else {
        draw_sprite_ext(sprite_get("head2"), 4, x, y - 40,1,1,angle,-1,1) 
    }    
}

} else {
    draw_sprite_ext(sprite_get("head2"), 4, x, y - 40,1,1,angle,-1,1) 
}
}

if ending <= 0 && ((shield == 1 && ((move_cooldown[AT_EXTRA_1] > 20 and move_cooldown[AT_EXTRA_1] < 570) or move_cooldown[AT_EXTRA_1] % 3 <= 1))) {

        draw_sprite_ext(sprite_get("defense"), 0, x, y - 40,1,1,move_cooldown[AT_EXTRA_1]*4,-1,.8) 
        
    if phaseh > 3 {
        draw_sprite_ext(sprite_get("defense"), 1, x, y - 40,1,1,move_cooldown[AT_EXTRA_1]*3 + 40,-1,.8) 
    } 
    
    if phaseh >= 7 {
        draw_sprite_ext(sprite_get("defense"), 2, x, y - 40,1,1,move_cooldown[AT_EXTRA_1]*2 + 80,-1,.8) 
    }
    
    if phaseh < 9 {
    draw_sprite_ext(sprite_get("head1"), (get_gameplay_time()/6)%4, x, y - 40,1,1,angle,c_red, .15 + phaseh/30) 
    } else {
     draw_sprite_ext(sprite_get("head2"), (get_gameplay_time()/6)%4, x, y - 40,1,1,angle,c_red, .15 + phaseh/30)    
    }
}


shader_end();

if move_cooldown[AT_DTILT] > 0 && move_cooldown[AT_DTILT] < 120 {
	draw_set_alpha(0.2);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}

if ending > 0 {
      draw_sprite_ext(sprite_get("head2"), 4, x, y - 40,1,1,angle,-1,1) 
    	


         draw_debug_text(room_width/2 - 84,room_height/2 - 109,"!!!BOSS DEFEATED!!!");
         

         
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