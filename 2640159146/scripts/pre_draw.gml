if(burst==1 and state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_TECH_GROUND and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_WALL_TECH and state != PS_AIR_DODGE and state != PS_PARRY and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)){
    switch (attack){
    	case AT_FSTRONG_2:
    	case AT_DSTRONG:
    	case AT_DSPECIAL:
    	case AT_NSPECIAL:
    	case AT_FSPECIAL:
    	case AT_USTRONG:
    	    gpu_set_fog(true, trail_color, 1, 1);
			for(var t = 0; t < demon_trail_size; t++){
	        	var i = demon_trail[t];
	        	if(i.life > 0){
	            	draw_sprite_ext(i.sprite_index, i.image_index, i.x, i.y, (1+small_sprites)*i.spr_dir, 1+small_sprites, 0, i.color, (i.life/20)/1.5);
	        	}
	        }
	        draw_sprite_ext(sprite_index, image_index, x + 2 - random_func(4,8,true) , y - 2 + random_func(2,6,true)  , spr_dir*1+small_sprites, 1+small_sprites, 0 , c_black , 1);
            draw_sprite_ext(sprite_index, image_index, x - 2 + random_func(4,8,true) , y + 2 - random_func(2,6,true)  , spr_dir*1+small_sprites, 1+small_sprites, 0 , c_black , 1);
	        gpu_set_fog(false, c_white, 1, 1);
	        break;
    }
}