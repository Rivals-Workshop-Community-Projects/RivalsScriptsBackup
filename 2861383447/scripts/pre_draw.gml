
	//sai M

if (!is_nana){


	if (arsene){
		draw_sprite_ext( sprite_get("arsene"), 0,arsene_x ,arsene_y , -1 * spr_dir, 1, 0, c_white, 0.35);
		draw_sprite_ext( sprite_get("arsene"), 0,arsene_x ,arsene_y , -1.04 * spr_dir, 1.04, 0, c_aqua, 0.35);
	}



	if ink_ring_v != 0 {
	  gpu_set_blendmode(bm_add);
	    draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y + 10 - svsp*2 - 28, 1.04,1.04,0,-1, .1);
	    draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y + 10 - svsp*2 - 28, .96,.96,0,-1, .1);
	 gpu_set_blendmode(bm_normal);


		draw_sprite_ext(sprite_get("inkring"), 0, x - shsp*2 , y + 10 - svsp*2 - 28, 1,1,0,-1, 0.6);
		if ink_ring_v_flash > 1 {
		draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y + 10 - svsp*2 - 28, 1,1,0,-1, ink_ring_v_flash/30);
		ink_ring_v_flash -= 1
	   }	
	   

	}	

	if ink_ring_h != 0 {
		gpu_set_blendmode(bm_add);
	    draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y + 10 - svsp*2 - 40, 1.04,1.04,0,-1, .1);
	    draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y + 10 - svsp*2 - 40, .96,.96,0,-1, .1);
	 gpu_set_blendmode(bm_normal);
	 
		draw_sprite_ext(sprite_get("inkring"), 2, x - shsp*2 , y + 10 - svsp*2 - 40, 1,1,0,-1, 0.6);
		if ink_ring_h_flash > 1 {
		draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y + 10 - svsp*2 - 40, 1,1,0,-1, ink_ring_h_flash/30);
		ink_ring_h_flash -= 1
	   }	
	  
	 
	}	

	if ink_ring_v != 0 {
		gpu_set_blendmode(bm_add);
	    draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y + 10 - svsp*2 - 46, 1.04,1.04,0,-1, .1);
	    draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y + 10 - svsp*2 - 46, .96,.96,0,-1, .1);
	 gpu_set_blendmode(bm_normal);
	 
		draw_sprite_ext(sprite_get("inkring"), 4, x - shsp*2 , y + 10 - svsp*2 - 46, 1,1,0,-1, 0.6 );
		if ink_ring_v_flash > 1 {
		draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y + 10 - svsp*2 - 46, 1,1,0,-1, ink_ring_v_flash/30);
		ink_ring_v_flash -= 1
	   }	
	    
	}

	if ink_ring_n != 0 {
		
		gpu_set_blendmode(bm_add);
	    draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y + 10 - svsp*2 - 36, 1.04,1.04,0,-1, .1);
	    draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y + 10 - svsp*2 - 36, .96,.96,0,-1, .1);
	 gpu_set_blendmode(bm_normal);
	 
		draw_sprite_ext(sprite_get("inkring"), 6, x - shsp*2 , y + 10 - svsp*2 - 36, 1,1,0,-1, 0.6 );
		if ink_ring_n_flash > 1 {
		draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y + 10 - svsp*2 - 36, 1,1,0,-1, ink_ring_n_flash/30);
		ink_ring_n_flash -= 1
	   }	
	   
	}

	if 	all_hit != 0 {
		all_hit -= 1
		draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y + 10 - svsp*2 - 36, 1,1,0,-1, all_hit/30);
		draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y + 10 - svsp*2 - 46, 1,1,0,-1, all_hit/30);
		draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y + 10 - svsp*2 - 40, 1,1,0,-1, all_hit/30);
		draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y + 10 - svsp*2 - 22, 1,1,0,-1, all_hit/30);
	}

	// if 	allhit != 0 {
	// 	allhit -= 1
	// 	draw_sprite_ext(sprite_get("inkring"), 7, x - shsp*2 , y - svsp*2 - 36, 1,1,0,-1, allhit/30);
	// 	draw_sprite_ext(sprite_get("inkring"), 5, x - shsp*2 , y - svsp*2 - 46, 1,1,0,-1, allhit/30);
	// 	draw_sprite_ext(sprite_get("inkring"), 3, x - shsp*2 , y - svsp*2 - 40, 1,1,0,-1, allhit/30);
	// 	draw_sprite_ext(sprite_get("inkring"), 1, x - shsp*2 , y - svsp*2 - 22, 1,1,0,-1, allhit/30);
	// }
}