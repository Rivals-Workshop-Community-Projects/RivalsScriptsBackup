shader_start(); 
if slashdraw > 0 && hit_player_obj != self{
	draw_sprite_ext(sprite_get("slosh"), 0, hit_player_obj.x , hit_player_obj.y - 36,
	1 - (slashdraw/maxdraw)/2,
	1 - (slashdraw/maxdraw)/2, 
	angledraw , -1 , slashdraw/maxdraw + 0.2);
}

if slashdraw > 0 && hit_player_obj != self && hitdmg*10 > 5{
	draw_sprite_ext(sprite_get("slosh"), 0, hit_player_obj.x , hit_player_obj.y - 36,
	1 - (slashdraw/maxdraw)/3,
	1 - (slashdraw/maxdraw)/3, 
	angledraw+90, -1 , slashdraw/maxdraw + 0.2);
}
shader_end(); 


shader_start(); 

if get_player_color(player) == 3 && random_func(4, 2, 1) == 0 {
	var fs = floor(random_func(0, sprite_height-1, 1)/2)*2
	draw_sprite_part_ext(sprite_index,image_index, 0,fs, abs(sprite_width), floor((random_func(1, 20, 1)+1)/2)*2, (x+(random_func(2, 3, 1)-1)*2)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)
}

if introtimer > 1 {
	if  get_gameplay_time() % 6 == 0 {
		var RSE1 = random_func(11, 40, true);
		var RSE2 = random_func(12, 40, true);
	}
			
	if  get_gameplay_time() % 6 == 1 {     
		var RSE3 = random_func(13, 40, true);
		var RSE4 = random_func(14, 40, true);
	}
	if get_gameplay_time() % 4 == 3 {
		draw_sprite(sprite_get("airdodge"), get_gameplay_time() / 2, x + 20 - RSE1, y - 9 + 20 - RSE2 );
	}

	if get_gameplay_time() % 4 == 2{
		draw_sprite(sprite_get("roll_backward"), get_gameplay_time() / 2, x + 20 - RSE3, y - 9 + 20 - RSE4 );
	}

	if get_gameplay_time() % 4 == 1{
		draw_sprite(sprite_get("waveland"), get_gameplay_time() / 2, x + 20 - RSE4, y - 9 + 20 - RSE3 );
	}

	if get_gameplay_time() % 4 == 0{
		draw_sprite(sprite_get("doublejump"), get_gameplay_time() / 2, x + 20 - RSE2, y - 9 + 20 - RSE1 );
	}
}
         
shader_end() 

if finisher > 0 && hitpause{
shader_start(); 
	draw_sprite_ext(sprite_get("death"),0,room_width/2, room_height/2 - 40, 1,  1,0,-1,  1)
	  gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_get("death"),0, room_width/2 - 10 + random_func(1,20,true), room_height/2  - 40 - 10 + random_func(2,20,true), 
	1.4 - finisher/120,  1.4 - finisher/120,0,-1,  finisher/30)
	gpu_set_blendmode(bm_normal);
shader_end(); 



gpu_set_fog(1, c_white, 0, 1);
draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(galx + room_width/2)/2 - (galx - hit_player_obj.x)*2 - (finisher)*hit_player_obj.spr_dir + 10 - random_func(1,20,true) + 10 - random_func(2,20,true) ,
(galy + room_height/2)/2 - (galy - hit_player_obj.y)*2 + 70, 
hit_player_obj.spr_dir*2,2,image_angle,c_white,0.6);




draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(galx + room_width/2)/2 - (galx - hit_player_obj.x)*2 + (finisher)*hit_player_obj.spr_dir + 10 - random_func(2,20,true) + 10 - random_func(1,20,true) ,
(galy + room_height/2)/2 - (galy - hit_player_obj.y)*2 + 70, 
hit_player_obj.spr_dir*2,2,image_angle,c_white,0.6);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(galx + room_width/2)/2 - (galx - hit_player_obj.x)*2 + 10 - random_func(13,20,true) + 10 - random_func(4,20,true) - 4,
(galy + room_height/2)/2 - (galy - hit_player_obj.y)*2 + 70, 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(galx + room_width/2)/2 - (galx - hit_player_obj.x)*2 + 10 - random_func(13,20,true) + 10 - random_func(4,20,true) + 4,
(galy + room_height/2)/2 - (galy - hit_player_obj.y)*2 + 70, 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(galx + room_width/2)/2 - (galx - hit_player_obj.x)*2 + 10 - random_func(13,20,true) + 10 - random_func(4,20,true) ,
(galy + room_height/2)/2 - (galy - hit_player_obj.y)*2 + 70 - 4, 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);

draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(galx + room_width/2)/2 - (galx - hit_player_obj.x)*2 + 10 - random_func(13,20,true) + 10 - random_func(4,20,true),
(galy + room_height/2)/2 - (galy - hit_player_obj.y)*2 + 70 + 4,
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);

gpu_set_fog(0, c_white, 0, 0);

gpu_set_fog(1, c_black, 0, 1);
draw_sprite_ext(sprite_index,image_index,(galx + room_width/2)/2 ,(galy + room_height/2)/2 + 70 - 4,spr_dir*2,2,image_angle,c_white,1);
draw_sprite_ext(sprite_index,image_index,(galx + room_width/2)/2 ,(galy + room_height/2)/2 + 70 + 4,spr_dir*2,2,image_angle,c_white,1);
draw_sprite_ext(sprite_index,image_index,(galx + room_width/2)/2 - 4,(galy + room_height/2)/2 + 70,spr_dir*2,2,image_angle,c_white,1);
draw_sprite_ext(sprite_index,image_index,(galx + room_width/2)/2 + 4,(galy + room_height/2)/2 + 70,spr_dir*2,2,image_angle,c_white,1);

gpu_set_fog(0, c_black, 0, 0);


gpu_set_fog(1, c_white, 0, 1);
draw_sprite_ext(sprite_index,image_index,(galx + room_width/2)/2 ,(galy + room_height/2)/2 + 70,spr_dir*2,2,image_angle,c_white,1);
gpu_set_fog(0, c_white, 0, 0);

gpu_set_fog(1, c_black, 0, 1);
draw_sprite_ext(hit_player_obj.sprite_index,hit_player_obj.image_index,
(galx + room_width/2)/2 - (galx - hit_player_obj.x)*2 + 10 - random_func(13,20,true) + 10 - random_func(4,20,true) ,
(galy + room_height/2)/2 - (galy - hit_player_obj.y)*2 + 70, 
hit_player_obj.spr_dir*2,2,image_angle,c_white,1);
gpu_set_fog(0, c_black, 0, 0);





  gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_get("blud"),0, 
	(x + room_width/2)/2 - (x - hit_player_obj.x)*2 ,
	(y + room_height/2)/2 - (y - hit_player_obj.y)*2,
	2 - finisher/60 ,  2 - finisher/60 ,0,c_white,  finisher/30 - 1)
	
	draw_sprite_ext(sprite_get("SCf"), finisherinc/4 - 1, 
	(x + room_width/2)/2 - (x - hit_player_obj.x)*2 ,
	(y + room_height/2)/2 - (y - hit_player_obj.y)*2,
	1 ,  1 ,0,c_white,  finisher/30)
	
	draw_sprite_ext(sprite_get("SCf"), finisherinc/4 - 1, 
	(x + room_width/2)/2 - (x - hit_player_obj.x)*2 ,
	(y + room_height/2)/2 - (y - hit_player_obj.y)*2,
	3 - finisher/30 , 3 - finisher/30 ,0,c_white,  finisher/60)

  gpu_set_blendmode(bm_normal);
}