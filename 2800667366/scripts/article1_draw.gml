//


draw_sprite_ext(sprite_get("bg1"),0, floor((obj_stage_main.camcontrolx)) , 160 + floor((obj_stage_main.camcontroly)/2) + 100 ,2.15,2.15,0, -1, 1 )

 draw_sprite_ext(sprite_get("bg2"),0,  floor(((obj_stage_main.camcontrolx*2) + room_width*2)/6)  , 270 + floor((obj_stage_main.camcontroly)/4) + 40  ,1.5,1.5, 180, -1, .5)

 gpu_set_blendmode(bm_add);

draw_sprite_tiled_ext(sprite_get("bg2"),0,  floor(((obj_stage_main.camcontrolx*2) + room_width)/4) + get_gameplay_time()/10 , 270 + floor((obj_stage_main.camcontroly)/6) + get_gameplay_time()/4  ,1.5,1.5, -1, 1)



draw_sprite_ext(sprite_get("bh"),get_gameplay_time()/4, room_width/2 + 3 - random_func(1,7,true) , room_height/2 - 120 + 3 - random_func(2,7,true)  ,1.2,1.2,0, -1, .2 )   
   gpu_set_blendmode(bm_normal);  
 

draw_sprite_ext(sprite_get("bh"),get_gameplay_time()/8, room_width/2 , room_height/2 - 120 ,1,1,0, -1, 1 )

 gpu_set_blendmode(bm_add);
 if obj_stage_main.finish > 0 {
     draw_sprite_ext(sprite_get("bh"),get_gameplay_time(), room_width/2 + 10 - random_func(1,21,true) , room_height/2 - 120 + 10 - random_func(2,21,true)  ,1.2 + random_func(2,10,true)/100,1.2 + random_func(2,10,true)/100,0, -1, .5 + random_func(1,10,true)/30)   
     draw_sprite_ext(sprite_get("bh"),get_gameplay_time(), room_width/2 , room_height/2 - 120 ,.8 - (obj_stage_main.finish - 90)/20,.8 - (obj_stage_main.finish - 90)/20,0, -1, (obj_stage_main.finish)/90 )
     obj_stage_main.finish -= 1
 }  
 gpu_set_blendmode(bm_normal);  
   
   
//draw_sprite_ext(sprite_get("ground"),0,room_width/2 ,room_height/2 - 35,2,2,0,-1,.4)