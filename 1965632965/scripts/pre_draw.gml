shader_start();

if (attack == AT_NSPECIAL) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
    if(spr_dir){
       
            draw_sprite_ext(sprite_get("magnum"),magnum_ind,x-spr_dir*8,y-30,1,1,bash_angle,c_white,1)
        }
        
        
    else{
       
       
            draw_sprite_ext(sprite_get("magnum"),magnum_ind,x-spr_dir*8,y-30,1,-1,bash_angle+3.14159,c_white,1)
        
        
        
        
        
    }
    
    
}
if(state == PS_RESPAWN){
	draw_sprite(sprite_get("platback"), 0,x,y);
}

if (attack == AT_NSPECIAL_SHELL) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
    if(spr_dir){
        draw_sprite_ext(sprite_get("brickbreaker"),brickbreak_ind,x-spr_dir*8,y-30,1,1,bash_angle,c_white,1)
        
        
    }else{
        draw_sprite_ext(sprite_get("brickbreaker"),brickbreak_ind,x-spr_dir*8,y-30,1,-1,bash_angle+3.14,c_white,1)
        
        
        
        
    }
    
    
}

if (attack == AT_NSPECIAL_GRENADE) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
    if(spr_dir){
        draw_sprite_ext(sprite_get("launcher"),grenade_ind,x-spr_dir*8,y-30,1,1,bash_angle,c_white,1)
        
        
    }else{
        draw_sprite_ext(sprite_get("launcher"),grenade_ind,x-spr_dir*8,y-30,1,-1,bash_angle+3.14,c_white,1)
        
        
        
        
    }
    
    
}
if get_player_color(player) == 15{
    if (state != PS_RESPAWN) {

	shader_start();
	if(attack == AT_USPECIAL and window == 3){
		for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4] + 0.2*spr_dir, _img[5] + 0.1, fire_ang - 90, c_black, _img[8] * _percent);
	}
	}else{
		for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3] - m*2, _img[4] + 0.2*spr_dir, _img[5] + 0.1, _img[6], c_black, _img[8] * _percent);
	}
	

	}
	}
	shader_end();
	
	
	
}

if get_player_color(player) == 9{
	 
	 if(attack == AT_USPECIAL and window == 3){
	 	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, fire_ang - 90, image_blend, 0.75);
	 }else{
	 	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.75);
	 }
	 
     sprite_index = asset_get("empty_sprite");
	
	
	
}



shader_end();