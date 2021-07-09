//


if obj_stage_main.roundbegin > 0 {
draw_sprite_ext(sprite_get("roundin1"), 0,room_width/2 - 340 + obj_stage_main.roundbegin*5 , room_height/2 - 80 , 1, 1, 0, c_white, 1 - max(obj_stage_main.roundbegin/160,0.6) ); 	
draw_sprite_ext(sprite_get("roundin1"), 0,room_width/2 + 340 - obj_stage_main.roundbegin*5 , room_height/2 + 180, -1, -1, 0, c_white, 1 - max(obj_stage_main.roundbegin/160,0.6) ); 
}



if obj_stage_main.roundbegin < 0 {
	draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, obj_stage_main.roundbegin/-60 - 0.4); 
}

if obj_stage_main.tradReset > 295 {
draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, 0.2); 	
}

if obj_stage_main.tradReset > 290 {
draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, 0.2); 	
}

if obj_stage_main.tradReset > 285 {
draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, 0.2); 	
}

if obj_stage_main.tradReset > 280 {
draw_sprite_ext(sprite_get("lighten"), 0, room_width/2 , room_height/2, 1, 1, 0, c_white, 0.2); 	
}

draw_sprite_ext(sprite_get("SBreak"), 0, room_width/2 - obj_stage_main.wallbreak*12, room_height/2 - obj_stage_main.wallbreak*5, 1.4, 1, 0, c_white, min(((obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300),0.2)); 	

draw_sprite_ext(sprite_get("SBreak"), 0, room_width/2 - obj_stage_main.wallbreak*8, room_height/2 + obj_stage_main.wallbreak*5, 2.4, 2, 0, c_white, min(((obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300),0.2)); 		

draw_sprite_ext(sprite_get("SBreak"), 0, room_width/2 - obj_stage_main.wallbreak*5, room_height/2 - obj_stage_main.wallbreak*10, 3.4, 3, 0, c_white, min(((obj_stage_main.wallbreak*obj_stage_main.wallbreak)/300),0.2)); 		

if obj_stage_main.nightime == false {
draw_sprite_ext(sprite_get("groundtravelfg"), 0,room_width/2 + obj_stage_main.Currstage , room_height/2 - 80, 2, 2, 0, c_white,1 - abs(obj_stage_main.stageroll/512)); 	
}

if obj_stage_main.nightime == true {
draw_sprite_ext(sprite_get("groundtravelfgnight"), 0,room_width/2 + obj_stage_main.Currstage , room_height/2 - 80, 2, 2, 0, c_white,1 - abs(obj_stage_main.stageroll/512)); 	
}