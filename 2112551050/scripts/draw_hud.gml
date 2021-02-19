
//draw_set_font(sansFont);


if (blackScreen) {
	draw_rectangle_color(0, 0, 2000, 2000, c_black, c_black, c_black, c_black, false);
}

if (everyoneAlivent) || (state == 10) {
	draw_rectangle_color(0, 472, 2000, 553, c_black, c_black, c_black, c_black, false);
}

//player hud
if !blackScreen && (state != 10) {
	with oPlayer {
		var hudLength = 108;
		var hudHeight = 39;
		
		var hudX = 0;
		var hudY = 496;
		var numPlayers = instance_number(oPlayer)
		if (numPlayers == 2) {
			if (player == 1) || (player == 2 && !(is_player_on(1))) || (player == 3 && !(is_player_on(1)) && !(is_player_on(2))) {
				hudX = 336;
			} else {
				hudX = 336 + 238; //574
			}
		} else if (numPlayers == 3) {
			if (player == 1) || (player == 2 && !(is_player_on(1))) {
				hudX = 217;
			} else if (player == 2) || (player == 3 && !(is_player_on(1))) || (player == 3 && !(is_player_on(2))) {
				hudX = 217 + 238;
			} else if (player == 3) || (player == 4) {
				hudX = 217 + 238*2;
			}
		} else if (numPlayers == 4) {
			hudX = 98 + 238*(player - 1);
		}
		
		
		var hpFrac = playerHP/playerHPMax;
		var krFrac = (playerHP - KR)/playerHPMax;
		if (cpuId == undefined) && (!deathAnim) {
			var hudColour = get_player_hud_color(player);
			var hudName = get_char_info(player, INFO_STR_NAME);
			if (string_width(hudName) > 60) {
				while (string_width(hudName) > 60) {
					hudName = string_delete(hudName, string_length(hudName), 1);
				}
				
				hudName = hudName + "..."
			}
			with other {
				draw_rectangle_color(hudX, hudY, hudX + hudLength, hudY + hudHeight, hudColour,hudColour,hudColour,hudColour,false); //red bg
				draw_rectangle_color(hudX, hudY, hudX + (hudLength*hpFrac), hudY + hudHeight, c_yellow,c_yellow,c_yellow,c_yellow,false); //yellow hp
				if (other.KR > 0) {
					draw_rectangle_color(hudX + (hudLength*krFrac) - 1, hudY, hudX + (hudLength*hpFrac), hudY + hudHeight, c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,false); //purple KR
				}
				draw_rectangle_color(hudX + 140, hudY - 2, hudX - 86, hudY - 34, c_black,c_black,c_black,c_black,false);
				draw_text_transformed_color(hudX + 20, hudY - 26, "HP: " + string(other.playerHP) + "/" + string(other.playerHPMax), 1.5, 1.5, 0, c_white,c_white,c_white,c_white, 1);
				draw_text_transformed_color(hudX - 85, hudY - 26, hudName, 1.5, 1.5, 0, c_white,c_white,c_white,c_white, 1);
			}
		} else {
			with other {
				draw_rectangle_color(hudX - 90, hudY - 20, hudX + hudLength + 30, hudY + hudHeight + 5, c_black,c_black,c_black,c_black,false);
			}
		}
	}
}


//press to continue text
if (endTimer > 60) {
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_center);
	
	var alpha = clamp((endTimer-60)/60, 0, 1);
	if (endTimer > 120) {
		alpha = alpha + (dcos((endTimer-120)*1.5) mod 360)/2 - 0.5;
	}
	
	draw_text_transformed_colour(view_get_wview()/2, 480, "Press attack/special to continue", 1.5, 1.5, 0, c_white,c_white,c_white,c_white,alpha);
}

if (drawTextbox) {
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	
	var xx = view_get_wview()/2;
	var yy = 30;
	
	var textx = xx - 160;
	var texty = 60;
	
	var facex = xx - 330;
	var facey = 145;
	
	var textScale = 2;
	
	draw_sprite(sprite_get("sans_textbox"), 0, xx, yy);
	
	draw_text_transformed_colour(textx - 60, texty, "*", textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	
	draw_text_transformed_colour(textx, texty, currentText[0], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	draw_text_transformed_colour(textx, texty + 60, currentText[1], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	draw_text_transformed_colour(textx, texty + 120, currentText[2], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	
	draw_sprite_ext(sprite_get("sans_face"), currentText[3], facex, facey, 2, 2, 0, c_white, 1);
}

if (expertMode) {
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_center);
	
	var expertAlpha = 0;
	if (timer < 100) {
		expertAlpha = ease_sineOut(0, 1, timer, 100);
	} else if (timer < 200) {
		expertAlpha = ease_sineIn(1, 0, timer-100, 100);
	}
	
	if (timer < 400) {
		draw_text_transformed_colour(view_get_wview()/2, 170, "I", 500, 8, 0, c_black,c_black,c_black,c_black,expertAlpha);
		draw_text_transformed_colour(view_get_wview()/2, 200, "Expert Mode", 5, 5, 0, c_red,c_red,c_red,c_red,expertAlpha);
	}
}

if (survivalMode) {
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_center);
	
	var survivalAlpha = 0;
	if (survivalTimer < 50) {
		survivalAlpha = ease_sineOut(0, 1, survivalTimer, 50);
	} else if (survivalTimer < 100) {
		survivalAlpha = ease_sineIn(1, 0, survivalTimer-50, 50);
	}
	
	if (survivalTimer < 200) {
		draw_text_transformed_colour(view_get_wview()/2, 170, "I", 500, 8, 0, c_black,c_black,c_black,c_black,survivalAlpha);
		draw_text_transformed_colour(view_get_wview()/2, 200, "Survival Mode", 5, 5, 0, c_lime,c_lime,c_lime,c_lime,survivalAlpha);
	}
}