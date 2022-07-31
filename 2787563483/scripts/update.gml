// with owner{
// 	if get_player_damage(player)
// }
with oPlayer{
	if player == other.player || ( other.kf_CPU_toggle == false && temp_level != 0 && player < 5) { //if owner or cpu
		if "init_var" not in self{
			init()
		}
	// if recheck_copy_ability{
	// 	abilityCheck()
		
	// }
		
		var calc_damage = get_player_damage(player)
		var diff_damage = kf_init_damage - calc_damage
		
		if !kf_done_in && state != PS_DEAD{
			if calc_damage != kf_init_damage{
				kf_health_points += diff_damage
				if diff_damage < 0{
				hurt_event()	
				}
				if diff_damage < -10{
					kf_hud_shake_timer = 10
				} else if diff_damage < -5{
					kf_hud_shake_timer = 5
				} else if (diff_damage < -1){
					kf_hud_shake_timer = 1
				} else if (diff_damage >= -1){
					kf_hud_shake_timer = 0
				}
				set_player_damage(player, kf_init_damage)
				//print_debug("a man")
			}
		}
		
		if x < left_wall{
			x = left_wall
			if state_cat == (SC_HITSTUN){
			vsp *= 0.9;
			hsp *= -0.9;
			// 	invincible = 1
			// 	invince_time = 6
				
			}
		} else if x > right_wall{
			x = right_wall
			if state_cat == (SC_HITSTUN){
				vsp *= 0.9;
				hsp *= -0.9;
			// 	invincible = 1
			// 	invince_time = 6
			}
		}
		

		if y < 0{
			y = 0
			if state_cat == (SC_HITSTUN){
				vsp *= -0.9;
				hsp *= 0.9;
				// invincible = 1
				// invince_time = 6
			}
		}
		
		if y > bottom_wall{
			kf_health_points = 0
			y -= 16
		}
		
		//noooo mooooreee corner infinites *vineboom*
		if x <= left_wall + 48 {
			if state_cat == (SC_HITSTUN) && hitstop == hitstop_full && (enemy_hitboxID.type == 1){
				var retribution = last_player
				with oPlayer{
					if player == retribution{
					//print_debug("argh")
					x += 12
					}
				}
			}
		} else if x >= right_wall - 48 {
			if state_cat == (SC_HITSTUN) && hitstop == hitstop_full && (enemy_hitboxID.type == 1){
				var retribution = last_player
				with oPlayer{
					if player == retribution{
					//print_debug("argho")
					x -= 12
					}
				}
			}
		}
		
		knockback_scaling = 0.75
		//damage_scaling = 1
		//can_tech = false
		//can_wall_tech = false
		//dumb_di_mult = 0.2
		//sdi_mult = 0.2
		
		if kf_hud_shake_timer > 0{
			hud_shake()
			kf_hud_shake_timer -= 1
		} else if kf_hud_shake_timer == 0 {
			kf_hud_shake_x = 0
			kf_hud_shake_y = 0
		}
		
		if got_hurt > 0{
			got_hurt--
		}
		
		// if scale_bonus > 0 {
		// 	scale_bonus -= 1
		// } 
		// if scale_bonus < 0 {
		// 	scale_bonus += 1
		// }
		
		if kf_health_points > kf_total_health{
			kf_health_points = kf_total_health
		}
		
		
		if kf_health_points < 0 {
			kf_health_points = 0
		}
		
		if state == PS_RESPAWN{
			set_player_damage(player, kf_init_damage)
			kf_health_points = kf_total_health
			hitstop = 0
		}
		if kf_health_points <= 0 && state != PS_DEAD{
			invincible = 1
			invince_time = 1
			if !kf_done_in{
				sound_play(other.hit_sfx)
				set_state( PS_TUMBLE )
				hitpause = 1
				hitstop = 40
				//scale_bonus = 0.5
				kf_hud_shake_timer = 20
				kf_done_in = true
				exit
			}
			if kf_done_in && !hitpause{
				invincible = 0
				invince_time = 0
				create_deathbox(x,y,120,120,player,true,0,10,2)
				//print_debug(player)
				sound_play(other.ko_sfx)
				kf_done_in = false
			}
		}
		
		// if state == PS_HITSTUN && !hitpause{
		// 	invincible = 1
		// 	invince_time = 2
		// }
		
		// if state == PS_HITSTUN_LAND{
		// 	invincible = 1
		// 	invince_time = 2
		// }
		
		
	}
}

#define init()
	left_wall = get_stage_data( SD_LEFT_BLASTZONE_X ) + get_stage_data( SD_SIDE_BLASTZONE ) + 16
	right_wall = get_stage_data( SD_RIGHT_BLASTZONE_X ) - get_stage_data( SD_SIDE_BLASTZONE ) - 16
	//top_wall = get_stage_data( SD_TOP_BLASTZONE_Y ) + get_stage_data( SD_TOP_BLASTZONE ) + 16
	//turns out 0 will do
	bottom_wall = get_stage_data( SD_BOTTOM_BLASTZONE_Y ) - 8
	if get_stage_data(SD_ID) == 22{ // Training Room.
		right_wall = get_stage_data( SD_RIGHT_BLASTZONE_X )
	} else if get_stage_data(SD_ID) == 0 { //playtest room
		left_wall = 248 //0
		right_wall = 724 //960
		bottom_wall = 516 //508
	}
	
    kf_done_in = false
    
    //calc_damage = kf_init_damage
    if "kf_hud_name" not in self{
    	kf_hud_name = get_char_info( player, INFO_STR_NAME)
    }
    
    if "kf_hud_offset" not in self{
    	kf_hud_offset = 0
    }

    
	abilityCheck()
	//recheck_copy_ability = false
	
	// var col_R = get_color_profile_slot_r( get_player_color(player), 0);
	// var col_G = get_color_profile_slot_g( get_player_color(player), 0);
	// var col_B = get_color_profile_slot_b( get_player_color(player), 0);

	// kf_hud_color = make_color_rgb(col_r, col_g, col_b);
	
	var default_health_value = 100
    var stocks_convert = get_match_setting( SET_STOCKS )
    var stocks_number = get_player_stocks( player )
    
    //starting healthy
    kf_total_health = default_health_value*stocks_number
 
    //adds health based on how many players are missing from the match
    //... it just adds 10 health in 3 players and 20 health in 2 player
    // a little pointless but it replicates Kirby Fighters 2 if enabled.
    
    //...repurposed into hud calculations
    
    //if !get_match_setting(SET_PRACTICE){
    	multiplayer_num = 0
    	hud_number = 0
	    for (var i = 1; i < 5; i++){
	        if is_player_on( i ){
	        	multiplayer_num++
	        	if i <= player{
	        		hud_number++
				}
			}
	    }
    	//kf_total_health +=  ( ( (4 - multiplayer_num) * 0.2) *default_health_value )
    //}
   
    //stocks greater than 3 add 100 bonus health for each stock
    //stocks less than 3 remove 50 health for each. (handicap?)
    
    // if stocks_convert > 3 {
    // 	kf_total_health += 100*(stocks_number - 3 )
    // } else if stocks_convert < 3 {
    // 	kf_total_health -= 50*( 3 - stocks_number )
    // }
    
    /// that was probably a mistake
    
       //allows for custom bonus health for characters to set (or handicap health if you wish)
    //(the latter probably isn't a good idea to make higher than the minimum amount of health.)
    if "kf_health_modify" in self{
    kf_total_health += kf_health_modify
    }
    
    //after calculations finish
    kf_health_points = kf_total_health
    
    //lo-fi damage to set the player to constantly
    kf_init_damage = 50
    
	kf_hud_shake_timer = 0
	kf_hud_shake_x = 0
	kf_hud_shake_y = 0
	
	got_hurt = 0
	
	set_player_stocks( player, 1)
	
	//scale_bonus = 0
	
//print_debug(string(owner.player) + " / " + owner.kf_hud_name)
	
	if !shield_down{
		other.kf_CPU_toggle = false
	}

	init_var = true

#define abilityCheck()


if "copy_ability_id" not in self{
	switch(url){
		case 0: //Literally just the easter egg Sandbert
			copy_ability_id = 0 //Normal
			break;
		case CH_ZETTERBURN:
			copy_ability_id = 3 //Fire
			//Too bad Burning hasn't reappeared with a modern icon yet or I would use it. But Fire's adaquate.
			break;
		case CH_ORCANE:
			copy_ability_id = 50 //Water
			break;
		case CH_WRASTOR:
			copy_ability_id = 11 //Tornado
			if get_player_color(player) == 15{
				kf_hud_name = "Bradshaw"
			}
			break;	
		case CH_KRAGG:
			copy_ability_id = 13 //Stone
			kf_health_modify = 20
			break;
		case CH_FORSBURN:
			copy_ability_id = 29 //Ninja
			break;
		case CH_MAYPUL:
			copy_ability_id = 48 //Leaf
			//Maybe Whip would fit? But its not elemental.
			if get_player_color(player) == 15{
				kf_hud_name = "Ragnir"
				copy_ability_id = 3 //Fire
			}
			break;
		case CH_ABSA:
			copy_ability_id = 2 //Spark
			break;	
		case CH_ETALUS:
			copy_ability_id = 18 //Ice
			kf_health_modify = 30
			break;	
		case CH_ORI:
			copy_ability_id = 1 //Beam
			break;
		case CH_RANNO:
			copy_ability_id = 58 //Poison
			break;
		case CH_CLAIREN:
			copy_ability_id = 30 //Plasma
			//Do I use Sword, or do I use Plasma? Decisions, decisions...
			break;
		case CH_SYLVANOS:
			copy_ability_id = 48 //Leaf
			kf_health_modify = 10
			//If Animal had a modern icon it would be considerable, but even then Leaf fits more. If only there was a Flower ability...
			break;
		case CH_ELLIANA:
			copy_ability_id = 25 //Bomb
			kf_health_modify = 15
			if get_player_color(player) == 12{
				kf_hud_name = "Ayala"
			}
			break;
			//On one hand, Missile. On the other hand, Bomb. How am I holding these in my hands?
		case CH_SHOVEL_KNIGHT:
			copy_ability_id = 40 //Smash Bros.
			//...I wonder I should have used Sword instead of Smash Bros.?
			break;
		case CH_MOLLO:
			copy_ability_id = 25 //Bomb
			//kf_hud_name = "Mollo"
			//MFW the Workshop 4's INFO_STR_NAMEs return "Unknown"
			//This is truly an intruder from another dimension moment
			
			//as of 3/16/2022: its fixed lol
			break;
		case CH_HODAN:
			copy_ability_id = 60 //Artist
			//kf_hud_name = "Hodan"
			//Funny monkey. Lovers Direct 2021 reference.
			break;
		case CH_POMME:
			copy_ability_id = 14 //Mike
			//kf_hud_name = "Pomme"
			break;
		case CH_OLYMPIA:
			copy_ability_id = 26 //Fighter
			//kf_hud_name = "Olympia"
			break;
		default:
			copy_ability_id = 0
			if "kf_custom_icon" not in self{
				switch(kf_hud_name){
					case "Kirby":
					case "64 Kirby":
						kf_hud_name = "Kirby"
						copy_ability_id = 0 //Normal
						break;
					case "Bandana Dee": 
					case "Bandana Waddle Dee":
					case "B. W. Dee":
						kf_hud_name = "Bandana Waddle Dee"
						copy_ability_id = 51 //Spear
						kf_custom_icon = other.dream_friend_1
						break;
					case "Dedede": 
					case "King Dedede":
						kf_hud_name = "King Dedede"
						copy_ability_id = 20 //Hammer
						kf_custom_icon = other.dream_friend_2
						break;
					case "Meta Knight": 
						copy_ability_id = 6 //Sword
						kf_custom_icon = other.dream_friend_3
						break;
					case "Sleep Kirby":
						copy_ability_id = 16
						kf_hud_name = "Sleep"
						break;
					//abilities/helpers:
					case "Waddle Doo":
						copy_ability_id = 1
						break;
					case "Burning Leo":
						copy_ability_id = 3
						break;
					case "Sir Kibble":
						copy_ability_id = 4
						break;
					case "Blade Knight":
						copy_ability_id = 6
						break;
					case "Parasol Waddle Dee":
						copy_ability_id = 10
						break;
					case "Wheelie":
						copy_ability_id = 12
						break;
					case "Rocky":
						copy_ability_id = 13
						break;
					case "Chilly":
					//case "Mr. Frosty":
						copy_ability_id = 18
						break;
					case "Bonkers":
						copy_ability_id = 20
						break;
					case "Poppy Bros. Jr.":
						copy_ability_id = 25
						break;
					case "Knuckle Joe":
						copy_ability_id = 26
						break;
					case "Simmirror":
						copy_ability_id = 27
						break;
					case "Chef Kawasaki":
						copy_ability_id = 28
						break;
					case "Bio Spark":
						copy_ability_id = 29
						break;
					case "Plasma Wisp":
					case "Plugg":
						copy_ability_id = 30
						break;
					case "Gim":
						copy_ability_id = 31
						break;
					case "Buggzy":
						copy_ability_id = 32
						break;
					case "Birdon":
						copy_ability_id = 33
						break;
					case "Tac":
						copy_ability_id = 34
						break;
					case "Capsule J":
					case "Capsule J2":
						copy_ability_id = 35
						break;
					case "Broom Hatter":
						copy_ability_id = 37
						break;
					case "Wester":
						copy_ability_id = 49
						break;
					case "Driblee":
						copy_ability_id = 50
						break;
					case "Beetley":
						copy_ability_id = 53
						break;
					case "NESP":
						copy_ability_id = 57
						break;
					case "Vividria":
						copy_ability_id = 60
						break;
					case "Como":
						copy_ability_id = 61
						break;
					case "Jammerjab":
						copy_ability_id = 62
						break;
					// case "Master Hand":
					// 	copy_ability_id = 40
					// 	break;
					default:
						kf_custom_icon = other.kf_custom_icon
						break;
				}
			}
			break;
		}
}
	
//recheck_copy_ability = false
#define hurt_event()
//fr it hurts.
got_hurt = 7
#define hud_shake()
if get_local_setting(SET_HUD_SHAKE) == 1{
var random_time = get_gameplay_time() mod 5
kf_hud_shake_x = (random_func(random_time, kf_hud_shake_timer*2 + 1, true) - kf_hud_shake_timer)*2
kf_hud_shake_y = (random_func(random_time + 5, kf_hud_shake_timer*2 + 1, true) - kf_hud_shake_timer)*2
//print_debug(kf_hud_shake_y)
}