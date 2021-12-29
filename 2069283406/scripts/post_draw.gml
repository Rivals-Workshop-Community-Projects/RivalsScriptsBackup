shader_start();

if move_cooldown[AT_FSPECIAL_2] > 0 {
	

	
	draw_sprite_ext(sprite_get("DeathAlex"),0, (galx + room_width/2)/2 + 10 - random_func(1,20,true), (galy + room_height/2)/2 + 10 - random_func(2,20,true) , 4 - move_cooldown[AT_FSPECIAL_2]/60 , 4 - move_cooldown[AT_FSPECIAL_2]/60,-1, c_white, move_cooldown[AT_FSPECIAL_2]/120 );
	draw_sprite_ext(sprite_get("DeathAlex"),0, (galx + room_width/2)/2 + 10 - random_func(2,20,true), (galy + room_height/2)/2 + 10 - random_func(1,20,true), 3 - move_cooldown[AT_FSPECIAL_2]/40 , 3 - move_cooldown[AT_FSPECIAL_2]/40,-1, c_white, move_cooldown[AT_FSPECIAL_2]/90 );

	
	
}

if fireon >= 1 && fireon <= 1.5{
    draw_sprite(sprite_get("fireon1"), get_gameplay_time() / 6, hit_player_obj.x ,hit_player_obj.y  + 25  );
}

if fireon >= 2 && fireon < 3{
    draw_sprite(sprite_get("fireon2"), get_gameplay_time() / 6, hit_player_obj.x ,hit_player_obj.y  + 25  );
}

if fireon >= 3{
    draw_sprite(sprite_get("fireon3"), get_gameplay_time() / 6, hit_player_obj.x ,hit_player_obj.y  + 25  );
}


///if firerange > 0{
///    draw_sprite(sprite_get("fireedge1"), get_gameplay_time() / 6, hit_player_obj.x + 100 + (0.7*firerange) ,hit_player_obj.y  + 35  );
///    draw_sprite(sprite_get("fireedge2"), get_gameplay_time() / 6, hit_player_obj.x - 100 - (0.7*firerange) ,hit_player_obj.y  + 35  );
///}



if shade == 1 {

if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
    
    if attack != AT_JAB {
    var last_window = get_attack_value(attack, AG_NUM_WINDOWS);
    
    if window < last_window {
    draw_sprite(sprite_get("shade2"), get_gameplay_time() / 3, x, y - 60 -((window * 10) + window_timer) );
    }
    
    if window == last_window {
    draw_sprite(sprite_get("shade2"), get_gameplay_time() / 3, x, y - 80 + (2 * window_timer)  );   
    }
    }
    
     if attack == AT_JAB {
          if window < last_window {
              if window % 2 = 0 {
    draw_sprite(sprite_get("shade2"), get_gameplay_time() / 3, x, y - 60 -((window * 10) + window_timer) );
    }
          }
          
           if window == last_window or window % 2 = 1 {
    draw_sprite(sprite_get("shade2"), get_gameplay_time() / 3, x, y - 80 + (2 * window_timer)  );   
    }
    
         
     }
    
    
    
}
 

if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND {
    

if state == PS_CROUCH  {
      if spr_dir == 1 {
     draw_sprite(sprite_get("shade1"), get_gameplay_time() / 0, x + 2, y - 40 );


}


if spr_dir == -1 {
     draw_sprite(sprite_get("shade3"), get_gameplay_time() / 0, x - 2 , y - 40 );


}
}


    if (state == PS_IDLE or free) && state != PS_AIR_DODGE {
      if spr_dir == 1 {
     draw_sprite(sprite_get("shade1"), get_gameplay_time() / 0, x -2, y - 58  );


}


if spr_dir == -1 {
     draw_sprite(sprite_get("shade3"), get_gameplay_time() / 0, x + 2 , y - 58 );


}
}

    if state == PS_WALK or state == PS_DASH_START {
      if spr_dir == 1 {
     draw_sprite(sprite_get("shade1"), get_gameplay_time() / 0, x  , y - 54  );


}


if spr_dir == -1 {
     draw_sprite(sprite_get("shade3"), get_gameplay_time() / 0, x  , y - 54 );


}
}

}
}

if move_cooldown[AT_USPECIAL_GROUND] > 0 {
        draw_set_alpha((180 - move_cooldown[AT_USPECIAL_GROUND])/180 - 0.2);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}



 	if move_cooldown[AT_USPECIAL_GROUND] > 10 {
 	    
	if move_cooldown[AT_USPECIAL_GROUND] % 20 > 16{
      draw_sprite_ext(sprite_get("dattack"), 1, hit_player_obj.x - 60*spr_dir  , hit_player_obj.y, spr_dir,1,0,-1,1  );
	}
	
    if move_cooldown[AT_USPECIAL_GROUND] < 120 && move_cooldown[AT_USPECIAL_GROUND] % 10 > 5 {
      draw_sprite_ext(sprite_get("dattack"), move_cooldown[AT_USPECIAL_GROUND], hit_player_obj.x - 60*spr_dir  , hit_player_obj.y, spr_dir,1,0,-1,1   );
	}
	
	if move_cooldown[AT_USPECIAL_GROUND] < 60 && move_cooldown[AT_USPECIAL_GROUND] % 6 < 2 {
      draw_sprite_ext(sprite_get("fair"), move_cooldown[AT_USPECIAL_GROUND], hit_player_obj.x - 60*spr_dir  , hit_player_obj.y, spr_dir,1,0,-1,1 );
	}
	
 	}
 	
 
 if "ai_target" in self && invincible && invince_time <= 2 {
   		
		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, -1, 1);

	
}

shader_end() 

if spr_dir = 0.99 {
            draw_debug_text(room_width/2 - 110 ,room_height/2 - 135, "Setting time:   " + string (10 - (get_gameplay_time()/100)));
    		draw_debug_text(room_width/2 - 110 ,room_height/2 - 120, "STOCK SETTING! STOCK SETTING! STOCK SETTING!");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 90, "'JUMP' to change YOUR STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 75, "'SPECIAL' to change OPPONENTS STOCK");
    		draw_debug_text(room_width/2 - 110 ,room_height/2  - 55, "'TAUNT' to exit");
}