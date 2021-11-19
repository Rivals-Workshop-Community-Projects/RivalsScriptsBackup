shader_start();




if uphit != 0 {
  gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y - svsp*2 - 28, 1.04,1.04,0,-1, .1);
    draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y - svsp*2 - 28, .96,.96,0,-1, .1);
 gpu_set_blendmode(bm_normal);


	draw_sprite_ext(sprite_get("inkring"), 0, x - shsp*2 , y - svsp*2 - 28, 1,1,0,-1, 0.6);
	if uphit > 1 {
	draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y - svsp*2 - 28, 1,1,0,-1, uphit/30);
	uphit -= 1
   }	
   

}	

if sidehit != 0 {
	gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y - svsp*2 - 40, 1.04,1.04,0,-1, .1);
    draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y - svsp*2 - 40, .96,.96,0,-1, .1);
 gpu_set_blendmode(bm_normal);
 
	draw_sprite_ext(sprite_get("inkring"), 2, x - shsp*2 , y - svsp*2 - 40, 1,1,0,-1, 0.6);
	if sidehit > 1 {
	draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y - svsp*2 - 40, 1,1,0,-1, sidehit/30);
	sidehit -= 1
   }	
  
 
}	

if downhit != 0 {
	gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y - svsp*2 - 46, 1.04,1.04,0,-1, .1);
    draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y - svsp*2 - 46, .96,.96,0,-1, .1);
 gpu_set_blendmode(bm_normal);
 
	draw_sprite_ext(sprite_get("inkring"), 4, x - shsp*2 , y - svsp*2 - 46, 1,1,0,-1, 0.6 );
	if downhit > 1 {
	draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y - svsp*2 - 46, 1,1,0,-1, downhit/30);
	downhit -= 1
   }	
    
}

if neutralhit != 0 {
	
	gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y - svsp*2 - 36, 1.04,1.04,0,-1, .1);
    draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y - svsp*2 - 36, .96,.96,0,-1, .1);
 gpu_set_blendmode(bm_normal);
 
	draw_sprite_ext(sprite_get("inkring"), 6, x - shsp*2 , y - svsp*2 - 36, 1,1,0,-1, 0.6 );
	if neutralhit > 1 {
	draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y - svsp*2 - 36, 1,1,0,-1, neutralhit/30);
	neutralhit -= 1
   }	
   
}

if 	allhit != 0 {
	allhit -= 1
	draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y - svsp*2 - 36, 1,1,0,-1, allhit/30);
	draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y - svsp*2 - 46, 1,1,0,-1, allhit/30);
	draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y - svsp*2 - 40, 1,1,0,-1, allhit/30);
	draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y - svsp*2 - 22, 1,1,0,-1, allhit/30);
}

if attacking && attack == AT_EXTRA_2  {
    
    if window == 6 {
        draw_sprite_ext(sprite_index , image_index - 1, x - shsp , y - svsp  , spr_dir, 1, 0 , -1 , 0.4 - window_timer/30);
        draw_sprite_ext(sprite_index , image_index  - 2, x - shsp*2 , y - svsp*2  , spr_dir, 1, 0 , -1 , 0.2 - window_timer/30);
  
    } else {
        draw_sprite_ext(sprite_index , image_index - 1, x - shsp , y - svsp  , spr_dir, 1, 0 , -1 , 0.4)
        draw_sprite_ext(sprite_index , image_index  - 2, x - shsp*2 , y - svsp*2  , spr_dir, 1, 0 , -1 , 0.2);
    }
    
    if window == 6 {
            draw_sprite_ext(finalattack, finalframe  + window_timer/4, finalx, y , spr_dir*1, 1, 0 , -1 , 1 - window_timer/30 );
    
    }
    
}
shader_end(); 

if move_cooldown[AT_FSPECIAL_2] > 0 {
    if get_player_color(player) != 14 {

         draw_sprite_ext(sprite_get("galaxy1"), 0,  room_width/2 + 36,  room_height/2 - 30  + 100,7 - move_cooldown[AT_FSPECIAL_2]/30 ,7 - move_cooldown[AT_FSPECIAL_2]/30 ,0,-1,min(0.3,(move_cooldown[AT_FSPECIAL_2] - 90 )/120) );     
    	  gpu_set_blendmode(bm_add);   
          draw_sprite_ext(sprite_get("galaxy1"), 0,  room_width/2 + 36 ,  room_height/2 - 60 + move_cooldown[AT_FSPECIAL_2],3.5 - move_cooldown[AT_FSPECIAL_2]/240 ,3.5 - move_cooldown[AT_FSPECIAL_2]/240 ,0,-1,min(0.5,(move_cooldown[AT_FSPECIAL_2] - 60 )/120) );     
           gpu_set_blendmode(bm_normal);
  shader_start();  
    	 gpu_set_blendmode(bm_add);   
        draw_sprite_ext(sprite_get("galaxy1"), 2,  room_width/2 + 36 ,  room_height/2 - 60  + move_cooldown[AT_FSPECIAL_2],3.5 - move_cooldown[AT_FSPECIAL_2]/240 ,3.5 - move_cooldown[AT_FSPECIAL_2]/240 ,0,-1,min(0.5,(move_cooldown[AT_FSPECIAL_2] - 60 )/120) );     
         gpu_set_blendmode(bm_normal); 
shader_end(); 
    } else {
           draw_sprite_ext(sprite_get("galaxy1"), 1,  room_width/2 ,  room_height/2 + 100,7 - move_cooldown[AT_FSPECIAL_2]/30 ,7 - move_cooldown[AT_FSPECIAL_2]/30 ,0,-1,min(0.3,(move_cooldown[AT_FSPECIAL_2] - 90 )/120) );     
         	  gpu_set_blendmode(bm_add);
           draw_sprite_ext(sprite_get("galaxy1"), 1,  room_width/2 ,  room_height/2 + move_cooldown[AT_FSPECIAL_2],3.5 - move_cooldown[AT_FSPECIAL_2]/240 ,3.5 - move_cooldown[AT_FSPECIAL_2]/240 ,0,-1,min(0.6,(move_cooldown[AT_FSPECIAL_2] - 60 )/120) );     
         gpu_set_blendmode(bm_normal);    
     }
     

	
}



