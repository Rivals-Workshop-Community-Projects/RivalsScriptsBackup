if attack == AT_EXTRA_3 {
	switch(get_window_value(attack, window, AG_WINDOW_TYPE)) {
		default: break;
		case 69: //Startup twinkle
		gpu_set_blendmode(bm_add);
		var amt = ease_linear(1, 0, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH));
		var camt = floor(ease_linear(0, 12, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH)));
		var glh = sprite_get("glyphs");
		var adiv = 360/12;
		for (i = 0; i <= camt; i++) {
			draw_sprite_ext(glh,i,x+lengthdir_x(80+amt*80, 90+(i+1)*adiv),y+lengthdir_y(80+amt*80, 90+(i+1)*adiv)-30,1,1,0,c_white,1-amt)
		}
		
		
		draw_sprite_ext(sprite_get("FS_twinkle"),0,x,y-30, amt*2, amt*2, amt*180, c_white, 1);
//		draw_sprite_ext(sprite_get("FS_glow"),0,x,y-30, amt*4, amt*4, amt*180, c_white, 1-amt);
		gpu_set_blendmode(bm_normal);
		break;
		case 666: //The exact point of collapse
		gpu_set_blendmode(bm_add);
		var flr = sprite_get("FS_flare");
		draw_sprite_ext(flr,0,x,y-30,1.5,1.5,state_timer,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,1.5,1.5,state_timer*0.6+75,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,1.5,1.5,-state_timer*1.3,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,1.5,1.5,-state_timer*0.9+75,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,1.5,1.5,state_timer*1.6+140,c_white,1)
		
		draw_sprite_ext(sprite_get("FS_glow"),1,x,y-30, 1.8, 1.8, 0, c_white, 1);
		gpu_set_blendmode(bm_normal);
	//	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*(1+small_sprites), 1+small_sprites, 0, c_black, 1)
		break;
		case 420:
		var amt = ease_linear(0, 1, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH));
		
		gpu_set_blendmode(bm_add);
		var flr = sprite_get("FS_flare");
		draw_sprite_ext(flr,0,x,y-30,2,2,state_timer,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,2,2,state_timer*0.6+75,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,2,2,-state_timer*1.3,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,2,2,-state_timer*0.9+75,c_white,1)
		draw_sprite_ext(flr,0,x,y-30,2,2,state_timer*1.6+140,c_white,1)
		
		draw_sprite_ext(sprite_get("FS_ring_h"),1,x,y-30, 1+amt*2, 1+amt*2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("FS_ring_v"),1,x,y-30, 2+amt*0.5, 2+amt*0.5, 0, c_white, 1);
		draw_sprite_ext(sprite_get("FS_glow"),1,x,y-30, 2, 2, 0, c_white, 1-amt);
		draw_sprite_ext(sprite_get("FS_nova"),1,x,y-30, 2+amt*0.8, 2+amt*0.2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("FS_ring_h"),1,x,y-30, 1+amt*2, -1-amt*2, 0, c_white, 1);
		gpu_set_blendmode(bm_normal);
		break;
		case 421:
		var amt = ease_linear(1, 2, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH));
		gpu_set_blendmode(bm_add);
		var flr = sprite_get("FS_flare");
		draw_sprite_ext(flr,0,x,y-30,3-amt,3-amt,state_timer,c_white,2-amt)
		draw_sprite_ext(flr,0,x,y-30,3-amt,3-amt,state_timer*0.6+75,c_white,2-amt)
		draw_sprite_ext(flr,0,x,y-30,3-amt,3-amt,-state_timer*1.3,c_white,2-amt)
		draw_sprite_ext(flr,0,x,y-30,3-amt,3-amt,-state_timer*0.9+75,c_white,2-amt)
		draw_sprite_ext(flr,0,x,y-30,3-amt,3-amt,state_timer*1.6+140,c_white,2-amt)
		
		
		
		draw_sprite_ext(sprite_get("FS_ring_h"),1,x,y-30, 1+amt*2, 1+amt*2, 0, c_white, 2-amt);
		draw_sprite_ext(sprite_get("FS_ring_v"),1,x,y-30, 2+amt*0.5, 2+amt*0.5, 0, c_white, 2-amt);
		draw_sprite_ext(sprite_get("FS_nova"),1,x,y-30, 2+amt*0.8, 2+amt*0.2, 0, c_white, 2-amt);
		draw_sprite_ext(sprite_get("FS_ring_h"),1,x,y-30, 1+amt*2, -1-amt*2, 0, c_white, 2-amt);
		gpu_set_blendmode(bm_normal);
		break;
	}
}


if attack == AT_USPECIAL_2 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) {
shader_start();
	draw_sprite_ext(sprite_get("uspecial_shield"), image_index, x, y, 2, 2, 0, c_white, 1)
	shader_end();
}