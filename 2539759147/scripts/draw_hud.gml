
////draw_debug_text( 480, 220, string(tradKilled) )
////draw_debug_text( 480, 240, string(tradReset) )




//DinoBros, I Love Army LGA WOOOO!
////draw_debug_text( 480, 220, string(tradMusic) )

/*
//draw_debug_text( 480, 220, string(tradBG) )
//draw_debug_text( 480, 240, string(tradGround) )

with oPlayer {
	if "tradBG" in self {
	//draw_debug_text( 520, 220, string(tradBG) )
	}
}
if tradBG != -4 {
draw_sprite_ext(tradBG, 1, room_width /2, room_height / 2, 2, 2, 0, c_white, 1);
}
*/
/* Debug Stuff
//draw_debug_text( 480, 220, string(tradStocks[0]) )
//draw_debug_text( 480, 240, string(tradStocks[1]) )
//draw_debug_text( 480, 260, string(tradStocks[2]) )
//draw_debug_text( 480, 280, string(tradStocks[3]) )

//draw_debug_text( 480, 320, string(shouldEndMatch) )


//draw_debug_text( 400, 200, "Should the game end? (1 = Yes, Else = No): " + string(shouldEndMatch) )
//draw_debug_text( 400, 240, "Team: " + string(tradTeam) )
//draw_debug_text( 400, 280, "Team Stocks: " + string(tradTeamStocks) )
//draw_debug_text( 400, 320, "Room Reset: " + string(tradReset) )
	
	//draw_debug_text( 64, 240, "|") 
	//draw_debug_text( 896, 240, "|") 
	

with oPlayer {
	////draw_debug_text( 400 + player * 40, 260 + player * 20, string(wallSplat) )
	////draw_debug_text( 400 + player * 40, 300 + player * 20, string(hitstun_full) )
	////draw_debug_text( 400 + player * 40, 340 + player * 20, string(hitstun) )
	////draw_debug_text( 400 + player * 40, 220 + player * 20, string(superTrue) )
	////draw_debug_text( 400 + player * 40, 280 + player * 20, string(superMove) )
	////draw_debug_text( 400 + player * 40, 320 + player * 20, string(id) )
}
*/


with oPlayer {
	if !custom_clone  && !clone{
var playerC = player
if "temp_level" in self {
playerC = 0
}

//Start of Drawing Health
if (is_aether_stage()) == false {
	if player = 1 {
		with other {
			rectDraw(42, 12, 41.25 + (tradHealthD[0])*1.275, 48, c_red);//decay
			if tradHealth[0] >= 300 {
				rectDraw(42, 12, 41.25 + (tradHealth[0])*1.275, 48, c_green);
			} else{
				if tradHealth[0] > 199 {
					rectDraw(42, 12, 41.25 + (tradHealth[0])*1.275, 48, c_lime);
				} else {
					if tradHealth[0] > 99 {
					rectDraw(42, 12, 41.25 + (tradHealth[0])*1.275, 48, c_yellow);
					} else {
					rectDraw(42, 12, 41.25 + (tradHealth[0])*1.275, 48, c_orange);
					}
				}
			}
			
			rectDraw(66, 37, 299, 47, c_gray);//x2 = 100*2.34 + 65.25
			if tradMeter[0] >= 100 {
			rectDraw(66, 37, 65.25 + tradMeter[0] * 2.34, 47, c_purple);
			} else {
			rectDraw(66, 37, 65.25 + tradMeter[0] * 2.34, 47, c_white);
			}
			draw_sprite_ext(sprite_get("life"), playerC, 172, 32, 1, 1, 0, c_white, 1);//hud sprite
			//draw_debug_text( 42, 26, string(tradHealth[0]) )
			//draw_debug_text( 42, 38, string(tradMeter[0]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 20, 48, 1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 5, 18, 2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
	}
	
	if player = 2 {
		with other {
			rectDraw(918, 12, 917 - (tradHealthD[1])*1.275, 48, c_red);//decay
			if tradHealth[1] >= 300 {
				rectDraw(918, 12, 917 - (tradHealth[1])*1.275, 48, c_green);
			} else {
				if tradHealth[1] > 199 {
				rectDraw(918, 12, 917 - (tradHealth[1])*1.275, 48, c_lime);
				} else {
					if tradHealth[1] > 99 {
					rectDraw(918, 12, 917 - (tradHealth[1])*1.275, 48, c_yellow);
					} else {
					rectDraw(918, 12, 917 - (tradHealth[1])*1.275, 48, c_orange);
					}
				}
			}
			rectDraw(894, 37, 659, 47, c_gray);
			if tradMeter[1] = 100 {
			rectDraw(894, 37, 893.25 - tradMeter[1] * 2.34, 47, c_purple);
			} else {
			rectDraw(894, 37, 893.25 - tradMeter[1] * 2.34, 47, c_white);
			}
			draw_sprite_ext(sprite_get("life"), playerC, 788, 32, -1, 1, 0, c_white, 1);
			//draw_debug_text( 896, 26, string(tradHealth[1]) )
			//draw_debug_text( 896, 38, string(tradMeter[1]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 940, 48, -1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 955, 18, -2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
		
	}
	
	if player = 3 {
		with other {
			rectDraw(42, 52, 41.25 + tradHealthD[2]*1.275, 74, c_red);
			if tradHealth[2] >= 300 {
				rectDraw(42, 52, 41.25 + tradHealth[2]*1.275, 74, c_green);
			} else {
				if tradHealth[2] > 199 {
				rectDraw(42, 52, 41.25 + tradHealth[2]*1.275, 74, c_lime);
				} else {
					if tradHealth[2] > 99 {
					rectDraw(42, 52, 41.25 + tradHealth[2]*1.275, 74, c_yellow);
					} else {
					rectDraw(42, 52, 41.25 + tradHealth[2]*1.275, 74, c_orange);
					}
				}
			}
			
			rectDraw(66, 63, 299, 73, c_gray);
			if tradMeter[2] = 100 {
			rectDraw(66, 63, 65.25 + tradMeter[2] * 2.34, 73, c_purple);
			} else {
			rectDraw(66, 63, 65.25 + tradMeter[2] * 2.34, 73, c_white);
			}
			draw_sprite_ext(sprite_get("life2"), playerC, 172, 70, 1, 1, 0, c_white, 1);
			//draw_debug_text( 42, 51, string(tradHealth[2]) )
			//draw_debug_text( 42, 63, string(tradMeter[2]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 20, 86, 1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 5, 56, 2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
	}
	
	if player = 4 {
		with other {
			rectDraw(918, 52, 917 - tradHealthD[3]*1.275, 74, c_red);
			if tradHealth[3] >= 300 {
				rectDraw(918, 52, 917 - tradHealth[3]*1.275, 74, c_green);
			} else {
				if tradHealth[3] > 199 {
				rectDraw(918, 52, 917 - tradHealth[3]*1.275, 74, c_lime);
				} else {
					if tradHealth[3] > 99 {
					rectDraw(918, 52, 917 - tradHealth[3]*1.275, 74, c_yellow);
					} else {
					rectDraw(918, 52, 917 - tradHealth[3]*1.275, 74, c_orange);
					}
				}
			}
			rectDraw(894, 64, 659, 74, c_gray);
			if tradMeter[3] = 100 {
			rectDraw(894, 64, 893.25 - tradMeter[3] * 2.34, 74, c_purple);
			} else {
			rectDraw(894, 64, 893.25 - tradMeter[3] * 2.34, 74, c_white);
			}
			draw_sprite_ext(sprite_get("life2"), playerC, 788, 70, -1, 1, 0, c_white, 1);
			//draw_debug_text( 896, 51, string(tradHealth[3]) )
			//draw_debug_text( 896, 63, string(tradMeter[3]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 940, 86, -1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 955, 56, -2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
	}
}
if (is_aether_stage()) == true {
	if player = 1 {
		with other {
			rectDraw(42, 12, 41.25 + (tradHealthD[0])*1.9, 48, c_red);//decay
			if tradHealth[0] >= 200 {
				rectDraw(42, 12, 41.25 + (tradHealth[0])*1.9, 48, c_green);
			} else{
				if tradHealth[0] > 133 {
					rectDraw(42, 12, 41.25 + (tradHealth[0])*1.9, 48, c_lime);
				} else {
					if tradHealth[0] > 66 {
					rectDraw(42, 12, 41.25 + (tradHealth[0])*1.9, 48, c_yellow);
					} else {
					rectDraw(42, 12, 41.25 + (tradHealth[0])*1.9, 48, c_orange);
					}
				}
			}
			
			rectDraw(66, 37, 299, 47, c_gray);
			if tradMeter[0] >= 100 {
			rectDraw(66, 37, 65.25 + tradMeter[0] * 2.34, 47, c_purple);
			} else {
			rectDraw(66, 37, 65.25 + tradMeter[0] * 2.34, 47, c_white);
			}
			draw_sprite_ext(sprite_get("life"), playerC, 172, 32, 1, 1, 0, c_white, 1);//hud sprite
			//draw_debug_text( 42, 26, string(tradHealth[0]) )
			//draw_debug_text( 42, 38, string(tradMeter[0]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 20, 48, 1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 5, 18, 2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
	}
	
	if player = 2 {
		with other {
			rectDraw(918, 12, 917 - (tradHealthD[1])*1.9, 48, c_red);//decay
			if tradHealth[1] >= 200 {
				rectDraw(918, 12, 917 - (tradHealth[1])*1.9, 48, c_green);
			} else {
				if tradHealth[1] > 133 {
				rectDraw(918, 12, 917 - (tradHealth[1])*1.9, 48, c_lime);
				} else {
					if tradHealth[1] > 66 {
					rectDraw(918, 12, 917 - (tradHealth[1])*1.9, 48, c_yellow);
					} else {
					rectDraw(918, 12, 917 - (tradHealth[1])*1.9, 48, c_orange);
					}
				}
			}
			rectDraw(894, 37, 659, 47, c_gray);
			if tradMeter[1] = 100 {
			rectDraw(894, 37, 893.25 - tradMeter[1] * 2.34, 47, c_purple);
			} else {
			rectDraw(894, 37, 893.25 - tradMeter[1] * 2.34, 47, c_white);
			}
			draw_sprite_ext(sprite_get("life"), playerC, 788, 32, -1, 1, 0, c_white, 1);
			//draw_debug_text( 896, 26, string(tradHealth[1]) )
			//draw_debug_text( 896, 38, string(tradMeter[1]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 940, 48, -1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 955, 18, -2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
	}
	
	if player = 3 {
		with other {
			rectDraw(42, 52, 41.25 + tradHealthD[2]*1.9, 74, c_red);//decay
			if tradHealth[2] >= 200 {
				rectDraw(42, 52, 41.25 + tradHealth[2]*1.9, 74, c_green);
			} else {
				if tradHealth[2] > 133 {
				rectDraw(42, 52, 41.25 + tradHealth[2]*1.9, 74, c_lime);
				} else {
					if tradHealth[2] > 66 {
					rectDraw(42, 52, 41.25 + tradHealth[2]*1.9, 74, c_yellow);
					} else {
					rectDraw(42, 52, 41.25 + tradHealth[2]*1.9, 74, c_orange);
					}
				}
			}
			
			rectDraw(66, 63, 299, 73, c_gray);
			if tradMeter[2] = 100 {
			rectDraw(66, 63, 65.25 + tradMeter[2] * 2.34, 73, c_purple);
			} else {
			rectDraw(66, 63, 65.25 + tradMeter[2] * 2.34, 73, c_white);
			}
			draw_sprite_ext(sprite_get("life2"), playerC, 172, 70, 1, 1, 0, c_white, 1);
			//draw_debug_text( 42, 64, string(tradHealth[2]) )
			//draw_debug_text( 42, 76, string(tradMeter[2]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 20, 86, 1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 5, 56, 2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
	}
	
	if player = 4 {
		with other {
			rectDraw(918, 52, 917 - tradHealthD[3]*1.9, 74, c_red);//decay
			if tradHealth[3] >= 200 {
				rectDraw(918, 52, 917 - tradHealth[3]*1.9, 74, c_green);
			} else {
				if tradHealth[3] > 133 {
				rectDraw(918, 52, 917 - tradHealth[3]*1.9, 74, c_lime);
				} else {
					if tradHealth[3] > 66 {
					rectDraw(918, 52, 917 - tradHealth[3]*1.9, 74, c_yellow);
					} else {
					rectDraw(918, 52, 917 - tradHealth[3]*1.9, 74, c_orange);
					}
				}
			}
			rectDraw(894, 64, 659, 74, c_gray);
			if tradMeter[3] = 100 {
			rectDraw(894, 64, 893.25 - tradMeter[3] * 2.34, 74, c_purple);
			} else {
			rectDraw(894, 64, 893.25 - tradMeter[3] * 2.34, 74, c_white);
			}
			draw_sprite_ext(sprite_get("life2"), playerC, 788, 70, -1, 1, 0, c_white, 1);
			//draw_debug_text( 896, 64, string(tradHealth[3]) )
			//draw_debug_text( 896, 76, string(tradMeter[3]) )
		}
		shader_start();
			if baseHud != -4 {
				draw_sprite_ext(other.baseHudIcon, baseHud, 940, 86, -1, 1, 0, c_white, 1);//hud sprite
			} else {
				draw_sprite_ext(get_char_info(player, INFO_ICON), 0, 955, 56, -2, 2, 0, c_white, 1);//hud sprite
			}
		shader_end();
	}
}
	}
}
//End of Drawing Health



//Start Super Portrait
if superPortraitTimer > 0 {
with oPlayer {
	if !custom_clone  && !clone{
		if player =  other.superUser {
			shader_start();
			draw_sprite_ext(other.superPortrait, 0, (room_width / 2) + random_func(1,60,true) - 205*other.superPside - (other.superPortraitTimer), 
			(room_height / 2) + random_func(2,60,true) - 205 + floor(other.superPortraitTimer/2), (1 + (1.4- other.superPortraitTimer/20))*other.superPside, 1 + (1.4- other.superPortraitTimer/20), 0, c_white, other.superPortraitTimer/30); 
			shader_end();
		}
	}
}

superPortraitTimer -= 1 
} else {

}
//End Super Portrait










//Passive Display
with oPlayer {
	if !custom_clone  && !clone{
		if get_gameplay_time() % 3 < 1 {
		if pogArmor > 0 {
			draw_sprite_ext(other.imgArmor, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true), 1, 1, 0, c_white, pogArmor / 900 + .25 ); 
		}
		if pogShock > 0 {
			draw_sprite_ext(other.imgShock, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , (floor(pogShock % 100 / 99) * 3) + 1, (floor(pogShock % 100 / 99) * 3) + 1, 0, c_white, pogShock / 900 + .25 ); 
		}
		if pogSticky > 0 {
			draw_sprite_ext(other.imgSticky, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogSticky / 900 + .25 ); 
		}
		if pogBlaze > 0 {
			draw_sprite_ext(other.imgBlaze, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogBlaze / 300 + .25 ); 
		}


		if pogAqua > 0 {
			draw_sprite_ext(other.imgAqua, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogAqua / 500 + .25 ); 
		}
		if pogIce > 0 {
			draw_sprite_ext(other.imgIce, 0, x - 24 - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogIce / 600 + .25 ); 
		}
		if pogGust > 0 {
			draw_sprite_ext(other.imgGust, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogGust / 900 + .25 ); 
		}
		if pogHole > 0 {
			draw_sprite_ext(other.imgHole, 0, x - 26 - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogHole / 600 + .5 ); 
		}
		if pogNinja > 0 {
			draw_sprite_ext(other.imgNinja, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogNinja / 30 + .25 ); 
		}
		if pogFun > 0 {
			draw_sprite_ext(other.imgFun, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogFun / 900 + .25 ); 
		}
		if pogHeal > 0 {
			draw_sprite_ext(other.imgHeal, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogHeal / 800 + .25 ); 
		}
		if pogDash > 0 {
			draw_sprite_ext(other.imgDash, 0, x - 24  - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogDash / 800 + .25 ); 
		}
		if pogMash > 0 {
			draw_sprite_ext(other.imgMash, 0, x - 4 + random_func(1,8,true) , y - 84 + random_func(2,8,true) , 1, 1, 0, c_white, pogMash / 1200 + .25 ); 
		}
	   }
	    if pogSmoke > 0 {
			draw_sprite_ext(other.imgSmoke, 0, (room_width / 2), 384, 1, 1, 0, c_white, 1); 
			draw_sprite_ext(other.imgSmoke, 0, (room_width / 2) - 20 + random_func(1,40,true), 384 - (get_gameplay_time()%15)*2, -1 - (get_gameplay_time()%15)/30 , 1 + (get_gameplay_time()%15)/30 , 0, c_white, (get_gameplay_time()%15)/30 ); 
		}
		
	}
}

//camera controls
if oPlayer.id.y >= player.y{
	with oPlayer {
	    other.follow_player = id; //
	 //   print("huh")
	}
}

if oPlayer.id.y <= player.y{
	with player{
		other.follow_player = id;
	//	print("wow")
	}
}
if player.y <= 180 or oPlayer.y <= 180{
		set_view_position(x+464, (lerp(200, follow_player.y+224 - 80, 1)));
	//	print("neat")
	}

//counter and StH visuals

if get_gameplay_time() %2 == 0 {    
draw_sprite_ext(sprite_get("CBreak_font"), 0, anox-110 - 5 + random_func(1,10,true), anoy - 160 - 5 + random_func(2,10,true) + CBreak, 1, 1, 0, c_white, CBreak/25); 
}
draw_sprite_ext(sprite_get("CBreak_font"), 0, anox-110, anoy - 160 + CBreak , 1, 1, 0, c_white, CBreak/50 - 0.5); 




if get_gameplay_time() %2 == 0 {    
draw_sprite_ext(sprite_get("counter_font"), 0, anox-110 - 5 + random_func(1,10,true), anoy - 160 - 5 + random_func(2,10,true) + counterA , 1, 1, 0, c_white, counterA/25); 
}
draw_sprite_ext(sprite_get("counter_font"), 0, anox-110, anoy - 160 + counterA , 1, 1, 0, c_white, counterA/50 - 0.5); 




#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
