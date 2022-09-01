//pre_draw.gml
shader_start();

	if infernal2 < 300 {
		if infernal2 > 295 {
			infernal2 += 10
		} 
	}
	
if rank >= 4 {
	  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("DT"), get_gameplay_time()/ 4 , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1, 1, 0 , -1 , 0.5 - (get_gameplay_time() % 20)/200);
  gpu_set_blendmode(bm_normal);

		draw_sprite_ext(sprite_get("DT"), get_gameplay_time() / 4 , x + 1 - hsp  , y + 1 - vsp  , spr_dir*1, 1, 0 , -1 , rankm/280 - (get_gameplay_time() % 20)/200);
		
}


if rank < 5 {


draw_sprite_ext(sprite_get("rank"), rank + 5, x - 50 + 10, y- 60 - 22,1,1,0,-1, rankm/120/2 + 0.2 );

draw_sprite_ext(sprite_get("rank"), rank + 10, x - 50 + 10, y- 60 - 22,1 ,1 ,0,-1, rankm/240/2 - (get_gameplay_time() % 20)/200);

}

if rank == 5 {
    
draw_sprite_ext(sprite_get("rank"), 4, x - 50 + 10, y- 60 - 22,1,1,0,-1,rankm/120 + 0.5);
   draw_sprite_ext(sprite_get("rank"), 14, x - 50 + 18, y- 60 - 24,1 ,1 ,0,-1, rankm/300 - (get_gameplay_time() % 20)/200);
   

  draw_sprite_ext(sprite_get("rank"), 14, x - 50 + 10, y- 60 - 24,1 ,1 ,0,-1, rankm/300 - (get_gameplay_time() % 20)/200);
  


draw_sprite_ext(sprite_get("rank"), 9, x - 50 + 18, y- 60 - 22,1,1,0,-1, rankm/120 );

draw_sprite_ext(sprite_get("rank"), 14, x - 50 + 18, y- 60 - 22,1 ,1 ,0,-1, rankm/280 - (get_gameplay_time() % 20)/200);

}

if rank == 6 {
    


draw_sprite_ext(sprite_get("rank"), 4, x - 50 + 10, y- 60 - 22,1,1,0,-1,rankm/120 + 0.5);
draw_sprite_ext(sprite_get("rank"), 4, x - 50 + 18, y- 60 - 22,1,1,0,-1,rankm/120 + 0.5);
    
  draw_sprite_ext(sprite_get("rank"), 14, x - 50 + 18, y- 60 - 24,1 ,1 ,0,-1, rankm/300/2 - (get_gameplay_time() % 20)/200);
 

draw_sprite_ext(sprite_get("rank"), 9, x - 50 + 10, y- 60 - 22,1,1,0,-1, rankm/120/2 );

draw_sprite_ext(sprite_get("rank"), 14, x - 50 + 10, y- 60 - 22,1 ,1 ,0,-1, rankm/280/2 - (get_gameplay_time() % 20)/200);
 draw_sprite_ext(sprite_get("rank"), 14, x - 50 + 2, y- 60 - 24,1 ,1 ,0,-1, rankm/300 - (get_gameplay_time() % 20)/200);
  
}



if move_cooldown[AT_FSPECIAL] > 0 {
	
     draw_sprite(sprite_get("nobike"), max(1,(90 - move_cooldown[AT_FSPECIAL]) / 9), x , y + 20  );


}

if move_cooldown[AT_UTILT] > 0 {
	
     draw_sprite(sprite_get("nobike"), (120 - move_cooldown[AT_UTILT]) / 12, x , y + 20  );


}

shader_end();



if attacking && attack == 49 && window == 1 {
    	draw_set_alpha(0.3);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}


///Dash 
