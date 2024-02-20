//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//wrench stuff
if (attack == AT_NSPECIAL){
	wrench = true;
	// if tp_alive == true and tp.tp_hit == 2{
	// 	set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
	// }
}else{
	wrench = false;
}

//testing metal spawn code, delete this later
// if (attack == AT_UTILT){
// 	if (window == 2 && window_timer == 1){
// 		s_ammo_drop = instance_create(x+20,y-100,"obj_article2");
// 		s_ammo_drop.hsp = spr_dir * 5 + hsp;
// 		s_ammo_drop.ammo_direction = spr_dir;
// 		s_ammo_drop.ammo_amount = 25;
// 	}
// }


//building spawn code
if (attack == AT_TAUNT){
	if (window < 6){
		pda = true;
	}
	if (window == 5 && window_timer == 4){
		window_timer = 1;
		if right_down == true or right_stick_down == true or (attack_down == true && shield_down == true){ //teleporter spawn
			if (tp_alive == 0){
				if metal_count >= 50{
					metal_count = metal_count - 50;
					tp = instance_create(x+20*spr_dir,y-100,"obj_article1");
					tp.spr_dir = spr_dir;
					tp.building_type = 0;
					tp_alive = 1;
					if get_synced_var (player) <= 1{
						voice_id = "v_tpgoingup";
						voice_volume = 2;
						voice_play();
					} else if get_synced_var (player) == 2{
						voice_id = "cd_gibberish4";
						voice_volume = 3;
						voice_play();
					} else if get_synced_var (player) == 3{
						voice_id = "pt_italian7";
						voice_volume = 3;
						voice_play();
					}
					window = 6;
					window_timer = 1;
				}
			} else{
				with(tp){
					building_health = 500;
					life_timer = 0;
					sound_play(sound_get("sticky_det"));
				}
				window = 6;
				window_timer = 1;
			}
		}
		
		else if left_down == true or left_stick_down == true or (attack_down == true && jump_down == true){ //dispenser
			if (disp_alive == 0){
				if metal_count >= 100{
					metal_count = metal_count - 100;
					disp = instance_create(x+20*spr_dir,y-100,"obj_article1");
					disp.spr_dir = spr_dir * -1;
					disp.building_type = 1;
					disp_alive = 1;
					if get_synced_var (player) <= 1{
						voice_id = "v_dispenserup";
						voice_volume = 2;
						voice_play();
					} else if get_synced_var (player) == 2{
						voice_id = "cd_gibberish2";
						voice_volume = 3;
						voice_play();
					} else if get_synced_var (player) == 3{
						voice_id = "pt_italian8";
						voice_volume = 3;
						voice_play();
					}
					window = 6;
					window_timer = 1;
				}
				
			} else{
				with(disp){
					building_health = 500;
					life_timer = 0;
					sound_play(sound_get("sticky_det"));
				}
				window = 6;
				window_timer = 1;
			}
		}
		
		else if up_down == true or up_stick_down == true or (attack_down == true && special_down == true){
			if (sentry_alive == 0){
				if metal_count >= 125{
					metal_count = metal_count - 125;
					sentry = instance_create(x+20*spr_dir,y-100,"obj_article1");
					sentry.spr_dir = spr_dir;
					sentry.building_type = 2;
					sentry_alive = 1;
					if get_synced_var (player) <= 1{
						voice_id = "v_sentrygoinup";
						voice_volume = 2;
						voice_play();
					} else if get_synced_var (player) == 2{
						voice_id = "cd_wabbywabbo";
						voice_volume = 3;
						voice_play();
					} else if get_synced_var (player) == 3{
						voice_id = "pt_italian6";
						voice_volume = 5;
						voice_play();
					}
					window = 6;
					window_timer = 1;
				}
				
			} else{
				with(sentry){
					building_health = 500;
					life_timer = 0;
					sound_play(sound_get("sticky_det"));
					window = 6;
					window_timer = 1;
				}
				window = 6;
				window_timer = 1;
			}
		}
		else if down_down == true or down_stick_down == true or taunt_down{//cancel
			window = 9;
			window_timer = 1;
		}
	}
} else{
	pda = false;
}


//uspecial
if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if (window == 1 && window_timer == 1){
		if get_synced_var (player) == 3{
			sound_play(sound_get("pt_uspec_charge"), false, noone, 3);
		} else{
			sound_play(sound_get("eurika_charge"));
		}
	}
	if (window >= 1) and (window <= 3){
		vsp = vsp / 1.3;
	}	
	if (window == 5 && window_timer == 3){
		if tp_alive == 1{
			with(tp){
				if (building_state == 2){//makes sure that the teleporter is ready
					building_state = 3;
					life_timer = 0;
				}else{//no teleporting for you, only bounce
					player_id.vsp = -13;
					sound_stop(sound_get("eurika_charge"));
					sound_stop(sound_get("pt_uspec_charge"));
					sound_play(sound_get("bottle_hit"));
					sound_play(sound_get("shortcircuit_fizzle"));
					player_id.state = (PS_PRATFALL);
				}
			}
		} else{//no teleporting for you, only bounce
			vsp = -13;
			sound_stop(sound_get("eurika_charge"));
			sound_stop(sound_get("pt_uspec_charge"));
			sound_play(sound_get("bottle_hit"));
			sound_play(sound_get("shortcircuit_fizzle"));
			set_state(PS_PRATFALL);
		}
	} 
	if (window == 5 && window_timer == 14){//actually teleporting
		if get_synced_var (player) == 3{
			sound_play(sound_get("pt_uspec"));
		} else{
			sound_stop(sound_get("eurika_charge"));
		}
		if (tp_process == true){
			x = tp.x - 10 * spr_dir;
			y = tp.y + 70;
		}
		snd_rng = random_func(0, 4, true)
		if snd_rng == 0{ //Question. What's your question soldier? I teleported Bread. what.
			sound_play(sound_get("demoman_grenade"));
			iteleportedbread = instance_create(hit_player_obj.x - 70,hit_player_obj.y-80,"obj_article2");
			breadtype_rng = random_func(0, 9, true);
			iteleportedbread.hsp = -3 * spr_dir;
			iteleportedbread.vsp = -5;
			iteleportedbread.ammo_direction = spr_dir * -1;
			iteleportedbread.ammo_amount = 0;
			iteleportedbread.ammo_type = 4;
			iteleportedbread.image_index = breadtype_rng;
		}
	}
}

//wrangler
if attack == AT_EXTRA_1{
	sentry.building_state = 3; //sets it to wrangled state
	wrangling = true;
	if window == 1 && window_timer == 1{
		if(get_synced_var (player) == 1){
			snd_rng = random_func(0, 5, true);
            if (snd_rng == 0) {
                voice_id = "v_aintonautopilot";
                voice_volume = 1.5;
                voice_play();
            }else if (snd_rng == 1) {
				voice_id = "v_fromyourstruly";
                voice_volume = 2;
                voice_play();
            }else if (snd_rng == 2) {
                voice_id = "v_gotcha";
                voice_volume = 1.5;
                voice_play();
            }else if (snd_rng == 3) {
                voice_id = "v_startpraying";
                voice_volume = 1.5;
                voice_play();
			}
		}
	}
	
	if (window == 1) && (window_timer == 1 or window_timer == 2){
		sound_play(sound_get("sentry_target"), false, noone, 0.2);
	}
	if sentry.building_level > 1{ //adds extra bullets for lv2
		if (window == 1 && window_timer == 7){
			create_hitbox(AT_EXTRA_1, 1, x, y);
			sound_play(sound_get("wrangler_shoot_lv1"));
		}
		if (window == 3 && window_timer == 4){
			create_hitbox(AT_EXTRA_1, 2, x, y);
			sound_play(sound_get("wrangler_shoot_lv1"));
		}
		if (window == 5 && window_timer == 4){
			create_hitbox(AT_EXTRA_1, 3, x, y);
			sound_play(sound_get("wrangler_shoot_lv1"));
		}
	}
	if sentry.building_level == 3{ //rockets
		if (window == 6 && window_timer == 3){
			wrangle_rockets = create_hitbox(AT_USPECIAL, 4, x, y);
			wrangle_rockets.y = y - 60;
			wrangle_rockets.x = x + 20 * spr_dir;
			wrangle_rockets.spr_dir = spr_dir * -1;
			wrangle_rockets.lifetime = 90;
			wrangle_rockets.kb_angle = 125;
			sound_play(sound_get("sentry_rocket"));
		}
	}
} else{
	wrangling = false;
}


//makes fair rise on hit
if attack == AT_FAIR{
	if has_hit == true{
		if window == 4{
			if vsp > 0{
				vsp = -2
			}
		} else{
			vsp = vsp - vsp /20
		}
	}
}

//utilt
if attack == AT_UTILT{
	if window == 1{
		lasso_loop_count = 0;
	}
	if window == 2{
		if has_hit == true{
			if lasso_loop_count < 2{
				lasso_loop_count = 2;
			}
		}
		if window_timer == 10{
			if (lasso_loop_count >= 2 && lasso_loop_count <= 4) && has_hit == true{
				lasso_loop_count = 10;
				create_hitbox(AT_UTILT, 5, x, y);
			}
		}
		if window_timer >= 20{
			if (attack_down == true or has_hit == true) && lasso_loop_count < 2{
				window_timer = 0;
				lasso_loop_count ++
				if has_hit == true{
					lasso_loop_count ++
				}
			}
		}
	}
}


// Audio Stuff -------------------------------------------------------------

//makes dair's audio play correctly
if attack == AT_DAIR{
	if window == 1{
		dair_sound_play = 0;
	}
	if dair_sound_play == 0 && has_hit == true{
		sound_play(asset_get("sfx_shovel_hit_heavy2"));
		dair_sound_play = 1;//1 takes it to hitbox_update
	}
}

//makes dstrong's audio play correctly
if attack == AT_DSTRONG{
	if window == 3 && window_timer == 1{
		sound_play(sound_get("deploy"));
	}
}

//peppino shotgun sfx
if attack == AT_DTILT{
	if window == 1 && window_timer == 1{
		if (get_synced_var (player) == 3){
			sound_play(sound_get("pt_shotgun"), false, noone, 2);
		} else{
			sound_play(sound_get("shotgun_shoot"));
		}
	}
}
sound_get("shotgun_shoot")
//Attacks That Use Metal ------------------------------------------------------

//bair rocket spawning
if attack == AT_BAIR{
	if window == 3 && window_timer == 1{
		// if metal_count > 0{
			// sound_play(sound_get("sentry_rocket"), false, noone, 0.6);
			// metal_count = metal_count - 25;
		// } else if has_hit == false{
		// 	create_hitbox(AT_BAIR, 2, x, y);
		// 	bair_flag = false;
		// 	sound_play(asset_get("sfx_shovel_hit_med2"));
		// }
	}
}
// if metal_count > 0{ //don't seperate this from bair stuff
if metal_count >= 0{
	bair_flag = true;
}

//ustrong rocket spawning
if attack == AT_USTRONG{
	if window == 3{
		ustrong_dd = false;
	}
	if window == 4 && window_timer == 1{
		sound_play(sound_get("sentry_rocket"));
		ustrong_rockets = create_hitbox(AT_USTRONG, 3, x, y-180);
		ustrong_rockets.vsp = -4 - (1 * strong_charge/14);
		window_timer = 2;
	}
}

//dspecial_air widowmaker code
if attack == AT_DSPECIAL_AIR{
	if window == 1 && window_timer == 9 && has_hit == false{
		if metal_count >= 25{
			sound_play(sound_get("widowmaker"));
			create_hitbox(AT_DSPECIAL_AIR, 1, x, y);
			metal_count = metal_count - 25;
			vsp = -5.5;
			oh_crap_we_dont_have_enough_metal_go_back = false;
		} else{
			oh_crap_we_dont_have_enough_metal_go_back = true;
			sound_play(sound_get("widowmaker_empty"));
			vsp = -2;
		}
	}
	can_fast_fall = false;
} else{
	oh_crap_we_dont_have_enough_metal_go_back = false;
}

//fspecial box code
if attack == AT_FSPECIAL{
	if (get_synced_var (player) == 1){
		if window == 1 && window_timer == 1 && free == false{
			snd_rng = random_func(0, 3, true);
			if snd_rng == 0{
				voice_id = "v_needa";
				voice_volume = 1.5;
				voice_play();
			}
			if snd_rng == 1{
				voice_id = "v_sentrygoinup";
				voice_volume = 1.5;
				voice_play();
			}
			if snd_rng == 2{
				voice_id = "v_dispenserup";
				voice_volume = 1.5;
				voice_play();
			}
		}
	}
	if window == 2 && window_timer == 1{
		if metal_count >= 50{
			boxing_box = instance_create(x+50*spr_dir,y-30,"obj_article3");
			boxing_box.spr_dir = spr_dir;
			boxing_box.vsp = -4;
			boxing_box.sprite_index = sprite_get("toolboxair");
			metal_count = metal_count - 50;
		}
	}
	if window == 2 && window_timer == 3{
		if free == false{
			sound_play(asset_get("sfx_blow_medium3"));
			if (get_synced_var (player) == 1){
				voice_id = "v_hurt2";
				voice_volume = 1.5;
				voice_play();
			}
		}
	}
	can_wall_jump = true;
	can_fast_fall = false;
}

if attack == AT_DSPECIAL{
	if window == 1 && window_timer == 8{
		if metal_count >= 25 and rat_alive == false{
			rat_alive = true;
			stupid_rat = instance_create(x+50*spr_dir,y,"obj_article3");
			stupid_rat.spr_dir = spr_dir;
			stupid_rat.tool_type = 1;
			stupid_rat.sprite_index = sprite_get("rat_spawn");
			metal_count = metal_count - 25;
			if get_synced_var (player) == 1{
				snd_rng = random_func(0, 4, true);
				if (snd_rng == 0) {
					voice_id = "v_mini1";
					voice_volume = 0.7;
					voice_play();
				}else if (snd_rng == 1) {
					voice_id = "v_mini2";
					voice_volume = 0.7;
					voice_play();
				}
				else if (snd_rng == 2) {
					voice_id = "v_mini3";
					voice_volume = 0.7;
					voice_play();
				}
				else if (snd_rng == 3) {
					voice_id = "v_goonget";
					voice_volume = 0.7;
					voice_play();
				}
				
			}
			if get_synced_var (player) == 2{
				sound_play(sound_get("cd_plant"));
			} else{
				sound_play(sound_get("ammo_pickup"));
			}
		} else{
			sound_play(sound_get("legos_break"));
		}
	}
}

if attack == AT_DATTACK{
	if window == 1{
		if window_timer = 1{
			if get_synced_var (player) == 1{
				snd_rng = random_func(0, 5, true);
                if (snd_rng == 0) {
                    voice_id = "v_heheyeehaw";
                    voice_volume = 1.5;
                    voice_play();
                }else if (snd_rng == 1) {
                    voice_id = "v_giddyup";
                    voice_volume = 2;
                    voice_play();
                }else if (snd_rng == 2) {
                    voice_id = "v_battlecry1";
                    voice_volume = 2;
                    voice_play();
                }else if (snd_rng == 3) {
                    voice_id = "v_giddyup";
                    voice_volume = 2;
                    voice_play();
                }else if (snd_rng == 4) {
                    voice_id = "v_moveemout";
                    voice_volume = 2;
                    voice_play();
                }
			}
			if get_synced_var (player) == 2{
				sound_play(sound_get("cd_jackhammer"));
			}
			if get_synced_var (player) == 3{
				sound_play(sound_get("pt_grab"));
			}
		}
		if window_timer < 8{
			hsp = hsp * 0.99
		} else{
			hsp = spr_dir * 4
		}
		jackhammer_loop = -3;
	}
	if window == 2 && window_timer == 11{ //looping metal check
		if attack_down == true && metal_count >= 25{
			if jackhammer_loop <= 0{
				sound_play(asset_get("sfx_ell_dspecial_drop"));
				spawn_hit_fx( x, y-30, 144);
				metal_count = metal_count - 25;
				if hsp == 1 or hsp == -1{
					jackhammer_loop = 3;
				}
				jackhammer_loop = 2;
			}
		} else{
			window = 3;
			window_timer = 0;
		}
	}
	if window == 2 && window_timer == 23{//looping window
		window_timer = 1;
		jackhammer_loop = jackhammer_loop - 1;
	}
	if window == 2{
		if spr_dir == -1 && hsp >= -1{
			hsp = -1;
		}
		if spr_dir == 1 && hsp <= 1{
			hsp = 1;
		}
		if window_timer = 1 && jackhammer_loop == -3{
			if get_synced_var (player) == 3{
				sound_play(sound_get("pt_dashloop"), true, noone, 1.9);
			}
		}
	}
	if window == 3 && window_timer == 0{
		if get_synced_var (player) == 3{
			sound_play(sound_get("pt_dashstop"));
		}
	}
} else{
	sound_stop(sound_get("jackhammer_loop"));
	sound_stop(sound_get("pt_dashloop"));
	jackhammer_loop = 0;
}

//fstrong stuff
if attack == AT_FSTRONG{
	if window == 1 && window_timer == 6{
		sound_play(sound_get("megaman_charge"));
	}
	if window == 2{
		fstrong_anim_timer = fstrong_anim_timer + 0.5;
		if fstrong_anim_timer == 20{
			sound_play(sound_get("megaman_chargeloop"), true, noone, 1);
		}
		if fstrong_anim_timer >= 30{
			fstrong_anim_timer = 25;
		}
		if strong_charge == 59 && fstrong_anim_timer < 26{
			strong_charge = 0;
		}
	} 
	if window == 3{
		sound_stop(sound_get("megaman_chargeloop"));
		sound_stop(sound_get("megaman_charge"));
		if window_timer == 1{
			if fstrong_anim_timer >= 18 && metal_count >= 25{
				sc_bigshot = create_hitbox(AT_FSTRONG, 3, x + 70 * spr_dir, y-40);
				sc_bigshot.hsp = (fstrong_anim_timer/5) * spr_dir;
				sc_bigshot.img_spd = 0.175 + fstrong_anim_timer/1000;
				sound_play(sound_get("shortcircuit_bigshot"));
				metal_count = metal_count - 25;
				fstrong_anim_timer = 0;
			} else if metal_count >= 25{
				sc_minishot = create_hitbox(AT_FSTRONG, 2, x + 66 *spr_dir, y-40);
				sc_minishot.hsp = (3 + fstrong_anim_timer/5) * spr_dir;
				sc_minishot.img_spd = 0.175 + fstrong_anim_timer/150;
				sound_play(sound_get("shortcircuit_zap"));
				metal_count = metal_count - 25;
				fstrong_anim_timer = 0;
			} else{
				// create_hitbox(AT_FSTRONG, 1, x, y);
				sound_play(sound_get("shortcircuit_fizzle"));
				fstrong_anim_timer = 0;
			}
		}
	}
}

//final smash code
if attack == 49{
	if window == 1{
		if window_timer == 30{
			sound_play(sound_get("deploy"));
		}
	}
	if window == 2{
		if window_timer == 1 or window_timer == 20 or window_timer == 40 or window_timer == 60{
			create_hitbox(49, 2, x + 10 * spr_dir, y-90);
			sound_play(sound_get("sentry_rocket"));
		}
		if window_timer == 11 or window_timer == 30 or window_timer == 50 or window_timer == 70{
			create_hitbox(49, 2, x - 10 * spr_dir, y-90);
			sound_play(sound_get("sentry_rocket"));
		}
	}
	if window == 4{
		//rocket falls
		if window_timer == 1 or window_timer == 10 or window_timer == 40 or window_timer == 60 or window_timer == 30 or window_timer == 50 or window_timer == 70 or window_timer == 20{
			create_hitbox(49, 2, x + 10 * spr_dir * window_timer, y-400);
		}
		//bullets
		if window_timer == 1 or window_timer == 5 or window_timer == 10 or window_timer == 15 or window_timer == 20 or window_timer == 25 or window_timer == 30 or window_timer == 35 or window_timer == 40 or window_timer == 45 or window_timer == 50 or window_timer == 55{
			create_hitbox(49, 3, x , y-60);
		}
	}
	if window == 5 && window_timer == 30{
		sound_play(sound_get("fs_bomb"));
	}
	if jump_pressed == true && free == false && hsp == 0{
		vsp = -5;
		hsp = 0;
	}
	if vsp != 0 && free == false{
		sound_play(sound_get("deploy"));
	}
}



#define voice_play() //voiceline code is heavily based off of Roboshyguy's Jerma985 mod, I was given permission to use his code as a base.
if(!dont_shutup){
sound_stop(voice_playing_sound);
}
voice_playing_sound = sound_play(sound_get(voice_id), false, noone, voice_volume);
dont_shutup = false;

// #define spawn_base_dust // written by supersonic
// /// spawn_base_dust(x, y, name, dir = 0)
// ///spawn_base_dust(x, y, name, ?dir)
// //This function spawns base cast dusts. Names can be found below.
// var dlen; //dust_length value
// var dfx; //dust_fx value
// var dfg; //fg_sprite value
// var dfa = 0; //draw_angle value
// var dust_color = 0;
// #args x, y, name, dir = 0

// switch (name) {
// 	default: 
// 	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
// 	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
// 	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
// 	case "doublejump": 
// 	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
// 	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
// 	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
// 	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
// 	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
// 	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
// }
// var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
// if newdust == noone return noone;
// newdust.dust_fx = dfx; //set the fx id
// if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
// newdust.dust_color = dust_color; //set the dust color
// if dir != 0 newdust.spr_dir = dir; //set the spr_dir
// newdust.draw_angle = dfa;
// return newdust;


