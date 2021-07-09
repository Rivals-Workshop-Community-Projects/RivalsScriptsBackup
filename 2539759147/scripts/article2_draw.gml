//
if obj_stage_main.nightime == false {
draw_sprite_ext(sprite_get("bg1"), 0,room_width/2 + floor(obj_stage_main.Currstage / (5.12*6)) , room_height/2 + 80, 2, 2, 0, c_white, 1 );
draw_sprite_ext(sprite_get("bg1"), 0,room_width/2 + floor(obj_stage_main.Currstage / (5.12*6)) , room_height/2 + 80, 1, 1, 0, c_white, 1 ); 	
draw_sprite_ext(sprite_get("groundtravel"), 0,room_width/2 + obj_stage_main.Currstage , room_height/2 - 80, 2, 2, 0, c_white, 1 ); 	

draw_sprite_ext(sprite_get("groundtravelblur"), 0,room_width/2 + obj_stage_main.Currstage , room_height/2 - 80, 2, 2, 0, c_white, (obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300 ); 	
} 

if obj_stage_main.nightime == true{
draw_sprite_ext(sprite_get("bg1night"), 0,room_width/2 + floor(obj_stage_main.Currstage / (5.12*6)) , room_height/2 + 80, 2, 2, 0, c_white, 1 );
draw_sprite_ext(sprite_get("bg1night"), 0,room_width/2 + floor(obj_stage_main.Currstage / (5.12*6)) , room_height/2 + 80, 1, 1, 0, c_white, 1 ); 	
draw_sprite_ext(sprite_get("groundtravelnight"), 0,room_width/2 + obj_stage_main.Currstage , room_height/2 - 80, 2, 2, 0, c_white, 1 ); 	

draw_sprite_ext(sprite_get("groundtravelblurnight"), 0,room_width/2 + obj_stage_main.Currstage , room_height/2 - 80, 2, 2, 0, c_white, (obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300 ); 	
} 


draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, obj_stage_main.superPortraitTimer/30 - 0.5); 
if obj_stage_main.wallbreak != 0 {
	
draw_sprite_ext(sprite_get("SBreak"), 0, room_width/2 - obj_stage_main.wallbreak*12, room_height/2 - obj_stage_main.wallbreak*5, 1.4, 1, 0, c_white, min(((obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300),0.5)); 	

draw_sprite_ext(sprite_get("SBreak"), 0, room_width/2 - obj_stage_main.wallbreak*8, room_height/2 + obj_stage_main.wallbreak*5, 2.4, 2, 0, c_white, min(((obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300),0.5)); 		

draw_sprite_ext(sprite_get("SBreak"), 0, room_width/2 - obj_stage_main.wallbreak*5, room_height/2 - obj_stage_main.wallbreak*10, 3.4, 3, 0, c_white, min(((obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300),0.5)); 		

} 


draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, obj_stage_main.counterA/30 - 1.4); 
draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, obj_stage_main.CBreak/30 - 1.4); 



if obj_stage_main.wsp > 0 {
	
draw_sprite_ext(sprite_get("WB1"), 0, obj_stage_main.wspx , obj_stage_main.wspy - 30, 1, 1, 0, c_white, obj_stage_main.wsp/40 + 0.2); 		
 
 if obj_stage_main.wspx  > room_width/2 {	
draw_sprite_ext(sprite_get("WB2"), 0, obj_stage_main.wspx - 150 + obj_stage_main.wsp*2 , obj_stage_main.wspy - 30, 1, 1, 0, c_white, obj_stage_main.wsp/30 - 0.2);	

draw_sprite_ext(sprite_get("WB2"), 0, obj_stage_main.wspx - 300 + obj_stage_main.wsp*4 , obj_stage_main.wspy - 30, 0.7, -0.7, 0, c_white, obj_stage_main.wsp/30 - 0.5);	
 }

 if obj_stage_main.wspx  < room_width/2 {	
draw_sprite_ext(sprite_get("WB2"), 0, obj_stage_main.wspx + 150 - obj_stage_main.wsp*2 , obj_stage_main.wspy - 30, 1, 1, 0, c_white, obj_stage_main.wsp/30 - 0.2);	

draw_sprite_ext(sprite_get("WB2"), 0, obj_stage_main.wspx + 300 - obj_stage_main.wsp*4 , obj_stage_main.wspy - 30, 0.7, -0.7, 0, c_white, obj_stage_main.wsp/30 - 0.5);	
 
 
}

}


draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, obj_stage_main.superPortraitTimer/30 - 0.5); 