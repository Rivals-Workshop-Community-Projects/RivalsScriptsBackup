//

//print(fps)
//player hud
var numPlayers = instance_number(oPlayer);
var hudLength = 108;
var hudHeight = 38;
var hudX = 0;
var hudY = 496;
with oPlayer {
	if custom_clone || clone numPlayers--;
}

with oPlayer {
	if !custom_clone && !clone {
	    var hudCol = get_player_hud_color(player);
	    var hudName = get_char_info(player, INFO_STR_NAME);
	    var hp_cur = hp_current;
	    var hp_tot = hp_max;
	    
	    var hudR = color_get_red(hudCol)
	    var hudG = color_get_green(hudCol)
	    var hudB = color_get_blue(hudCol)
	    
	    var hudOnline = [[66,229,100],[132,106,233],[238,28,143],[220,140,0]]
	    
	    var isOnline = false;
	    var onlineCol = undefined;
	    for (i = 0; i < array_length_1d(hudOnline); i++) {
	    	if hudR == hudOnline[i][0] && hudG == hudOnline[i][1] && hudB == hudOnline[i][2] {
	    		isOnline = true;
	    		switch i {
	    			case 0: onlineCol = 'green' break;
	    			case 1: onlineCol = 'purple' break;
	    			case 2: onlineCol = 'magenta' break;
	    			case 3: onlineCol = 'yellow' break;
	    		}
	    	}
	    }
	    
	    var p1_1 = 336 + 119;
	    
	    var p2_1 = 336;
	    var p2_2 = 336 + 238; //574
	    
	    var p3_1 = 217;
	    var p3_2 = 217 + 238;
	    var p3_3 = 217 + 238*2;
	    
	    var p4_1 = 98;
	    var p4_2 = 98 + 238;
	    var p4_3 = 98 + 238*2;
	    var p4_4 = 98 + 238*3;
	    
	    if (numPlayers == 1) { //practice mode only
	    	hudX = p1_1;
		} else if (numPlayers == 2) {
			if isOnline {
				if onlineCol = 'green' {
					hudX = p2_1;
				} else {
					hudX = p2_2;
				}
			} else {
				if (player == 1) || (player == 2 && !(is_player_on(1))) || (player == 3 && !(is_player_on(1)) && !(is_player_on(2))) {
					hudX = p2_1;
				} else {
					hudX = p2_2;
				}
			}
		} else if (numPlayers == 3) {
			if isOnline {
				if onlineCol = 'green' {
					hudX = p3_1;
				} else if onlineCol = 'purple' {
					hudX = p3_2;
				} else {
					hudX = p3_3;
				}
			} else {
				if (player == 1) || (player == 2 && !(is_player_on(1))) {
					hudX = p3_1
				} else if (player == 2) || (player == 3 && !(is_player_on(1))) || (player == 3 && !(is_player_on(2))) {
					hudX = p3_2
				} else if (player == 3) || (player == 4) {
					hudX = p3_3
				}
			}
		} else if (numPlayers == 4) {
			if isOnline {
				if onlineCol = 'green' {
					hudX = p4_1;
				} else if onlineCol = 'purple' {
					hudX = p4_2;
				} else if onlineCol = 'magenta' {
					hudX = p4_3;
				} else {
					hudX = p4_4;
				}
			} else {
				hudX = 98 + 238*(player - 1);
			}
		}
		
		var hpFrac = hp_cur/hp_tot;
		if !is_dead {
			if !(url == 1933111975 && codec) {
				var hudName = get_char_info(player, INFO_STR_NAME);
				if (string_width(hudName) > 60) {
					while (string_width(hudName) > 60) {
						hudName = string_delete(hudName, string_length(hudName), 1);
					}
					
					hudName = hudName + "..."
				}
				with other {
					if phase != 0 {
						draw_rectangle_color(hudX + 140, hudY - 2, hudX - 86, hudY - 34, c_black,c_black,c_black,c_black,false);
						draw_text_transformed_color(hudX + 20, hudY - 26, "HP: " + string(hp_cur) + "/" + string(hp_tot), 1.5, 1.5, 0, c_white,c_white,c_white,c_white, 1);
						draw_text_transformed_color(hudX - 85, hudY - 26, hudName, 1.5, 1.5, 0, c_white,c_white,c_white,c_white, 1);
					}
				}
			}
			with other {
				draw_rectangle_color(hudX, hudY, hudX + hudLength, hudY + hudHeight, hudCol,hudCol,hudCol,hudCol,false); //default bg
				draw_rectangle_color(hudX, hudY, hudX + (hudLength*hpFrac), hudY + hudHeight, c_yellow,c_yellow,c_yellow,c_yellow,false); //yellow hp
			}
		} else {
			with other {
				draw_rectangle_color(hudX - 90, hudY - 20, hudX + hudLength + 30, hudY + hudHeight + 5, c_black,c_black,c_black,c_black,false);
			}
		}
	}
}

//intro white
if phase == 0 && state == 0 && phase_timer <= 300 {
    var alpha = 1 - (clamp(timer - 240, 0, 60)/60);
    draw_text_transformed_color(0, -500, "I", 200, 500, 0, c_white, c_white, c_white, c_white, alpha);
}

//neutral ending white/black
if mtt_dead {
	var alpha = (clamp(dead_timer, 0, 15)/15);
    draw_text_transformed_color(0, -500, "I", 200, 500, 0, c_white, c_white, c_white, c_white, alpha);
}

if phase == 0 && state == 3 {
    if state_timer < 30 {
        var alpha = clamp(state_timer/20, 0, 1);
        draw_text_transformed_color(0, -500, "I", 200, 500, 0, c_white, c_white, c_white, c_white, alpha);
    } else if state_timer < 40 {
        var alpha = 1 - clamp((state_timer-40)/10, 0, 1);
        draw_text_transformed_color(0, -500, "I", 200, 500, 0, c_white, c_white, c_white, c_white, alpha);
    }
}

if phase == 2 && state == 1 && (attack_index == 13 || attack_index == 14) {
    if state_timer < 400 {
        var frame = 0;
    } else {
        var frame = 1;
    }
    if state_timer mod 50 < 25 {
        draw_sprite_ext(sprite_get("rec_rew"), frame, room_width/2, room_height/2, 2, 2, 0, c_white, 1);
    }
}

//draw damage meter
if mtt_take_damage {
    var meter_width = 500;
    var meter_height = 25;
    var hp_width = ease_sineOut(hp_old, hp_current, clamp(mtt_damage_timer, 0, 50), 50)*meter_width/hp_total;
    
    draw_rectangle_color(230, 280 - meter_height/2, 230 + meter_width, 280 + meter_height/2, c_gray,c_gray,c_gray,c_gray, false);
    draw_rectangle_color(230, 280 - meter_height/2, 230 + hp_width, 280 + meter_height/2, c_lime,c_lime,c_lime,c_lime, false);
    
    
    var length = string_length(string(mtt_damage));
    var scale = 3;
    for (var i = 0; i < length; i++) {
        draw_sprite_ext(sprite_get("numbers"), real(string_char_at(string(mtt_damage), i+1)), 480 + 90*i - (30*scale)*length/2, 180, scale, scale, 0, c_red, 1);
    }
}

//cover up hud for everyone dead
if phase == 3 {
	//draw_rectangle_color(0, 472, 2000, 553, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(0, 0, 2000, 2000, c_black, c_black, c_black, c_black, false);
	//draw hearts on top of hud
	with obj_stage_article {
		if get_article_script(id) == 2 && (type == "soul_broken" || type == "soul_shard" || type == "game_over") {
			with other {
				draw_sprite_ext(other.sprite_index, other.image_index, other.x - 192, other.y - 178, other.image_xscale, other.image_yscale, other.image_angle, other.image_blend, other.image_alpha);
			}
		}
	}
}

if displayStats { //end stats
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	
	var textx = 90;
	var texty = 320;
	
	var textScale = 0.75;
	
	for (var p = 0; p < 4; p++) {
		for (var i = 0; i < 5; i++) {
			draw_text_transformed_colour(textx + (p*220), texty + (i*19), endText[p,i], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
		}
	}
	
	/*
	if (survivalMode) {
		var survivalAlpha = ease_linear(0, 1, player_id.endTimer, 60);
		var survivalXMod = 0;
		if (player_id.expertMode) {
			survivalXMod = 160;
		}
		draw_text_transformed_colour(x - 410 + survivalXMod, y + 260, "Survival Mode", 1, 1, 0, c_lime,c_lime,c_lime,c_lime,survivalAlpha);
	}
	
	if (player_id.expertMode) {
		var expertAlpha = ease_linear(0, 1, player_id.endTimer, 60);
		draw_text_transformed_colour(x - 410, y + 260, "Expert Mode", 1, 1, 0, c_red,c_red,c_red,c_red,expertAlpha);
	}
	*/
	/*
	if (state == 10) { //win
		if (!player_id.survivalMode) && (!player_id.expertMode) { //standard mode, get code for survival mode
			var codeAlpha = ease_linear(0, 1, player_id.endTimer, 60);
			draw_text_transformed_colour(x - 410, y + 260, "Survival Mode code: ", 1, 1, 0, c_green,c_green,c_green,c_green,codeAlpha);
			draw_text_transformed_colour(x - 410 + 238, y + 260, player_id.survivalModeStr, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow,codeAlpha);
		}
	}
	*/
}

//press to continue text
if (endTimer > 2) {
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_center);
	
	var alpha = clamp((endTimer-2)/60, 0, 1);
	if (endTimer > 30) {
		alpha = alpha + (dcos((endTimer-30)*1.5) mod 360)/2 - 0.5;
	}
	
	draw_text_transformed_colour(view_get_wview()/2, 480, "Press attack/special to continue", 1.5, 1.5, 0, c_white,c_white,c_white,c_white,alpha);
}

#define draw_rectangle_width(x1, y1, x2, y2, w, c)
var x1, y1, x2, y2, w;
x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];
w = argument[4];
c = argument[5];
draw_rectangle_color(x1+w/2, y1+w/2, x1-w/2, y2-w/2, c,c,c,c, false);
draw_rectangle_color(x2+w/2, y1+w/2, x2-w/2, y2-w/2, c,c,c,c, false);
draw_rectangle_color(x1+w/2, y1+w/2, x2-w/2, y1-w/2, c,c,c,c, false);
draw_rectangle_color(x1+w/2, y2+w/2, x2-w/2, y2-w/2, c,c,c,c, false);