if metal_count < 0{
    metal_count = 0;
}
if metal_count > 200{
    metal_count = 200;
}

// print(hit_player_obj(url))
//picking up metal boxes
with (asset_get("obj_article2")){
	if (player_id.url == other.url && place_meeting(x, y - 12, other.id) && ammostate == (2 or 3 or free == false)){
		// other.vsp = -10;
		if ammo_type != 4{
			if other.metal_count < 200{
				other.metal_count = other.metal_count + ammo_amount;
				despawn = true;
				if(get_synced_var (player) == 2){
					sound_play(sound_get("cd_sun"));
				} else{
					sound_play(sound_get("ammo_pickup"));
				}
				if ammo_type < 3{//Ammo Boxes
					spawn_hit_fx( x+14, y, 144);
					//scrapped idea for a poppup of how much metal you spend/collec
					// ammo_poppup = create_hitbox(AT_NSPECIAL, 3, x, y+64);
					// ammo_poppup.spr_dir = 1;
					// ammo_poppup.image_index = ammo_type;
				}else{//Building Scrap
					spawn_hit_fx( x+36, y, 144);
				}
			} else if ammo_type < 3 && despawn_timer < 2{
				vsp = -7;
				sound_play(asset_get("sfx_waveland_fors"));
				if despawn_timer < 2{
					despawn_timer ++
				}
			}
		} else{ //bread for engi
			spawn_hit_fx( x, y, 15);
			despawn = true;
			sound_play(asset_get("sfx_crunch"));
			sound_play(asset_get("mfx_xp"));
			sound_play(sound_get("sentry_search"));
			take_damage( other.player, -1, -2 );
		}
	}
	if ammo_type == 4 && despawn != true{//Bread for other players
		if (place_meeting(x, y, oPlayer) && ammostate == (2 or 3 or free == false)){
			if (abs(oPlayer.x) > abs(x + 20)) or (abs(oPlayer.x) < abs(x - 20)) or (abs(oPlayer.y) > abs(y + 20)) or (abs(oPlayer.y) < abs(y - 20)) && oPlayer.url != player_id.url{
				if oPlayer.player != other.player{
					take_damage( oPlayer.player, -1, -2 );
				} else{
					for (i = 1; i <= 4; i++){
						print(i)
						if is_player_on(i) == true && oPlayer.player != i{
							take_damage(i, -1, -2 );
							break;
						}
					}
				}
				despawn = true;
				spawn_hit_fx( x, y, 15);
				sound_play(asset_get("sfx_crunch"));
				sound_play(asset_get("mfx_xp"));
			}
		}
	}
}

//wrangler boolean
if sentry_alive == true{
    if sentry.building_state == 1 or sentry.building_state == 3 or sentry.building_state == 4{
        wrangle_ready = true;
    } else{
        wrangle_ready = false;
    }
    if (sentry.building_state == 3) && (state != PS_ATTACK_GROUND or wrangling == false){
        sentry.building_state = 1;
        sentry.life_timer = 0;
        sound_play(sound_get("sentry_search"), false, noone, 0.4);
    }
}else{
    wrangle_ready = false;
}
//makes pda dissapear when you're not taunting
if pda == true && state != PS_ATTACK_GROUND{
    pda = false;
}

//Dspecial cooldown
if rat_alive = true{
    if stupid_rat.tool_state > 3 or stupid_rat.death_timer >= 300{
        rat_alive = false;
    }
}


//Roll code
if state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD{
    if state_timer == 1{
        // sound_play(sound_get("tp_ready"));
    }
    if state_timer <= 3{
        hsp = 0;
    }
    if state_timer > 3 and state_timer < 7{
        hsp = -32 * spr_dir;
    }
    if state_timer >= 7{
        hsp = 0;
    }
}else {
    // sound_stop(sound_get("tp_ready"));
}

if (state != PS_ATTACK_AIR) and (state != PS_ATTACK_GROUND){ //when the sentry is shooting, it will not count that as attacking with the wrench
	if (wrench != false){
		wrench = false;
	}
	sound_stop(sound_get("eurika_charge"));
}

if state == PS_RESPAWN{
	if(get_synced_var (player) == 1){
		if state_timer == 110{
			snd_rng = random_func(0, 8, true);
			switch snd_rng{
			case 0:
				voice_id = "v_doneplayingames";
				voice_volume = 1.5;
				voice_play();
			break;
			case 1:
				voice_id = "v_coward";
				voice_volume = 2;
				voice_play();
			break;
			case 2:
				voice_id = "v_darn";
				voice_volume = 1.5;
				voice_play();
			break;
			case 3:
				voice_id = "v_awhell";
				voice_volume = 1.5;
				voice_play();
			break;
			case 4:
				voice_id = "v_awshucks";
				voice_volume = 1.5;
				voice_play();
			break;
			case 5:
				voice_id = "v_beingdead";
				voice_volume = 1.5;
				voice_play();
			break;
			case 6:
				voice_id = "v_daggitnabbit";
				voice_volume = 1.5;
				voice_play();
			break;
			default:
				voice_id = "v_gnightireen";
				voice_volume = 1.5;
				voice_play();
			}
		}
	}
    respawn_platform_spawn = true;
} else{
    respawn_platform_spawn = false;
}

if state != PS_ATTACK_AIR && state != PS_LANDING_LAG{
    oh_crap_we_dont_have_enough_metal_go_back = false;
}

if state != PS_ATTACK_GROUND {
    sound_stop(sound_get("jackhammer_loop"));
    sound_stop(sound_get("pt_dashloop"));
    sound_stop(sound_get("megaman_chargeloop"));
	sound_stop(sound_get("megaman_charge"));
    jackhammer_loop = 2;
    fstrong_anim_timer = 0;
}



// if sentry_alive = true{
// 	if instance_exists(sentry){
// 		sentry_alive = false;
// 	}
// }
// if disp_alive = true{
// 	if !instance_exists(disp){
// 		disp_alive = false;
// 	}
// }
// if tp_alive = true{
// 	if !instance_exists(tp){
// 		tp_alive = false;
// 	}
// }
// if rat_alive = true{
// 	if !instance_exists(stupid_rat){
// 		rat_alive = false;
// 	}
// }

// Training mode metal restore toggle
if(get_training_cpu_action() != CPU_FIGHT){
	if(state == PS_PARRY && special_pressed && metal_count != 200){
		metal_count = 200;
		sound_play(sound_get("ammo_pickup"));
	}
}

// if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR{
// 	// print("howdy")
// }

//Voiceline code beyond this point -----------------------------------
if(state == PS_HITSTUN){
	if(state_timer == 1){
		if(get_synced_var (player) == 1){
			if sprite_index == sprite_get("hurt") || sprite_index == sprite_get("hurtground"){
				snd_rng = random_func(0, 16, true);
				switch snd_rng{
				case 0:
					voice_id = "v_hurt1";
					voice_volume = 1.5;
					voice_play();
				break;
				case 1:
					voice_id = "v_hurt2";
					voice_volume = 2;
					voice_play();
				break;
				case 2:
					voice_id = "v_hurt3";
					voice_volume = 1.5;
					voice_play();
				break;
				case 3:
					voice_id = "v_hurt4";
					voice_volume = 1.5;
					voice_play();
				break
				case 4:
					voice_id = "v_hurt5";
					voice_volume = 1.5;
					voice_play();
				break;
				case 5:
					voice_id = "v_hurt6";
					voice_volume = 1.5;
					voice_play();
				break;
				case 6:
					voice_id = "v_hurt7";
					voice_volume = 1.5;
					voice_play();
				break;
				case 7:
					voice_id = "v_hurt8";
					voice_volume = 1.5;
					voice_play();
				break;
				}
				
			}else if sprite_index == sprite_get("bighurt") || sprite_index == sprite_get("uphurt") || sprite_index == sprite_get("downhurt") || sprite_index == sprite_get("spinhurt"){
				snd_rng = random_func(0, 11, true);
				switch snd_rng{
				case 0:
					voice_id = "v_bighurt1";
					voice_volume = 1.7;
					voice_play();
				break;
				case 1:
					voice_id = "v_bighurt2";
					voice_volume = 2;
					voice_play();
				break;
				case 2:
					voice_id = "v_bighurt3";
					voice_volume = 1.7;
					voice_play();
				break;
				case 3:
					voice_id = "v_bighurt4";
					voice_volume = 2.2;
					voice_play();
				break;
				case 4:
					voice_id = "v_bighurt5";
					voice_volume = 1.4;
					voice_play();
				break;
				case 5:
					voice_id = "v_help";
					voice_volume = 1;
					voice_play();
				break;
				}
			}
		}else if(get_synced_var (player) == 3){
			snd_rng = random_func(0, 12, true);
			if (snd_rng == 0) {
				voice_id = "pt_ow1";
				voice_volume = 1.5;
				voice_play();
			}else if (snd_rng == 1) {
				voice_id = "pt_ow2";
				voice_volume = 1.5;
				voice_play();
			}else if (snd_rng == 3) {
				voice_id = "pt_distress";
				voice_volume = 2;
				voice_play();
			}
		}
	}
}

if(burned == true){
    if(burn_timer == 5){
        if(get_synced_var (player) == 1){
            snd_rng = random_func(0, 2, true);
            if (snd_rng == 0) {
                voice_id = "v_burn1";
                voice_volume = 1.5;
                voice_play();
            }else if (snd_rng == 1) {
                voice_id = "v_burn2";
                voice_volume = 2;
                voice_play();
            }
        }
    }
}

//intro
if (get_gameplay_time() == 16 + player){
	if(get_synced_var (player) == 1){
		if get_player_color(player) == 24{
			voice_id = "v_engineergaming";
			voice_volume = 3;
			voice_play();
			return;
		} else{
			} with (oPlayer) {
				if (id != other.id) {
					snd_rng = random_func(0, 4, true);
					if url = other.url or url = 2113500915{//self, og engi
						voice_id = "v_engispy";
						voice_volume = 1.5;
						voice_play();
					} else if url == 3294133431 or url == 2820380997 or url == 3161437965{ //Spy, Roe, Chara
						if (snd_rng <= 1) {
							other.voice_id = "v_spyaintonourside";
							other.voice_volume = 1.5;
							other.voice_play();
						}
						if (snd_rng >= 2) {
							other.voice_id = "v_heyboysspy";
							other.voice_volume = 2;
							other.voice_play();
						}
					}else if url == 2273636433{ //Dr Mario
							other.voice_id = "v_overheresawbones";
							other.voice_volume = 2;
							other.voice_play();
					}else{
						// snd_rng = random_func(0, 4, true);
						if (snd_rng == 0) {
							other.voice_id = "v_startpraying";
							other.voice_volume = 1.5;
							other.voice_play();
						}
						if (snd_rng == 1) {
							other.voice_id = "v_getallong";
							other.voice_volume = 2;
							other.voice_play();
						}
						if (snd_rng == 2) {
							other.voice_id = "v_realbadday";
							other.voice_volume = 2;
							other.voice_play();
						}
						if (snd_rng == 3) {
							other.voice_id = "v_engihere2";
							other.voice_volume = 2;
							other.voice_play();
						}
					}
				}
			}
        }
    if(get_synced_var (player) == 2){
        voice_id = "cd_yelling";
        voice_volume = 2.5;
        voice_play();
    }
}
//muting engineer
if (get_synced_var (player) > 0) && (get_gameplay_time() < 100){
	with (oPlayer) {
		if (id != other.id) {
			if taunt_pressed == true{
				with other{
					voice_id = "v_nope";
					voice_volume = 2;
					voice_play();
					engi_muted = true;
				}
			}
		}
	}
}
//on-kill lines

if (get_synced_var (player) == 1){
	with (oPlayer) {
		if (id != other.id) {
			if ((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1) {
			
			// 1877384987 - Scout (Sandbert)
			// 2817605804 - Jerma985
			// 2285717462 - Sonic (Muno)
			// 3039831352 - Sonic (Bar-Kun)
			// 2990315396 - Noise
			
			// 2855638778 - Soldier (Daniel)
			// 2840091641 - Soldier (squaggs)
			// 2035357584 - Nade
			
			// 2192126112 - Demopan
			
			//  - Regigigas
			//  2814747446 - Peat
			//  2811386719 - Wally

			// other.self - Engineer (ditto)
			// 2113500915 - Engineer (old)

			// 2273636433 - Dr. Melee Mario
			
			// 2820380997 - Roekoko
			// 3161437965 - Chara
			
			// 2005036466 - Penny
			
			
			//if (url = other.url){
			//print("howdy partner")	
			//}
				switch url{
				case "2005036466": //penny
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 4, true);
							switch snd_rng{
							case 0:
								voice_id = "v_seehowbad";
								voice_volume = 1.5;
								voice_play();
							break;
							case 1:
								voice_id = "v_drafted";
								voice_volume = 1.5;
								voice_play();
							break;
							case 2:
								voice_id = "v_eyepatch";
								voice_volume = 1.5;
								voice_play();
							break;
							default:
								voice_id = "v_snake";
								voice_volume = 1.5;
								voice_play();
							}
						} 
					}
				break;
				case "3294133431": //Spy
				case "2820380997": //Roekoko
				case "3161437965": //Chara
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 3, true);
							switch snd_rng{
							case 0:
								voice_id = "v_itaintgettinharder";
								voice_volume = 1.5;
								voice_play();
							break;
							case 1:
								voice_id = "v_backstabbers";
								voice_volume = 1.5;
								voice_play();
							break;
							default:
								voice_id = "v_snake";
								voice_volume = 1.5;
								voice_play();
							}
						} 
					}
				break;
				case "1877384987": //scout sandbert
				case "2817605804": //Jerma985
				case "2285717462": //Sonic(muno)
				case "3039831352": //Sonic(bar-kun)
				case "2990315396": //The Noise
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 3, true);
							switch snd_rng{
							case 0:
								voice_id = "v_fasterthanthat";
								voice_volume = 1.5;
								voice_play();
							break;
							case 1:
								voice_id = "v_molasses";
								voice_volume = 1.5;
								voice_play();
							break;
							default:
								voice_id = "v_ainttoofast";
								voice_volume = 1.5;
								voice_play();
							}
						}
					}
				break;
				case "2855638778": //Soldier(danielone)
				case "2840091641": //Soldier(squaggs)
				case "2035357584": //Nade
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 3, true);
							switch snd_rng{
							case 0:
								voice_id = "v_drafted";
								voice_volume = 1.5;
								voice_play();
							break;
							case 1:
								voice_id = "v_liftyourlid";
								voice_volume = 1.5;
								voice_play();
							break;
							default:
								voice_id = "v_eaglescry";
								voice_volume = 1.5;
								voice_play();
							}
						}
					}
				break;
				// case other.url: //self
				case "2113500915": //og engi
				case "3302238950": //Alexis
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 3, true);
							switch snd_rng{
							case 0:
								voice_id = "v_aintdoinitright";
								voice_volume = 1.5;
								voice_play();
							break;
							case 1:
								voice_id = "v_realtexan";
								voice_volume = 1.5;
								voice_play();
							break;
							default:
								voice_id = "v_hardhatnocattle";
								voice_volume = 1.5;
								voice_play();
							}
						} 
					}
				break;
				case "2192126112"://demopan
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 2, true);
							switch snd_rng{
							case 0:
								voice_id = "v_eyepatch";
								voice_volume = 1.5;
								voice_play();
							break;
							default:
								voice_id = "v_drunkonthe";
								voice_volume = 1.5;
								voice_play();
							}
						} 
					}
				break;
				case "2811386719": //Wally
				case "2814747446": //Peat
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 7, true);
							if (snd_rng <= 3) {
								voice_id = "v_fatboy";
								voice_volume = 1.5;
								voice_play();
							}
							switch snd_rng{
							case 4:
								voice_id = "v_ugly";
								voice_volume = 1.5;
								voice_play();
							break;
							case 5:
								voice_id = "v_dumb";
								voice_volume = 1.5;
								voice_play();
							break;
							case 6:
								voice_id = "v_bettersidesofbeef";
								voice_volume = 1.5;
								voice_play();
							}
						} 
					}
				break;
				case "2273636433": //Dr Melee Mario
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 3, true);
							switch snd_rng{
							case 0:
								voice_id = "v_poultice";
								voice_volume = 1.5;
								voice_play();
							break;
							case 1:
								voice_id = "v_patience";
								voice_volume = 2;
								voice_play();
							break;
							default:
								voice_id = "v_doctorschool";
								voice_volume = 1.5;
								voice_play();
							}
						} 
					}
				break;
				default:
				print(url)
					with other{
						if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self{
							snd_rng = random_func(0, 6, true);
							switch snd_rng{
							case 0:
								voice_id = "v_seehowbad";
								voice_volume = 1.5;
								voice_play();
							break;
							case 1:
								voice_id = "v_donttestmymetal";
								voice_volume = 1.5;
								voice_play();
							break;
							case 2:
								voice_id = "v_battlecry2";
								voice_volume = 1.5;
								voice_play();
							break;
							case 3:
								voice_id = "v_wouldyoulook";
								voice_volume = 1.5;
								voice_play();
							break
							case 4:
								voice_id = "v_bacon";
								voice_volume = 1.5;
								voice_play();
							break;
							default:
								voice_id = "v_ugly";
								voice_volume = 1;
								voice_play();
							}
						}
					}
				}
			}
		}
	}
}
if hit_player_obj < 0{
	hit_player_obj = 2;
}
if (get_synced_var (player) == 2){
	set_victory_theme(sound_get("victory_cd"));
	with (oPlayer) {
		if (id != other.id) {
			with other{
				if (hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self) {
					snd_rng = random_func(0, 7, true);
					switch snd_rng{
					case 0:
						voice_id = "cd_gibberish1";
						voice_volume = 2;
						voice_play();
					break;
					case 1:
						voice_id = "cd_gibberish2";
						voice_volume = 2;
						voice_play();
					break;
					case 2:
						voice_id = "cd_gibberish3";
						voice_volume = 3;
						voice_play();
					break;
					case 3:
						voice_id = "cd_gibberish4";
						voice_volume = 3;
						voice_play();
					break;
					case 4:
						voice_id = "cd_yelling";
						voice_volume = 3;
						voice_play();
					break;
					case 5:
						voice_id = "cd_yelling2";
						voice_volume = 3;
						voice_play();
					break;
					default:
						voice_id = "cd_wabbywabbo";
						voice_volume = 3;
						voice_play();
					}
				}
			}
		}
	}
}
if (get_synced_var (player) == 3){
	set_victory_theme(sound_get("victory_pt"));
	with (oPlayer) {
		if (id != other.id) {
			with other{
				if (hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self) {
					snd_rng = random_func(0, 8, true);
					switch snd_rng{
					case 0:
						voice_id = "pt_italian1";
						voice_volume = 2;
						voice_play();
					break;
					case 1:
						voice_id = "pt_italian2";
						voice_volume = 2;
						voice_play();
					break;
					case 2:
						voice_id = "pt_italian3";
						voice_volume = 3;
						voice_play();
					break;
					case 3:
						voice_id = "pt_italian4";
						voice_volume = 3;
						voice_play();
					break;
					case 4:
						voice_id = "pt_italian5";
						voice_volume = 3;
						voice_play();
					break;
					case 5:
						voice_id = "pt_italian6";
						voice_volume = 3;
						voice_play();
					break;
					case 6:
						voice_id = "pt_italian7";
						voice_volume = 3;
						voice_play();
					break;
					default:
						voice_id = "pt_italian8";
						voice_volume = 3;
						voice_play();
					}
				}
			}
		}
	}
}

// with (hit_fx_obj) if (hit_fx == donk) uses_shader = false;


if (get_synced_var (player) == 3){
	jump_sound = sound_get("pt_jump");
	djump_sound = sound_get("pt_jump");
	walljump_sound = sound_get("pt_jump");
}
//RGB/Engineer Gaming alt code

//(I didn't know how to make an RGB alt) Oh Egads, my alt is ruined! But what if...
//I were to borrow Jerma's code and make it look like my own programming.
//Oh ho ho, delightfully devilish TinMines.

//"TinMines, why is there inconsistent grammar in your code?" Oh that's not inconsistent...
//it's an inside joke. Pattented grammar changes, old group chat classic.
if get_player_color(player) = 24 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(0, 255, 0); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 24, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 24, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

init_shader();
}

#define voice_play() //voiceline code is heavily based off of Roboshyguy's Jerma985 mod, I was given permission to use his code as a base.
if engi_muted == false{
	if(!dont_shutup){
		sound_stop(voice_playing_sound);
	}
	voice_playing_sound = sound_play(sound_get(voice_id), false, noone, voice_volume);
	dont_shutup = false;
}