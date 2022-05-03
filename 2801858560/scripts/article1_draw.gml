///

backroom = obj_stage_main.backroom

draw_sprite_ext(sprite_get("bgnor"), backroom, room_width/2  , room_height/2 - obj_stage_main.introex  ,4,4,0, c_black , 1 )
draw_sprite_ext(sprite_get("bgnor"), backroom, floor((obj_stage_main.camcontrolx)*1.25) , 160 + floor((obj_stage_main.camcontroly)/2) - obj_stage_main.introex ,2,2,0, -1, 1 )


draw_sprite_ext(sprite_get("bg1"), backroom,  floor(((obj_stage_main.camcontrolx*2) + room_width)/4) , 220 + floor((obj_stage_main.camcontroly)/6) - obj_stage_main.introex + yoffset1 ,2,2,0, -1, 1)
   
if backroom == 1 {
    if obj_stage_main.Alexrun < -1 {
    	 draw_sprite_ext(sprite_get("kerodash"), (get_gameplay_time()/3), room_width + obj_stage_main.Alexrun*6 + 500, 16 + 280 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,1 )
         draw_sprite_ext(sprite_get("alexdash"), (get_gameplay_time()/4), room_width + obj_stage_main.Alexrun*7 + 800, 20 + 280 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,1 )
 		 draw_sprite_ext(sprite_get("entity"), (get_gameplay_time()/4 % 6 ), room_width + obj_stage_main.Alexrun*4 , 20 + 290 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), 6 +(get_gameplay_time()/4 % 6 ), room_width + obj_stage_main.Alexrun*5 + 100, 20 + 326 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), 12+(get_gameplay_time()/4 % 8 ), room_width + obj_stage_main.Alexrun*6 + 100, 24 + 320 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), 6 + (get_gameplay_time()/4 % 6 ), room_width + obj_stage_main.Alexrun*7 + 100, 10 + 326 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), (get_gameplay_time()/4 % 6 ), room_width + obj_stage_main.Alexrun*5 + 130, 20 + 322 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
    }
    
	if obj_stage_main.Alexrun > 1 {
		draw_sprite_ext(sprite_get("kerodash"), (get_gameplay_time()/3), obj_stage_main.Alexrun*6 - 500, 16 + 280 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,1 )
	    draw_sprite_ext(sprite_get("alexdash"), (get_gameplay_time()/4), obj_stage_main.Alexrun*7 - 800, 20 + 280 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,1 )
 		 draw_sprite_ext(sprite_get("entity"), (get_gameplay_time()/4 % 6 ), obj_stage_main.Alexrun*4 , 20 + 290 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), 6 +(get_gameplay_time()/4 % 6 ), obj_stage_main.Alexrun*5 - 100, 20 + 326 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), 12+(get_gameplay_time()/4 % 8 ), obj_stage_main.Alexrun*6 - 100, 24 + 320 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), 6 + (get_gameplay_time()/4 % 6 ), obj_stage_main.Alexrun*7 - 100, 10 + 326 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
 		 draw_sprite_ext(sprite_get("entity"), (get_gameplay_time()/4 % 6 ), obj_stage_main.Alexrun*5 - 130, 30 + 20 + floor((obj_stage_main.camcontroly)/10), -1 + (obj_stage_main.Alexrun < 0)*2 ,1,0,-1,.7 )
	}
}

draw_sprite_ext(sprite_get("bg2"), backroom,  floor(((obj_stage_main.camcontrolx) + room_width*2)/5) , 250 + floor((obj_stage_main.camcontroly)/10) - obj_stage_main.introex + yoffset2  + (100*(obj_stage_main.backroom==4)) ,2,2,0, -1, 1 )

  
draw_sprite_ext(sprite_get("ground1"), backroom, room_width/2 - 420, room_height/2 - 104 - obj_stage_main.intro ,2,2,0, -1, 1 )


if obj_stage_main.intro > 0 {
    if obj_stage_main.intro > 60 {
        draw_sprite_ext(sprite_get("front_room"),  obj_stage_main.frontroom, room_width/2, room_height/2 - 40 + random_func(1,20,true) ,2.6,2.6,0, -1,1 )
    draw_sprite_ext(sprite_get("front_room"),  obj_stage_main.frontroom, room_width/2, room_height/2 - 30 + random_func(1,4,true) ,2.4,2.4,0, -1,.8 )
    } else {
    draw_sprite_ext(sprite_get("front_room"),  obj_stage_main.frontroom, room_width/2 + 5 - random_func(1,11,true), room_height/2 - 210 + floor(obj_stage_main.intro*3) ,2.4,2.4,0, -1, obj_stage_main.intro/60  )
    draw_sprite_ext(sprite_get("front_room"),  obj_stage_main.frontroom, room_width/2, room_height/2 - 220 + floor(obj_stage_main.introex*3) ,2.4,2.4,0, -1, obj_stage_main.intro/30 * (get_gameplay_time()%10)/30 )
    draw_sprite_ext(sprite_get("front_room"),  obj_stage_main.frontroom, room_width/2, room_height/2 - 40 + random_func(1,20,true) ,2.6,2.6,0, -1, obj_stage_main.intro/120  )
       
    }
}

if obj_stage_main.e1 != 0 {
   draw_sprite_ext(sprite_get("entity"), (obj_stage_main.e1x/2 % 6 ), obj_stage_main.e1x, room_height/2 + 100,obj_stage_main.e1,1,0, -1, .52 + abs((10 - (obj_stage_main.e1x%20))/10) ) 
   
}

if obj_stage_main.e2 != 0 {
   draw_sprite_ext(sprite_get("entity"), 6 + (obj_stage_main.e2x/4 % 6 ), obj_stage_main.e2x, room_height/2 + 100,obj_stage_main.e2,1,0, -1, .5 + abs((10 - (obj_stage_main.e2x%20))/10) ) 
   
}

if obj_stage_main.e3 != 0 {
   draw_sprite_ext(sprite_get("entity"), 12 + (obj_stage_main.e3x/8 % 8 ), obj_stage_main.e3x, room_height/2 + 100,obj_stage_main.e3,1,0, -1, .5 + abs((10 - (obj_stage_main.e3x%20))/10) ) 
   
}

if obj_stage_main.box != 0 && obj_stage_main.intro == 0 {
    
   
   if obj_stage_main.box < 0 {
       obj_stage_main.box ++
       draw_sprite_ext(sprite_get("entity"),25 + (obj_stage_main.box/6) , obj_stage_main.boxx, room_height/2 + 100,1,1,0, -1, 1 )    
   } else {
       draw_sprite_ext(sprite_get("entity"),20, obj_stage_main.boxx, room_height/2 + 100,obj_stage_main.box,1,0, -1, 1 ) 
   }
   
}

if obj_stage_main.noclip > 1 {
   
    	
     obj_stage_main.noclip -- 
    if obj_stage_main.noclip < 12*3 {
        if obj_stage_main.noclip == 12*3 - 1 {
        obj_stage_main.box = 1
        obj_stage_main.e1 = 0
        obj_stage_main.e2 = 0
        obj_stage_main.e3 = 0
        obj_stage_main.boxx = room_width/2 - 300 + random_func(6,601,true)
        
        }
    draw_sprite_tiled_ext(sprite_get("noclip"), 12 - ((obj_stage_main.noclip - 36)/3),room_width/2 + obj_stage_main.noclip*4,room_height/2 + obj_stage_main.noclip*4, 1, 1, c_white, 1)
   
    
        obj_stage_main.backroom = obj_stage_main.newroom%5
        yoffset1 = obj_stage_main.yoffset1
        yoffset2 = obj_stage_main.yoffset2
 } else {
    draw_sprite_tiled_ext(sprite_get("noclip"), obj_stage_main.noclip/3,room_width/2 + obj_stage_main.noclip*4 ,room_height/2 + obj_stage_main.noclip*4, 1, 1, c_white, 1)
    }
    draw_sprite_ext(sprite_get("ground1"), obj_stage_main.newroom, room_width/2 - 420, room_height/2 - 104 - obj_stage_main.intro ,2,2,0, -1, min(.2, obj_stage_main.noclip/30 ))
    gpu_set_blendmode(bm_add); 
    draw_sprite_ext(sprite_get("noclipwarn"), 0, room_width/2 , room_height/2 + 5 - 100 - random_func(1,11,true), 2,2,0, -1,  (obj_stage_main.noclip - 15) /15 )
    draw_sprite_ext(sprite_get("noclipwarn"), 0, room_width/2 , room_height/2 + 30 - 100 - random_func(2,61,true), 2,2,0, -1,  (obj_stage_main.noclip - 15)/35 ) 
  
   draw_set_alpha((obj_stage_main.noclip - 30)/150);
        draw_rectangle_color(-100,-100,room_width + 100,room_height + 100,c_white,c_white,c_white,c_white,false);
    draw_set_alpha(1);
      gpu_set_blendmode(bm_normal);
}