//pre_draw
if (get_player_color(player) == 12){
    g7fx_timer += 0.15;
    draw_sprite(sprite_get("G7_Effect"), g7fx_timer % 14, x - 45, y - 76)
}

if (get_player_color(player) == 11){
    g7fx_timer += 0.3;
    if(waves_rising >= 0){
        waves_direction -= 0.1
    }else if(waves_rising < 0){
        waves_direction += 0.1
    }
    waves_rising += 0.25 * waves_direction
    draw_sprite(sprite_get("waves"), g7fx_timer, x - 45, y - 76 - waves_rising)
}

if(get_player_color(player) == 8){
    g7fx_timer += 0.2;
    draw_sprite_ext(sprite_get("blw_flag"), g7fx_timer, x, y - 40, flag_width, 1, 0, c_white, 0.5)
	if(attack == AT_TAUNT && state == PS_ATTACK_GROUND || attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND){
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