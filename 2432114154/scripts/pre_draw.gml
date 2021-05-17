shader_start();




if uphit != 0 {
	draw_sprite_ext(sprite_get("inkring"), 0, x - shsp*2 , y - svsp*2 - 28, 1,1,0,-1, 0.6);
	if uphit > 1 {
	draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y - svsp*2 - 28, 1,1,0,-1, uphit/30);
	uphit -= 1
   }	

}	

if sidehit != 0 {
	draw_sprite_ext(sprite_get("inkring"), 2, x - shsp*2 , y - svsp*2 - 40, 1,1,0,-1, 0.6);
	if sidehit > 1 {
	draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y - svsp*2 - 40, 1,1,0,-1, sidehit/30);
	sidehit -= 1
   }	

}	

if downhit != 0 {
	draw_sprite_ext(sprite_get("inkring"), 4, x - shsp*2 , y - svsp*2 - 46, 1,1,0,-1, 0.6 );
	if downhit > 1 {
	draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y - svsp*2 - 46, 1,1,0,-1, downhit/30);
	downhit -= 1
   }	
}

if neutralhit != 0 {
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

shader_end() 

