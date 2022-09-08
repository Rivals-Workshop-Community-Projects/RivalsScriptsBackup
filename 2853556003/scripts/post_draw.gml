//post_draw

if(attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !instance_exists(waterBomb)){
    
    //Drawing Bomb
    shader_start()
    if(!instance_exists(waterBomb) && !(instance_exists(hurricane) && hurricane.holding_bomb == true)){
        if(window == 1){
            if(window_timer <= 1){
                bomb_sizevar = 0
            }else{
                bomb_sizevar = lerp(bomb_sizevar, 1, 0.5)
            }
            if(get_player_color(player) != 13){
	            if(regrab_damage >= 8){
	                var bomb_spr = sprite_get("bubbleBombStrong")
	            }else{
	                var bomb_spr = sprite_get("bubbleBombIdle")
	            }
            }else{
            	if(regrab_damage >= 8){
	                var bomb_spr = sprite_get("bubbleBombStrong_ocean")
	            }else{
	                var bomb_spr = sprite_get("bubbleBombIdle_ocean")
	            }
            }
            var bomb_spr = draw_sprite_ext(bomb_spr, 0, x + 20*spr_dir, y - 10, bomb_sizevar*spr_dir*-1, bomb_sizevar, -60*spr_dir + 6*sin(state_timer/20), c_white, 1)
        }
        
        if(window == 2){
            if(get_player_color(player) != 13){
	            if(regrab_damage >= 8){
	                var bomb_spr = sprite_get("bubbleBombStrong")
	            }else{
	                var bomb_spr = sprite_get("bubbleBombIdle")
	            }
            }else{
            	if(regrab_damage >= 8){
	                var bomb_spr = sprite_get("bubbleBombStrong_ocean")
	            }else{
	                var bomb_spr = sprite_get("bubbleBombIdle_ocean")
	            }
            }
            
            bomb_sizevar = 1
            
            if(sprite_index == sprite_get("nspecial_forward") || sprite_index == sprite_get("nspecial_forward_air")){
                //Forwards
                var bomb_spr = draw_sprite_ext(bomb_spr, 0, x - 60*spr_dir, y - 60, bomb_sizevar*spr_dir*-1, bomb_sizevar, 0 + 6*sin(state_timer/20), c_white, 1)
            }else if(sprite_index == sprite_get("nspecial_forwardup") || sprite_index == sprite_get("nspecial_forwardup_air")){
                //Up-Forwards
                var bomb_spr = draw_sprite_ext(bomb_spr, 0, x - 65*spr_dir, y - 40, bomb_sizevar*spr_dir*-1, bomb_sizevar, 25*spr_dir + 6*sin(state_timer/20), c_white, 1)
            }else if(sprite_index == sprite_get("nspecial_forwarddown") || sprite_index == sprite_get("nspecial_forwarddown_air")){
                //Down-Forwards
                var bomb_spr = draw_sprite_ext(bomb_spr, 0, x - 40*spr_dir, y - 15, bomb_sizevar*spr_dir*-1, bomb_sizevar, -50*spr_dir + 6*sin(state_timer/20), c_white, 1)
            }else if(sprite_index == sprite_get("nspecial_up") || sprite_index == sprite_get("nspecial_up_air")){
                //Up
                var bomb_spr = draw_sprite_ext(bomb_spr, 0, x + 10*spr_dir, y - 20, bomb_sizevar*spr_dir*-1, bomb_sizevar, -50*spr_dir + 6*sin(state_timer/20), c_white, 1)
            }else if(sprite_index == sprite_get("nspecial_down") || sprite_index == sprite_get("nspecial_down_air")){
                //Down
                var bomb_spr = draw_sprite_ext(bomb_spr, 0, x + 20*spr_dir, y - 10, bomb_sizevar*spr_dir*-1, bomb_sizevar, -60*spr_dir + 6*sin(state_timer/20), c_white, 1)
            }
        }
    }
    shader_end();
}

//Articles weird online 
set_article_color_slot( 0, col_r, col_g, col_b, 1 ); //Cloth
set_article_color_slot( 1, col_r_2, col_g_2, col_b_2, 1 ); //Liquid

//G7 Glitch effect by Giik

if (get_player_color(player) == 12 && random_func(4, 3, 1) == 0) {
	var fs = random_func(0, sprite_height-1, 1)
	draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*4)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)
}

if(attack == AT_DSPECIAL){
    if(super_armor == true){
        if(state_timer < 12){
            temp_thump = 1 - state_timer / 15
        }else{
            temp_thump = 0
        }
        shader_start()
        var watershield = draw_sprite_ext(sprite_get("watershield"), 1, x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), (1 + temp_thump) * spr_dir, 1 + temp_thump, 0 + 8*sin(state_timer/20), c_white, 1)
        shader_end();
    }
}

if(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND){
    if(state_timer < 12 && state_timer >= 8){
        temp_thump = 1 - state_timer / 15
    }else if(state_timer >= 12 && window < 3){
        temp_thump = 0
    }
    shader_start()
    if(state_timer >= 8){
	    if(spr_dir == 1){
	    	var fshield = draw_sprite_ext(sprite_get("fshield_right"), 1, x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), (1 + temp_thump) * spr_dir, 1 + temp_thump, 0 + 8*sin(state_timer/20), c_white, 1)
	    }else if(spr_dir == -1){
	    	var fshield = draw_sprite_ext(sprite_get("fshield_left"), 1, x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), (1 + temp_thump) * spr_dir, 1 + temp_thump, 0 + 8*sin(state_timer/20), c_white, 1)
	    }
    }
    if(window == 3){
    	if(temp_thump > -1){
    		temp_thump -= 0.2
    	}
    }
    shader_end();
}

if(attack == AT_EXTRA_1 && state == PS_ATTACK_GROUND){
    if(window == 3){
        temp_thump = 1 - state_timer / 200
    }else if(window == 4){
        temp_thump = 0
    }
    shader_start()
    if(window == 3 || window == 4){
	    if(spr_dir == 1){
	    	var fshield = draw_sprite_ext(sprite_get("fshield_right"), 1, x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), (1 + temp_thump) * spr_dir, 1 + temp_thump, 0 + 8*sin(state_timer/20), c_white, 1)
	    }else if(spr_dir == -1){
	    	var fshield = draw_sprite_ext(sprite_get("fshield_left"), 1, x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), (1 + temp_thump) * spr_dir, 1 + temp_thump, 0 + 8*sin(state_timer/20), c_white, 1)
	    }
    }
    if(window == 5){
    	if(temp_thump > -1){
    		temp_thump -= 0.2
    	}
    }
    shader_end();
}

//Torga Balling
if(not_moved){
	if(torga_balling){
		draw_debug_text(x - 30, y + 6, "BALLING!")
	}
}

if(attack == AT_TAUNT){
	if(window == 1){
		if(get_player_color(player) < 9 && !secret_skins){
			random_text = random_func_2(1, 9, true)
		}else{
			random_text = random_func_2(1, 3, true)
		}
	}
	if(window == 3){
		if(!torga_balling && !secret_skins){
			if(get_player_color(player) < 9 || get_player_color(player) == 13){
				if(random_text == 0){
					draw_debug_text(x - 36, y - 60, "Skill issue")
				}else if(random_text == 1){
					draw_debug_text(x - 36, y - 60, "Get bodied")
				}else if(random_text == 2){
					draw_debug_text(x - 18, y - 60, "Ratio")
				}else if(random_text == 3){
					draw_debug_text(x - 44, y - 60, "You got read")
				}else if(random_text == 4){
					draw_debug_text(x - 80, y - 60, "Nice parry, dumb dumb")
				}else if(random_text == 5){
					draw_debug_text(x - 44, y - 60, "I can't read")
				}else if(random_text == 6){
					draw_debug_text(x - 39, y - 60, "Mmm, book")
				}else if(random_text == 7){
					draw_debug_text(x - 98, y - 60, "Wow, that was... something")
				}else if(random_text == 8){
					draw_debug_text(x - 90, y - 60, "Try recovering next time")
				}else{
					draw_debug_text(x - 90, y - 60, "Try recovering next time")
				}
			}else if(get_player_color(player) == 9){
				if(random_text == 0){
					draw_debug_text(x - 26, y - 60, "*Ribbit*")
				}else if(random_text == 1){
					draw_debug_text(x - 68, y - 60, "You're gonna CROAK")
				}else if(random_text == 2){
					draw_debug_text(x - 100, y - 60, "Can't handle these paciFISTS")
				}else{
					draw_debug_text(x - 100, y - 60, "Can't handle these paciFISTS")
				}
			}else if(get_player_color(player) == 10){
				if(random_text == 0){
					draw_debug_text(x - 29, y - 60, "BLW WIN")
				}else if(random_text == 1){
					draw_debug_text(x - 84, y - 60, "Channel your inner otaku")
				}else if(random_text == 2){
					draw_debug_text(x - 46, y - 60, "Stay Winning!")
				}else{
					draw_debug_text(x - 46, y - 60, "Stay Winning!")
				}
			}else if(get_player_color(player) == 11){
				if(random_text == 0){
					draw_debug_text(x - 38, y - 60, "FLASH KICK!")
				}else if(random_text == 1){
					draw_debug_text(x - 42, y - 60, "SONIC BOOM!")
				}else if(random_text == 2){
					draw_debug_text(x - 64, y - 60, "No one is invincible")
				}else{
					draw_debug_text(x - 64, y - 60, "No one is invincible")
				}
			}else if(get_player_color(player) == 12){
				if(random_text == 0){
					draw_debug_text(x - 40, y - 60, "!sllab agroT")
				}else if(random_text == 1){
					draw_debug_text(x - 74, y - 60, "B -  BAA gtthjjj l AAA")
				}else if(random_text == 2){
					draw_debug_text(x - 92, y - 60, "PU PU V V L RI L GHT B A s")
				}else{
					draw_debug_text(x - 92, y - 60, "PU PU V V L RI L GHT B A s")
				}
			}
		}else if(torga_balling){
			draw_debug_text(x - 38, y - 60, "Torga Balls")
		}else if(secret_skins){
			if(random_text == 0){
				draw_debug_text(x - 44, y - 60, "Train harder")
			}else if(random_text == 1){
				draw_debug_text(x - 32, y - 60, "L, huge L")
			}else if(random_text == 2){
				draw_debug_text(x - 86, y - 60, "You serve zero purpose!")
			}else{
				draw_debug_text(x - 86, y - 60, "You serve zero purpose!")
			}
		}
	}
}

//All indicator code credit goes to RuberCuber from "Pit"

//indicator draw for bomb
shader_start();

if(instance_exists(waterBomb)){
	if(waterBomb.strong){
		draw_indicator('bomb', 0, 1, waterBomb.x, waterBomb.y, waterBomb.current_owner);
	}else{
		draw_indicator('bomb', 0, 0, waterBomb.x, waterBomb.y, waterBomb.current_owner);
	}
}
if(instance_exists(hurricane)){
	if(hurricane.bomb_strong && hurricane.holding_bomb){
		draw_indicator('bomb', 0, 1, hurricane.x, hurricane.y, hurricane.current_owner);
	}else if(hurricane.holding_bomb){
		draw_indicator('bomb', 0, 0, hurricane.x, hurricane.y, hurricane.current_owner);
	}else if(!hurricane.holding_bomb && hurricane.y >= -20){
		draw_indicator('hurricane', 0, 0, hurricane.x, hurricane.y, hurricane.current_owner);
	}
}


shader_end();

#define draw_indicator(type, angle, index, temp_x, temp_y, current_owner)
var offX = undefined;
var offY = undefined;
var offIndex = 0;
var offRot = 0;
var size = 0;

if (temp_y < view_get_yview() + 35) {
    offX = temp_x;
    offY = view_get_yview();
    offIndex = 0;
    offRot = 180;
    if(abs(1 / ((view_get_yview() - temp_y) / 32)) > 1){
    	size = 1
    }else{
    	size = lerp(0.5, 1, abs(1 / ((view_get_yview() - temp_y) / 32)))
    }
}

if (temp_y < view_get_yview() + 35) {
	if (offX != undefined) {
		draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY + (size * 35), size, size, offRot, get_player_hud_color(current_owner), 1);
		switch type {
			case 'bomb':
			draw_sprite_ext(sprite_get("article_offscreen"), index, offX, offY + (size * 35), size, size, 0, c_white, 1);
			break;
			case 'hurricane':
			draw_sprite_ext(sprite_get("hurricane_offscreen"), index, offX, offY + (size * 35), size, size, 0, c_white, 1);
			break;
		}
	}
}else{
	if (offX != undefined) {
		draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 1, 1, offRot, get_player_hud_color(current_owner), 1);
		switch type {
			case 'bomb':
			draw_sprite_ext(sprite_get("article_offscreen"), index, offX, offY, 1, 1, 0, c_white, 1);
			break;
			case 'hurricane':
			draw_sprite_ext(sprite_get("hurricane_offscreen"), index, offX, offY, 1, 1, 0, c_white, 1);
			break;
		}
	}
}

#define onscreen(x, y)
var offset = 50;
if (x > view_get_xview() - offset) && (x < view_get_xview() + view_get_wview() + offset) && (y < view_get_yview() + view_get_hview() + offset) && (y > view_get_yview() - offset) {
	return true;
} else {
	return false;
}