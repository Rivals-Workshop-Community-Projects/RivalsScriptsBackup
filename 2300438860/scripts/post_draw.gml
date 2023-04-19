///



if cheapmode == 1 && get_gameplay_time() < 600 &&  get_gameplay_time() > 80 {
    draw_debug_text(x - 80 ,y -162,"You look interesting.");
	draw_debug_text(x - 110 ,y -142,"(Nspecial to active anticheap)");
}

if cheapmode == 3 && get_gameplay_time() < 660 {
     draw_debug_text(x - 70 ,y -152,"It's kill or be killed.");
}

shader_start();

if (Genocide == 4) && invincible && invince_time <= 2 {
   		
		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, -1, 1);

	
}


if state == PS_AIR_DODGE {
draw_sprite_ext(sprite_index, image_index, x  , y  , 1 * spr_dir, 1, 0 , c_white , 1);
}

if barpause > 0 {
    gpu_set_blendmode(bm_add);
    	 draw_sprite_ext(sprite_index, image_index, x  - shsp*2 , y  - svsp*2, 1 * spr_dir, 1, 0 , c_red , 0.3);
     draw_sprite_ext(sprite_index, image_index-1, x  - shsp*4 , y  - svsp*4, 1 * spr_dir, 1, 0 , c_red , 0.2);
     draw_sprite_ext(sprite_index, image_index-2, x  - shsp*4.5 , y  - svsp*4.5, 1 * spr_dir, 1, 0 , c_red , 0.1);
gpu_set_blendmode(bm_normal);
}


if attackbar > 0 {
    	 draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5, x - 40 , y + 20, 1, 1, 0 , c_white , 0.5 + attackbar/120)
  if get_gameplay_time() % 2 == 0 {
      draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5, x - 40 , y + 20, 1, 1, 0 , c_white , 1)
  	 draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5 - 1, x - 40 , y + 20, 1, 1, 0 , c_white , 0.3);;
  }
        		draw_sprite_ext(sprite_get("heart"), get_gameplay_time()/4, x , y - 30, spr_dir/3, 0.3, 0 , -1 , 1);
        		
  if barpause > 0 {
      
    draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5, x - 42 + random_func(1,4,true) , y + 22 - random_func(2,4,true), 1, 1, 0 , c_red , 0.5)
               	 
      	  gpu_set_blendmode(bm_add);
  if get_gameplay_time() % 2 == 0 {
  	 draw_sprite_ext(sprite_get("attackbar"), attackbar/4.5 - 1, x - 40 , y + 20, 1, 1, 0 , c_red , 0.5);;
  }
    gpu_set_blendmode(bm_normal);
  }        		
}

if attacking && attack == AT_TAUNT && window == 3 {
    if state_timer > 40 {
        draw_set_alpha((state_timer-40)/200);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
    	draw_sprite_ext(sprite_index, 5, x  , y + (state_timer-40)*1.8 , (1 + (state_timer-40)/60*(state_timer-40)/100) * spr_dir, 1 + (state_timer-40)/60*(state_timer-40)/100, 0 , c_white , 1);
       draw_sprite_ext(sprite_get("tspeak"),(state_timer-40)/4.4,room_width/2 - 180 - random_func(4, 10, true),room_height/2 - 100 - random_func(2, 10, true),1,1,0,-1, 1)
    }
}

shader_end() 

/*
if finisher > 0 && hitpause{


shader_start();
	draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 100 - finisher*5, 1,  1,0,-1,  1)
	
		  	draw_set_alpha(0.7);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
    	
	  gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_get("death"),0, room_width/2 - 10 + random_func(1,20,true), room_height/2  - 40 - 10 + random_func(2,20,true), 
	1.4 - finisher/120,  1.4 - finisher/120,0,-1,  finisher/60 - 0.2)
	gpu_set_blendmode(bm_normal);
	
	if finisher > 55{
	draw_sprite_ext(sprite_get("lighten"),0, room_width/2 - 10 + random_func(1,20,true), room_height/2  - 40 - 10 + random_func(2,20,true), 
	1.4 - finisher/120,  1.4 - finisher/120,0,-1,  1)
	}
	
shader_end();


gpu_set_fog(1, c_black, 0, 1);
draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) - 6,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) + 6,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) - 6 , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) + 6, 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);
gpu_set_fog(0, c_black, 0, 0);



gpu_set_fog(1, c_white, 0, 1);
draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);
gpu_set_fog(0, c_white, 0, 0);


gpu_set_fog(1, c_white, 0, 1);
draw_sprite_ext(sprite_get("heartb"),10 - finisher/6,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(15,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 30 - random_func(16,20,true) , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);
gpu_set_fog(0, c_white, 0, 0);

gpu_set_fog(1, c_black, 0, 1);
draw_sprite_ext(sprite_get("heartb"),10 - finisher/6,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(15,20,true) - 6,
(hit_player_obj.y + room_height/2)/2 - 30 - random_func(16,20,true) , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);

draw_sprite_ext(sprite_get("heartb"),10 - finisher/6,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(15,20,true) + 6,
(hit_player_obj.y + room_height/2)/2 - 30 - random_func(16,20,true) , 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);

draw_sprite_ext(sprite_get("heartb"),10 - finisher/6,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(15,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 30 - random_func(16,20,true) - 6, 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);

draw_sprite_ext(sprite_get("heartb"),10 - finisher/6,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(15,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 30 - random_func(16,20,true) + 6, 
hit_player_obj.spr_dir*3,3,image_angle,c_white,1);
gpu_set_fog(0, c_black, 0, 0);

}