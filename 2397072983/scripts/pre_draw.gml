if style != 4 && (!attacking or (attacking && (attack != AT_FSPECIAL or (attack == AT_FSPECIAL && window_timer > 40)))) {
	

			draw_sprite_ext(sprite_get("fami"), fami, famix + 2 - random_func(1,4,true), famiy + 2 - random_func(2,4,true), spr_dir, 1, 0 , c_black , 0.3);
			draw_sprite_ext(sprite_get("fami"), fami, famix + 2 - random_func(2,4,true), famiy + 2 - random_func(1,4,true), spr_dir, 1, 0 , c_black , 0.3);

		draw_sprite_ext(sprite_get("fami"), fami, famix , famiy, spr_dir, 1, 0 , -1 , 1);
			draw_sprite_ext(sprite_get("fami"), fami, famix + 2 - random_func(3,4,true), famiy + 2 - random_func(4,4,true), spr_dir, 1, 0 , c_white , 0.6);

  if move_cooldown [AT_EXTRA_3] > 0 {
  	  gpu_set_blendmode(bm_add);
  		draw_sprite_ext(sprite_get("fami"), fami -1, oldfamix + 5 - random_func(1,10,true), oldfamiy + 5 - random_func(2,10,true), spr_dir, 1, 0 , c_black , 0.1);
			draw_sprite_ext(sprite_get("fami"), fami -1 , oldfamix + 5 - random_func(2,10,true), oldfamiy + 5 - random_func(1,10,true), spr_dir, 1, 0 , c_black , 0.1);

		draw_sprite_ext(sprite_get("fami"), fami -1, oldfamix , oldfamiy, spr_dir, 1, 0 , -1 , 1);
			draw_sprite_ext(sprite_get("fami"), fami -1, oldfamix + 5 - random_func(3,10,true), oldfamiy + 2 - random_func(4,10,true), spr_dir, 1, 0 , c_white , 0.1);
      gpu_set_blendmode(bm_normal);
  }
	
}




if Lucahnum == 0 {
	shader_start();
		draw_sprite_ext(sprite_index, image_index, x + 2 - random_func(1,4,true) , y - 2 + random_func(2,4,true)  , spr_dir, 1, 0 , c_black , 0.4);
		draw_sprite_ext(sprite_index, image_index, x - 2 + random_func(1,4,true) , y + 2 - random_func(2,4,true)  , spr_dir, 1, 0 , c_black , 0.4);
		draw_sprite_ext(sprite_index, image_index-1, x + 2 - shsp*1.5 - random_func(1,4,true) , y - 2 - svsp*1.5 + random_func(2,4,true)  , spr_dir, 1, 0 , c_black , 0.1);
		draw_sprite_ext(sprite_index, image_index-1, x - 2 - shsp*1.1 + random_func(1,4,true) , y + 2 - svsp*1.1 - random_func(2,4,true)  , spr_dir, 1, 0 , c_black , 0.1);
		draw_sprite_ext(sprite_get("aura"), 0, x - 50 - 2 + random_func(1,4,true) , y - 80 + 2 - random_func(2,4,true)  , 1, 1, 0 , c_white , 0.3);
	draw_sprite_ext(sprite_get("aura"), 0, x - 100 - shsp*1.1, y  - 160 - svsp *1.1, 2, 2, 0 , -1 , 0.2);
	draw_sprite_ext(sprite_get("aura"), 0, x - 75 - shsp*1.2 , y - 120 - svsp *1.2, 1.5, 1.5, 0 , -1 , 0.2);
	draw_sprite_ext(sprite_get("aura"), 0, x - 50 - shsp*1.3 , y - 80 - svsp *1.3, 1, 1, 0 , -1 , 0.2);
	shader_end() 
}  else {
	
   	gpu_set_fog(1, Lucahnum, 0, 1);

		draw_sprite_ext(sprite_index, image_index, x + 2  , y    , spr_dir, 1, 0 , c_white , 1);
		draw_sprite_ext(sprite_index, image_index, x - 2  , y    , spr_dir, 1, 0 , c_white , 1);
		draw_sprite_ext(sprite_index, image_index, x   , y + 2   , spr_dir, 1, 0 , c_white , 1);
		draw_sprite_ext(sprite_index, image_index, x   , y - 2   , spr_dir, 1, 0 , c_white , 1);
		draw_sprite_ext(sprite_index, image_index-1, x + 2 - shsp*1.5 - random_func(1,4,true) , y - 2 - svsp*1.5 + random_func(2,4,true)  , spr_dir, 1, 0 , c_white , 0.4);
		draw_sprite_ext(sprite_index, image_index-1, x - 2 - shsp*1.1 + random_func(1,4,true) , y + 2 - svsp*1.1 - random_func(2,4,true)  , spr_dir, 1, 0 , c_white , 0.4);

	gpu_set_fog(0, Lucahnum, 0, 0);
	
	
}


shader_start();

if attacking && attack == AT_DSPECIAL && free {
	   draw_sprite_ext(sprite_get("plat"), 0, x , y  , 1, 1, 0 , c_white , 1);	
}

shader_end() 


if attacking && attack = AT_EXTRA_2 {
		draw_set_alpha(window_timer/128);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
    	
}

if move_cooldown[AT_NSPECIAL_2] > 40 {
	draw_sprite_ext(sprite_get("shop"), 4, x, y - 50,
	2 + (120 - move_cooldown[AT_NSPECIAL_2])/40, 
	2 + (120 - move_cooldown[AT_NSPECIAL_2])/40,
	0 , c_blue , 1 - (120 - move_cooldown[AT_NSPECIAL_2])/40);
}

if move_cooldown[AT_FSPECIAL_2] > 0 {
	draw_sprite_ext(sprite_get("shop"), 3, x - 14*spr_dir , y - 46, .8, 1.2, 0 , c_fuchsia , move_cooldown[AT_FSPECIAL_2]/240 + random_func(2,2,true)/3 - 0.15)  ;
}


if move_cooldown[AT_NSPECIAL_2] > 2 {
	    draw_set_alpha((move_cooldown[AT_NSPECIAL_2]-60)/140);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
    	
    	draw_set_alpha(0.2);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}
       draw_sprite_ext(sprite_get("shop"), 0, shopx , shopy - 12  , 1, 1, 0 , c_white , 1);	

if raged == 3 {
	 draw_sprite_ext(sprite_get("shop"), 3, x , y - 42  , 1, 1, 0 , c_orange , 0.2 + random_func(1,2,true)/3);	
	
}

