///

shader_start();

if attacking && (attack == AT_NSPECIAL or attack == AT_FSPECIAL or attack == AT_USPECIAL or attack == AT_DSPECIAL) {
	
	  gpu_set_blendmode(bm_add);
	  

        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 1 - state_timer/8);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2  - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.7 - state_timer/30);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.4 + random_func(1,4,true) , y + 2  - svsp*1.4 - random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.2);


	  gpu_set_blendmode(bm_normal);

  
}

        draw_sprite_ext(sprite_index, image_index, x , y , spr_dir, 1, 0 , c_black , move_cooldown[AT_EXTRA_3]/10 - 0.2);

if invis == 0  {
	
draw_sprite_ext(sprite_index, image_index, x , y , spr_dir, 1, 0 , c_black ,  ( move_cooldown[AT_FSPECIAL_2])/20);	
}


	  gpu_set_blendmode(bm_add);

if (state == PS_PARRY or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_AIR_DODGE
   or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP  or state == PS_WALL_JUMP) and state_timer < 2 {    
   move_cooldown[AT_FSPECIAL_2] = 20
} 


if invis == 0  {
draw_sprite_ext(sprite_index, image_index, x , y , spr_dir, 1, 0 , c_white , ( move_cooldown[AT_FSPECIAL_2])/20)	
}


	  gpu_set_blendmode(bm_normal);


if finisher > 0 {


shader_start();

		  	draw_set_alpha(1);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
    	draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 0.55 - finisher/150,  0.55 - finisher/150,finisher/1.6,-1,  1)	
     draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 0.6 - finisher/150,  0.6 - finisher/150,finisher/1.4,-1,  1)	
    draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 0.65 - finisher/150,  0.65 - finisher/150,finisher/1.2,-1,  1)	
	draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 0.7 - finisher/150,  0.7 - finisher/150,finisher,-1,  1)
	draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 0.8 - finisher/150,  0.8 - finisher/150,finisher*1.2,-1,  1)
    draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 0.9 - finisher/130,  0.9 - finisher/130,finisher*1.6,-1,  1)
       draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 1 - finisher/130,  1 - finisher/130,finisher*1.9,-1,  1)
  	       draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 + 70, 1.2 - finisher/130,  1.2 - finisher/130,finisher*2.2,-1,  1)
  	
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
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) + 6,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) , 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) - 6 , 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);


draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) + 6, 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);

draw_sprite_ext(sprite_index,image_index,(galx + room_width/2 + (x - hit_player_obj.x))/2 ,(galy + room_height/2 + (y - hit_player_obj.y))/2 + 120,spr_dir*2,2,image_angle,c_white,1);


gpu_set_fog(0, c_black, 0, 0);


  gpu_set_blendmode(bm_add);
if finisher <= 40 {
	

	   draw_sprite_ext(sprite_get("grassd"),1, 
       (hit_player_obj.x + room_width/2)/2 ,
       (hit_player_obj.y + room_height/2)/2 - 30  , 
	   	(1.6 - ((finisher - 30)/20))*spr_dir,  1.6 - ((finisher - 30)/20) ,0,c_white, ((finisher)/30) )

	
	if finisher <= 20 {
			

	   draw_sprite_ext(sprite_get("grassd"),2, 
       (hit_player_obj.x + room_width/2)/2 ,
       (hit_player_obj.y + room_height/2)/2 - 40  , 
	   (0.7 - ((finisher - 30)/20))*spr_dir,  0.7 - ((finisher - 30)/20) ,0,c_white, ((finisher)/20) )
	
	}
	
}
gpu_set_blendmode(bm_normal);

if finisher <= 20 {
	
		
		  gpu_set_blendmode(bm_add);
	if finisher > 16 {
		
		
				draw_sprite_ext(sprite_get("blud"),0, 
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 10 - random_func(14,20,true) , 
	(0.5 - ((finisher - 30)/20))*spr_dir,  0.5 - ((finisher - 30)/20) ,0,c_white, 0.4 )
	
	}	

		draw_sprite_ext(sprite_get("blud"),0, 
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 10 - random_func(14,20,true) , 
	(0.5 - ((finisher - 30)/20))*spr_dir,  0.5 - ((finisher - 30)/20) ,0,c_white, ((finisher)/120) )
	
			draw_sprite_ext(sprite_get("blud"),0, 
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 10 - random_func(14,20,true) , 
	(0.5 - ((finisher - 30)/20))*spr_dir,  0.5 - ((finisher - 30)/20) ,0,c_white, ((finisher)/120) )
	
	  gpu_set_blendmode(bm_normal);
	  
		  gpu_set_blendmode(bm_add);
		  
		  if finisher > 17 {
		  	  draw_sprite_ext(sprite_get("grassd"),0, 
(hit_player_obj.x + room_width/2)/2  - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 36 - random_func(14,20,true) , 
	2.4 * spr_dir,  2.4, 0, -1,1)
		  }
		  
  draw_sprite_ext(sprite_get("grassd"),0, 
(hit_player_obj.x + room_width/2)/2  - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 36 - random_func(14,20,true) , 
    2 * spr_dir,  2 , 0, -1,1)
	
		  gpu_set_blendmode(bm_normal);
	
}

if finisher <= 40 && finisher > 20 {
	
		  gpu_set_blendmode(bm_add);
		  
		  if finisher > 37 {
		  	  draw_sprite_ext(sprite_get("grassd"),0, 
(hit_player_obj.x + room_width/2)/2 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 16 - random_func(14,20,true) , 
	1.4 * spr_dir,  1.4, 0, -1,1)
	
			  	  draw_sprite_ext(sprite_get("grassd"),0, 
(hit_player_obj.x + room_width/2)/2 + 10*spr_dir - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 10 - random_func(14,20,true) , 
	1.4 * spr_dir,  1.4, 90, -1,1)
		  }
		  
  draw_sprite_ext(sprite_get("grassd"),0, 
(hit_player_obj.x + room_width/2)/2  - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 16 - random_func(14,20,true) , 
	1 * spr_dir,  1 , 0, -1,1)
  draw_sprite_ext(sprite_get("grassd"),0, 
(hit_player_obj.x + room_width/2)/2 + 10*spr_dir - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 - 10 - random_func(14,20,true) , 
	1 * spr_dir,  1 , 90, -1,1)	
		  gpu_set_blendmode(bm_normal);
	
}

gpu_set_fog(1, c_white, 0, 1);
draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(hit_player_obj.x + room_width/2)/2 + 10 - random_func(13,20,true) ,
(hit_player_obj.y + room_height/2)/2 + 60 - random_func(14,20,true) , 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);
gpu_set_fog(0, c_white, 0, 0);



}
shader_end() 