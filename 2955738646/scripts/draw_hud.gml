
if(state == PS_SPAWN){
	ChaosEmerald = 0;
	EmeraldSense = 0;
	EmeraldChance = 0;
}
/*
draw_sprite_ext(sprite_get("rmeter_sense"), 1, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);
	
draw_sprite_ext(sprite_get("rmeter_sense"), 2, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);
	
draw_sprite_ext(sprite_get("rmeter_sense"), 3, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);
	
draw_sprite_ext(sprite_get("rmeter_sense"), 4, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);
	
draw_sprite_ext(sprite_get("rmeter_sense"), 5, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("rmeter_sense"), 6, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("rmeter_sense"), 7, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("rmeter_sense"), 8, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("rmeter"), ChaosEmerald, temp_x-8, temp_y-62, 2, 2, 0, c_white, 1);

if (EmeraldChance == true){
	switch(ChaosEmerald){
		case 0:
		draw_sprite_ext(sprite_get("rmeter_sense"), 1, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
		
		case 1:
		draw_sprite_ext(sprite_get("rmeter_sense"), 2, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
		
		case 2:
		draw_sprite_ext(sprite_get("rmeter_sense"), 3, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
		
		case 3:
		draw_sprite_ext(sprite_get("rmeter_sense"), 4, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
		
		case 4:
		draw_sprite_ext(sprite_get("rmeter_sense"), 5, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
		
		case 5:
		draw_sprite_ext(sprite_get("rmeter_sense"), 6, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
		
		case 6:
		draw_sprite_ext(sprite_get("rmeter_sense"), 7, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
		
		case 7:
		draw_sprite_ext(sprite_get("rmeter_sense"), 8, temp_x-8, temp_y-62, 2, 2, 0, c_white, EmeraldSense);
		break;
	}
}

   
   
