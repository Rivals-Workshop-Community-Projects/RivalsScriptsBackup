//pre_draw


if(attack == AT_NSPECIAL){
    if(window == 2){
        if(sprite_index == sprite_get("fspecial")){
            //Forwards
        }else if(sprite_index == sprite_get("uspecial")){
            
        }else if(sprite_index == sprite_get("dspecial")){
            
        }else if(sprite_index == sprite_get("uair")){
            
        }else if(sprite_index == sprite_get("nspecial")){
            
        }
    }
}

if (get_player_color(player) == 12){
    g7fx_timer += 0.15;
    draw_sprite(sprite_get("G7_Effect"), g7fx_timer % 14, x - 5*spr_dir, y - 40)
}

if (get_player_color(player) == 13){
    g7fx_timer += 0.3;
    if(waves_rising >= 0){
        waves_direction -= 0.1
    }else if(waves_rising < 0){
        waves_direction += 0.1
    }
    waves_rising += 0.25 * waves_direction
	draw_sprite_ext(sprite_get("waves"), g7fx_timer, x, y - 40 - waves_rising, 1, 1, 0, c_white, 0.5)
}

if(get_player_color(player) == 10){
    g7fx_timer += 0.2;
    if(attack == AT_TAUNT && state == PS_ATTACK_GROUND){
    	draw_sprite_ext(sprite_get("blw_flag"), g7fx_timer, x, y - 40, flag_width, 1, 0, c_white, 0.5)
    }else{
    	draw_sprite_ext(sprite_get("blw_flag"), g7fx_timer, x - 5*spr_dir, y - 40, flag_width, 1, 0, c_white, 0.5)
    }
	if(attack == AT_TAUNT && state == PS_ATTACK_GROUND && window > 1 || attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND || attack == AT_DSPECIAL && state == PS_ATTACK_GROUND && window < 3 || attack == AT_DSPECIAL && state == PS_ATTACK_AIR && window < 3){
	    if(flag_width < 1){
            flag_width += 0.1
        }else{
            flag_width = 1
        }
	}else{
	    if(flag_width > 0){
	        flag_width -= 0.1
	    }else{
	        flag_width = 0
	    }
	}
}