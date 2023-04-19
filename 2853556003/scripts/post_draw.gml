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
		if(!taunt_compat){
			if(get_player_color(player) < 9 && !secret_skins){
				random_text = random_func_2(1, 9, true)
			}else{
				random_text = random_func_2(1, 3, true)
			}
		}else{
			random_text = round(random_func_2(1, 1, false))
		}
	}
	
	if(window == 3){
		if(taunt_compat == false){
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
		}else{
			//Character Specific Taunt Lines
			if(enemy_url == 2853556003){ // Torga
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Anglara
				if(random_text == 0){
					draw_debug_text(x - 40, y - 60, "Smelly fish...")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Anyone up for some sushi?")
				}
			}else if(enemy_url == 2661141982){ //Arboris
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Sylvanos wanna-be...")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "What... are you?")
				}
			}else if(enemy_url == 2661141982){ //Bluey
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Is blue all you wear?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Bomb beats hammer")
				}
			}else if(enemy_url == 2661141982){ //BCM
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Where does your neck end?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Im a bit low on cash, can I get a loan?")
				}
			}else if(enemy_url == 2661141982){ //Callie
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Go back to your dating sim!")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Gotta read up on the different dating flowchart routes")
				}
			}else if(enemy_url == 2661141982){ //Candyman
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Shoulda never left lethal league...")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Half of your name is 'candy' but I have yet to see any, disappointing")
				}
			}else if(enemy_url == 2661141982){ //Crewmate
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "amoogus")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "soos")
				}
			}else if(enemy_url == 2661141982){ //Daora
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Get a new gimmick")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Is tackling people your hobby?")
				}
			}else if(enemy_url == 2661141982){ //Dazz
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Royal flush!")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "I call!")
				}
			}else if(enemy_url == 2661141982){ //Donyoku
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Gold sinks in water, yknow...")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "What prowess! You must teach me sometime!")
				}
			}else if(enemy_url == 2661141982){ //Fernet
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Punch all you want, ryu wanna-be")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Dodge her punch then counter-punch!")
				}
			}else if(enemy_url == 2661141982){ //Ducky
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "How does a duck have hair?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Quack quack")
				}
			}else if(enemy_url == 2661141982){ //Fridge
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "How do you fit a flag in there?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Got any food in there?")
				}
			}else if(enemy_url == 2661141982){ //Glare
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "I'll clip your wings!")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Lights and prisms, ay? How interesting...")
				}
			}else if(enemy_url == 2661141982){ //Hana
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "How the turn tables")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "I hope your clothes are water-proof")
				}
			}else if(enemy_url == 2661141982){ //Hat Kid
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Cool hat, I'll be taking that...")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "That umbrella wont save you from my storm!")
				}
			}else if(enemy_url == 2661141982){ //Heartbrake
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Someones gotta introduce you to Tinder, bro")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Cheer up, there's plenty of fish in the sea!")
				}
			}else if(enemy_url == 2661141982){ //Henry
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Must. Not. Get. Distracted.")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "That teleporter seems much more functional than I remember")
				}
			}else if(enemy_url == 2661141982){ //Jerma
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Currently peeping the horror")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Miniature fiendish arachnid")
				}
			}else if(enemy_url == 2661141982){ //Lode
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Archemedes, NO!")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "Nice ball, mine's cooler though")
				}
			}else if(enemy_url == 2661141982){ //Lukastar
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Slow and steady wins the race")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Mal
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Remember kids, don't do drugs")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Mav
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "FUNNE MONKY")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //NA
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "You Axolotl questions, my friend")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Nade
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Hide behind your cover, I dare you")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Nitori
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "How... How do you lift that?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Nova
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "2 Swords??? How is this allowed?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Po
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "So are you guys friends... orr????")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Reimu
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "I'm seeing a lot of yang without much yin")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Yuuto
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "A meteor, rocket ship, and flame vortex walk into a bar...")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Rokesha
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Mmmm, gun")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Ryken
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "This is a load of bull-.... shoot")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Sheftu
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "I'll take my medium-rare, hold the onions")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Suitcase
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "What gave you sentience, and why do you have a boot?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Goose
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Silly goose, trix are for kids")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Valley
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Your skin is green, you might want to get that checked out")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Wally
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Hey! Water balls were my thing first!")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Zeph
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Slow and steady wins the race")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
			}else if(enemy_url == 2661141982){ //Owen
				if(random_text == 0){
					draw_debug_text(x - 0, y - 60, "Who's gmod oc is this?")
				}else if(random_text == 1){
					draw_debug_text(x - 0, y - 60, "")
				}
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

/*
draw_debug_text(x - 30, y - 60, string(players_num))
draw_debug_text(x - 50, y - 80, string(enemy_url))
*/

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