///
shader_start();

if attacking && attack == AT_DATTACK {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.3);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp*4, spr_dir, 1, 0 , -1 , 0.15);
	draw_sprite_ext(sprite_index, 0, oldx , y, spr_dir*-1, 1, 0 , -1 , (0.7 - state_timer/20));
	
}


if attacking && attack == AT_FSPECIAL && window == 3 {
	draw_sprite_ext(sprite_index, image_index, x - 50*spr_dir , y, spr_dir, 1, 0 , -1 , (0.7 - window_timer/20));
	draw_sprite_ext(sprite_index, image_index, x - 100*spr_dir , y, spr_dir, 1, 0 , -1 , (0.7 - window_timer/20));
}

if attacking && attack == AT_USPECIAL {
		draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.3);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.15);

}

if timepat >= 9 or timetimer > 0 {
			draw_sprite_ext( sprite_get("timehalo"), 7 + (get_gameplay_time() % 24)/2, sshsp , ssvsp, spr_dir, 1, 0 , -1 , 1 - random_func(1,5,true)/5);

		draw_sprite_ext(sprite_get("timehalo"), 7 + (get_gameplay_time() % 12), sshsp  - 10*spr_dir , ssvsp - 10  , spr_dir*0.6, 0.6, 0 , -1 , 0.3 - random_func(2,5,true)/5);


    gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("timehalo"), 7 + (get_gameplay_time() % 24)/2, sshsp - 2 , ssvsp - 2  , spr_dir, 1, 0 , -1 , 0.4);
        
		draw_sprite_ext(sprite_get("timehalo"), 7 + (get_gameplay_time() % 12), sshsp  - 10*spr_dir , ssvsp - 10  , spr_dir*0.6, 0.6, 0 , -1 , 0.1);
  gpu_set_blendmode(bm_normal);
  
  	    draw_set_alpha(0.08);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);

  

} 

if timepat < 9 && timepat > 0{
	draw_sprite_ext( sprite_get("timehalo"), timepat - 1, sshsp , ssvsp, spr_dir, 1, 0 , -1 , 1 - random_func(1,5,true)/5);
    gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_get("timehalo"), 7 + (get_gameplay_time() % 12), sshsp  - 10*spr_dir , ssvsp - 10  , spr_dir*0.6, 0.6, 0 , -1 , 0.1);
  gpu_set_blendmode(bm_normal);

}

shader_end() 