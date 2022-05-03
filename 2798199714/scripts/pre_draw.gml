// pre-draw

shader_start();

if (attack == AT_TAUNT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if(window == 10 || window == 11){
	    if(alt == 0){
		    draw_sprite_ext(sprite_get("taunt_crystal"), 1, x, y-45, spr_dir*(small_sprites+1), 1*small_sprites+1, spr_angle, c_white, 1);
	    }else{
	        draw_sprite_ext(sprite_get("taunt_crystal"), 3, x, y-45, spr_dir*(small_sprites+1), 1*small_sprites+1, spr_angle, c_white, 1);
	    }
	}
}

shader_end();