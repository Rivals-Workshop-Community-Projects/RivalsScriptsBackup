// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN || state == PS_HITSTUN_LAND)){
    move_cooldown[AT_USPECIAL] = 0;upb = false;
    if(!free){
        float = floatmax;
    }djumpfloat = 0;
    
    can_summon_mech = true;
}

if(voicemode != 4){
	voicecooldown -= 1;voicecooldown2 -= 1;voicecooldown3 -= 1;
}
 //NSpecial charge stuff
if("fs_charge" in self && fs_charge >= 200 && nspecial_charge < 400){
	nspecial_charge = 400;
}

if(nspecial_charge < 400){
	nspecial_charged = false;
}else{
	if(nspecial_charge > 400)nspecial_charge = 400;
	if(!hitpause){
		if(!nspecial_charged){
			if(voicemode == 0){ //adventure
				PlayVoiceClip("adv_all_systems_full_power", 1.75);
			}else if(voicemode == 1){ //modern
				PlayVoiceClip("pollock_charged_n_ready", 2);
			}else if(voicemode == 3){ //pingas
				PlayVoiceClip("pingas full power", 1.75);
			}
		}
		nspecial_charged = true;
	}
}

if(!instance_exists(the_eggpawn)){
	eggpawn_cooldown--;
	eggpawn_cooldown = max(0,eggpawn_cooldown);
}//eggpawn_cooldown = min(1800,eggpawn_cooldown);
if(!instance_exists(the_eggpawn2)){
	eggpawn_cooldown2--;
	eggpawn_cooldown2 = max(0,eggpawn_cooldown2);
}//eggpawn_cooldown2 = min(1800,eggpawn_cooldown2);

if(eggpawn_destroyed){
	rand = random_func(2, 8, true);
	if(voicemode == 0){ //adventure
	    if(rand == 0 && voicecooldown <= 0){
	    	voicecooldown = 60;
	    	rand = random_func(3, 2, true);
	    	if(rand == 0){
	    		PlayVoiceClip("adv_dont_get_too_excited_boys", 1.75);
	    	}else if(rand == 1){
	    		PlayVoiceClip("adv_worthless_junk", 1.75);
	    	}
	    }
	}else if(voicemode == 1){ //modern
	    if(rand == 0 && voicecooldown <= 0){
	    	voicecooldown = 60;
	    	rand = random_func(3, 2, true);
	    	if(rand == 0){
	    		PlayVoiceClip("pollock_delicate_machine", 2);
	    	}else if(rand == 1){
	    		PlayVoiceClip("pollock_dont_fall_apart_on_me_now", 2);
	    	}
	    }
	}else if(voicemode == 2){ //alfred
	    if(rand == 0 && voicecooldown <= 0){
	    	voicecooldown = 60;
	    	rand = random_func(3, 2, true);
	    	if(rand == 0){
	    		PlayVoiceClip("alfred_my_followerbase", 2);
	    	}else if(rand == 1){
	    		PlayVoiceClip("alfred_son_of_a_bitch2", 1.75);
	    	}
	    }
	}else if(voicemode == 3){ //pingas
	    if(rand == 0 && voicecooldown <= 0){
	    	voicecooldown = 60;
	    	rand = random_func(3, 2, true);
	    	if(rand == 0){
	    		PlayVoiceClip("pingas metal maggots", 1.75);
	    	}else if(rand == 1){
	    		PlayVoiceClip("pingas you stupid mounds of metal", 1.75);
	    	}
	    }
	}
	eggpawn_destroyed = false;
}

if(free && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && taunt_pressed){
   set_attack(AT_TAUNT);
}

//mech specific stuff
if(inside_mech){
	if ((state == PS_CROUCH || state == PS_JUMPSQUAT) && jump_down && (down_down || floatbuffer > 0)){
		if (!free){
			y -= 2;
		}
	}
	
	if(free && (vsp >= 0 && (state != PS_DOUBLE_JUMP || floating) || (down_down || floatbuffer > 0)) && jump_down && float > 0 && state != PS_HITSTUN && state != PS_AIR_DODGE
		&& state != PS_PRATFALL && state != PS_RESPAWN && state != PS_DEAD && !hitpause
		&& (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_DATTACK)){
	    float -= 1;if(y > 200){vsp = 0;}else{vsp = 2;}
	    if(!floating_sfx){floating_sfx = true;hover_sfx = sound_play(sound_get("hover loop"),true,noone,0.35);sound_play(sound_get("hover start"),false,noone,0.35);}
	    floating = true;
	    air_max_speed = 3.25;
	    if(hsp*spr_dir < 0)hsp *= 0.95;
	    if (state == PS_DOUBLE_JUMP && state_timer < 9){
	    	set_state(PS_IDLE_AIR);clear_button_buffer(PC_JUMP_PRESSED);
	    	if(djumpfloat < 1){
	    		djumps = 0;djumpfloat += 1;
	    	}
		}
		var offset_x = 0;var offset_y = 0;
		if(sprite_index == sprite_get("crouch")){offset_x = 0;offset_y = -15;}else if(sprite_index == spr_lookup){offset_x = -15;offset_y = 15;}
		if(get_gameplay_time() % 4 == 0){
	        var eff = spawn_hit_fx(x-((45+random_func(0, 25, true))+offset_x)*spr_dir,y-50+random_func(1, 30, true)+offset_y,fx_dust);eff.depth = depth+1;
	    }if(get_gameplay_time() % 3 == 0){
	        var eff = spawn_hit_fx(x-((45+random_func(2, 25, true))+offset_x)*spr_dir,y-50+random_func(3, 30, true)+offset_y,fx_fire);eff.depth = depth+1;fire.draw_angle = (75+random_func(4, 30, true))*spr_dir;
	    }
	}else{
		air_max_speed = 5;
	    floating = false;
	}
	
	if(state_timer == 5 && state == PS_DOUBLE_JUMP){
	    if(right_down && spr_dir == -1){
	        spr_dir = 1;
	    }else if(left_down && spr_dir == 1){
	        spr_dir = -1;
	    }
	}
	
	//Crawl
	if(state == PS_CROUCH && !hitpause){
	    can_move = true;
	    if (right_down){
	        hsp = 2;//spr_dir = 1;
	        crawling = true;
	    }else if (left_down){
	        hsp = -2;
	        crawling = true;  
	    }
	    if (joy_pad_idle){
	        hsp = 0;
	        crawling = false;
	    }
	}else{
	    crawling = false;
	}
	
	if(state == PS_PARRY){
		if(state_timer == 1 && !hitpause){
			sound_play(sound_get("mech sfx 2"),false,noone,1.5);
			dusteff = spawn_hit_fx(x-50*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
		    dusteff2 = spawn_hit_fx(x+50*spr_dir,y,fx_dust_sharp);dusteff2.depth = depth-1;
		}
	}
	
	if(state == PS_DASH || state == PS_DASH_START){
		if(get_gameplay_time() % 4 == 0){
	        var eff = spawn_hit_fx(x-((45+random_func(0, 25, true)))*spr_dir,y-55+random_func(1, 30, true),fx_dust);eff.depth = depth+1;
	    }if(get_gameplay_time() % 3 == 0){
	        var eff = spawn_hit_fx(x-((45+random_func(2, 25, true)))*spr_dir,y-55+random_func(3, 30, true),fx_fire);eff.depth = depth+1;fire.draw_angle = (75+random_func(4, 30, true))*spr_dir;
	    }
	}
}else{ //mechless specific stuff
	floating = false;
	if(state == PS_DASH){
	    if(!runeF){
	    	hsp = clamp((6 * spr_dir) + (state_timer / 6 * spr_dir),-maxspd,maxspd);
	    }else{
	    	if(abs(hsp) < 20){
	    		hsp = clamp((10 * spr_dir) + (state_timer / 6 * spr_dir),-maxspd,maxspd);
	    	}else{
	    		hsp = clamp(((10 + abs(hsp/2)) * spr_dir) + (state_timer / 6 * spr_dir),-maxspd,maxspd);
	    	}
	    }
	    //print(hsp);
	}else if(state == PS_DASH_TURN){
		if(state_timer == 0 && !hitpause){
			sound_play(sound_get("skid"),false,noone,1.0);
		}
		if(state_timer < 4){
    		hsp += 1*spr_dir;
    	}
	}else if(state == PS_JUMPSQUAT){
		if(state_timer == 2 && !hitpause){
			if(voicemode == 0){ //adventure
				rand = random_func(0, 2, true);
			    if(rand == 0){
					PlayVoiceClip("adv_yoh", 1);
			    }
			}
		}
	}
	dash_speed = abs(hsp);
	hsp = clamp(hsp,-maxspd,maxspd);
	walk_anim_speed = 0.05+abs(hsp/5);
	dash_anim_speed = 0.2+abs(hsp/5);
}
if(!floating && floating_sfx){
	floating_sfx = false;sound_stop(hover_sfx);
}

if(nspecial_charge_sfx){
	if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_NSPECIAL || state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		nspecial_charge_sfx = false;sound_stop(nspecial_charge_sfx2);
	}
}

if(inside_mech2 != inside_mech)MechChange();

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	attacking = true;
}else{
	attacking = false;
	if(ds_list_valid(target_list)){
		ds_list_destroy(target_list);
	}
}

//custom burn status effect stuff
with (asset_get("oPlayer")){
    if (state == PS_RESPAWN || state == PS_DEAD){
        sol_burn = false;
        outline_color = [0, 0, 0];
    	init_shader();
    }
	if (sol_burn && sol_burn_id == other.id && !hitpause) {
		sol_burn_timer -= 1;
		with (other){
			if(get_gameplay_time() % 3 == 0){
				var fire = spawn_hit_fx(other.x-(50*spr_dir)+random_func(1, 100, true)*spr_dir,other.y+20-random_func(2, 120, true),fx_fire);fire.depth = depth-1;
				fire = spawn_hit_fx(other.x-(50*spr_dir)+random_func(3, 100, true)*spr_dir,other.y+20-random_func(4, 120, true),fx_fire_fast);fire.depth = depth-1;
			}if(get_gameplay_time() % 20 == 0){
				if(!other.free){
					create_hitbox(AT_DSTRONG, 11, round(other.x), round(other.y+2));
	            }
			}
		}
		outline_color = [150, 0, 0];
		if (sol_burn_timer == 0){
			sol_burn = false;
			outline_color = [0, 0, 0];
    		init_shader();
		}
		/*if(other.runeA && get_gameplay_time() % 10 == 0){
			take_damage(player, -1, 1);
		}*/
	}
}

//custom bury status effect stuff
with (oPlayer){
	if (villager_bury && villager_bury_id == other.id) {
	    if (state == PS_RESPAWN || state == PS_DEAD || hitstop > 1 && (abs(old_hsp) >= 6 || abs(old_vsp) >= 6) && !villager_bury_hitpause){
	    	villager_bury = false;
	    	if (state == PS_RESPAWN || state == PS_DEAD){
		    	hitpause = 0;hitstop = 0;
		    }
	    }
		if(villager_bury && villager_bury_timer > 0){
	        villager_bury_timer--;
	        set_state(PS_HITSTUN);
	        hitpause = 1;hitstop = 1;
	        villager_bury_hitpause = false;
	        hurt_img = 2;
	        if(villager_bury_timer == 0){
	        	hitpause = 0;hitstop = 0;villager_bury = false;vsp = -8;free = true;
	        }else{
				
	        }
	    }
	    if(!villager_bury){
	    	villager_bury_cooldown = 60;
		    with (other){
				var buryeffect = spawn_hit_fx(other.x+35,other.y,fx_bury);buryeffect.depth = depth-1;buryeffect.spr_dir = 1;
				buryeffect = spawn_hit_fx(other.x-35,other.y,fx_bury);buryeffect.depth = depth-1;buryeffect.spr_dir = -1;
		    }
		}
	}else if(villager_bury_id == other.id){
		if(!villager_bury && villager_bury_cooldown > 0){
	        villager_bury_cooldown--;
		}
	}
}

//for based sleep sfx
if(state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	if(kob_sleep && "kob_sleep_sfx" in self && kob_sleep_sfx && !hitpause){
		if(voicemode == 0){ //adventure
			PlayVoiceClip("adv_sleep", 1);
		}else if(voicemode == 1){ //modern
			PlayVoiceClip("pollock_sleep", 2.5);
		}else if(voicemode == 2){ //alfred
			
		}else if(voicemode == 3){ //pingas
			PlayVoiceClip("pingas sleep", 1.75);
		}
		kob_sleep_sfx = false;
	}
}

if(!loaded){
	css_timer = 0;
	if(alt != 0){
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspec_projectile_alts"));
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_alts"));
		aim_sprite = sprite_get("fspec_aim_alts");
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_alts"));
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_alts"));
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_alts"));
		fx_aimlaser = hit_fx_create(sprite_get("fx_aimlaser_alts"), 10);
		fx_fire = hit_fx_create(sprite_get("fx_fire_alts"), 20);
		fx_fire_fast = hit_fx_create(sprite_get("fx_fire_alts"), 10);
		fx_fire_slow = hit_fx_create(sprite_get("fx_fire_alts"), 30);
		fx_fire_slow2 = hit_fx_create(sprite_get("fx_fire_alts"), 45);
		fx_fire2 = hit_fx_create(sprite_get("fx_fire2_alts"), 15);
		fx_fire2_slow = hit_fx_create(sprite_get("fx_fire2_alts"), 40);
		fx_fire2_small = hit_fx_create(sprite_get("fx_fire2_small_alts"), 15);
		fx_fire2_small_slow = hit_fx_create(sprite_get("fx_fire2_small_alts"), 40);
		fx_pixel = hit_fx_create(sprite_get("fx_pixel_alts"), 20);
		fx_pixel_fast = hit_fx_create(sprite_get("fx_pixel_alts"), 10);
		fx_pixel_fast2 = hit_fx_create(sprite_get("fx_pixel_alts"), 5);
		fx_orb = hit_fx_create(sprite_get("fx_orb_alts"), 10);
		eggpawn_icon = 1;
		
		//laser stuff
		if(alt != 7){
			if(alt == 1 || alt == 2 || alt == 6 || alt == 9 || alt == 15 || alt == 18 || alt == 19 /*|| alt == 21*/ || alt == 23 || alt == 28 || alt == 30){ //glasses color
				set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_alts"));
				nspecial_meter_hud = 3;
				fx_nspec_laser = hit_fx_create(sprite_get("nspec_laser_alts"), 30);
				fx_nspec_laser2 = hit_fx_create(sprite_get("nspec_laser2_alts"), 30);
				fx_sharphit = hit_fx_create(sprite_get("fx_sharphit_alts"), 15);
				fx_sharphit_big = hit_fx_create(sprite_get("fx_sharphitbig_alts"), 15);
				fx_sharphit_big2 = hit_fx_create(sprite_get("fx_sharphitbig2_alts"), 15);
				fx_lightbeams_small = hit_fx_create(sprite_get("fx_lightbeams_small_alts"), 12);
				fx_lightbeams_small_fast = hit_fx_create(sprite_get("fx_lightbeams_small_alts"), 6);
			}else{ //yellow color
				set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_alts2"));
				nspecial_meter_hud = 4;
				fx_nspec_laser = hit_fx_create(sprite_get("nspec_laser_alts2"), 30);
				fx_nspec_laser2 = hit_fx_create(sprite_get("nspec_laser2_alts2"), 30);
				fx_sharphit = hit_fx_create(sprite_get("fx_sharphit_alts2"), 15);
				fx_sharphit_big = hit_fx_create(sprite_get("fx_sharphitbig_alts2"), 15);
				fx_sharphit_big2 = hit_fx_create(sprite_get("fx_sharphitbig2_alts2"), 15);
				fx_lightbeams_small = hit_fx_create(sprite_get("fx_lightbeams_small_alts2"), 12);
				fx_lightbeams_small_fast = hit_fx_create(sprite_get("fx_lightbeams_small_alts2"), 6);
			}
		}
	}
	
	with(oPlayer){
		if((string_count("Sonic", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Sanic", string( get_char_info(player, INFO_STR_NAME) )) > 0)
    	&& string_count("metal", string_lower( get_char_info(player, INFO_STR_NAME) )) <= 0 && string_count("mecha", string_lower( get_char_info(player, INFO_STR_NAME) )) <= 0){
	    	with(other){sonic_inmatch = true;}
		}if(string_count("Tails", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){tails_inmatch = true;}
		}if(string_count("Knuckles", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){knuckles_inmatch = true;}
		}if(string_count("Amy", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){amy_inmatch = true;}
		}if(string_count("Shadow", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){shadow_inmatch = true;}
		}if(string_count("Silver", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){silver_inmatch = true;}
		}if(string_count("Rouge", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){rouge_inmatch = true;}
		}if(string_count("Chaos 0", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Chaos Zero", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){chaos_inmatch = true;}
		}if(string_count("Toadie", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Spike", string( get_char_info(player, INFO_STR_NAME) )) > 0 && "Spike" in self){
	    	with(other){based_frog_inmatch = true;}
		}
	}
    
    rand = random_func(player+1, 2, true);
    if(rand == 1){
    	set_victory_bg(sprite_get("victorybg_fleet"));
    }
    
    if(voicemode == 0){ //adventure
    	rand = random_func(player, 4, true);
	    if(rand == 0){
	    	PlayVoiceClip("adv_youll_never_defeat_me", 1);
	    }else if(rand == 1){
	    	PlayVoiceClip("adv_ill_show_you_what_real_evil_is", 1.75);
	    }else if(rand == 2){
	    	PlayVoiceClip("adv_ill_destroy_you_all", 1.75);
	    }else if(rand == 3){
	    	PlayVoiceClip("adv_mince_meat", 1.75);
	    }
	    rand = random_func(player+4, 2, true);
		if(rand == 0){
			if(sonic_inmatch){
				PlayVoiceClip("adv_well_if_it_isnt_my_pal_sonic", 1.75);
			}else if(knuckles_inmatch){
				PlayVoiceClip("adv_knuckles", 1.75);
			}else if(amy_inmatch){
				PlayVoiceClip("adv_give_up_amy", 1.75);
			}else if(chaos_inmatch){
				PlayVoiceClip("adv_chaos", 1.75);
			}
		}
		
		gfzsignsfx = sound_get("adv_laugh");
		
	}else if(voicemode == 1){ //modern
		rand = random_func(player, 3, true);
	    if(rand == 0){
	    	PlayVoiceClip("pollock_hope_youve_said_your_goodbyes", 1.75);
	    }else if(rand == 1){
	    	PlayVoiceClip("pollock_prepare_to_be_sunk", 1.75);
	    }else if(rand == 2){
	    	PlayVoiceClip("pollock_time_for_a_change_of_pace", 1.75);
	    }
		
		gfzsignsfx = sound_get("pollock_laugh");
		
		set_victory_bg(sprite_get("victorybg_eggmanland"));
	}else if(voicemode == 2){ //alfred
		rand = random_func(player, 5, true);
	    if(rand == 0){
	    	PlayVoiceClip("alfred_hey_bitches", 1.5);
	    }else if(rand == 1){
	    	PlayVoiceClip("alfred_announcement2", 3);
	    }else if(rand == 2){
	    	PlayVoiceClip("alfred_piss_stone", 1.75);
	    }else if(rand == 3){
	    	PlayVoiceClip("alfred_kill_these_bitches", 1.75);
	    }else if(rand == 4){
	    	PlayVoiceClip("alfred_why_hello_there", 1.75);
	    }
	    rand = random_func(player+4, 2, true);
		if(rand == 0){
			if(shadow_inmatch){
				PlayVoiceClip("alfred_shadow_join_me", 1.75);
			}else if(amy_inmatch){
				PlayVoiceClip("alfred_oh_amy", 1.75);
			}else if(rouge_inmatch){
				PlayVoiceClip("alfred_well_if_it_isnt_rouge", 2);
			}
		}
		
		gfzsignsfx = sound_get("alfred_why_hello_there");
		
		//all around_me are familiar eggmans...
		with(oPlayer){
			if(other != self && (string_count("Eggman", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Robotnik", string( get_char_info(player, INFO_STR_NAME) )) > 0)){
		    	with(other){familiar_eggmans += 1;}
			}
		}
		if(familiar_eggmans >= 2){
			PlayVoiceClip("alfred_all_around_me_are_familiar_eggmans", 2);
		}else{
			//epic level 7 reference
			if("temp_level" in self){
				if(temp_level == 5){
					PlayVoiceClip("alfred_level_5", 2);
				}else if(temp_level == 7){
					PlayVoiceClip("alfred_level_7", 2);
				}
				voice = noone;
			}
		}
	}else if(voicemode == 3){ //pingas
		rand = random_func(player, 3, true);
	    if(rand == 0){
	    	PlayVoiceClip("pingas snooping as usual i see", 1.75);
	    }else if(rand == 1){
	    	PlayVoiceClip("pingas_get_out_of_my_sight", 1.75);
	    }else if(rand == 2){
	    	PlayVoiceClip("pingas", 1.75);
	    }
	    rand = random_func(player+4, 2, true);
		if(rand == 0){
			if(tails_inmatch){
				PlayVoiceClip("pingas double tailed trouble maker", 1.75);
			}
		}
		
		gfzsignsfx = sound_get("pingas no");
	}
	
	if(alt == 13 || alt == 20 || alt == 27){
		set_victory_bg(sprite_get("victorybg_frogforest"));
	}
	
    if (runesUpdated || get_match_setting(SET_RUNES)) {
		if (has_rune("A") || runeA) {
			
		}if (has_rune("C") || runeC) {
			
		}if (has_rune("E") || runeE) {
			runeE = true;
			eggpawn_cooldown = 0;eggpawn_cooldown2 = 0;
			eggpawn_cooldown_multiplier = 0.5;
		}if (has_rune("F") || runeF) {
			runeF = true;
			maxspd = 999999;
		}
		
		if (has_rune("G") || runeG) {
			runeG = true;
			set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 420);
		}if (has_rune("H") || runeH) {
			runeH = true;eggpawn_health_multiplier = 3.0;
		}if (has_rune("I") || runeI) {
			
		}if (has_rune("J") || runeJ) {
			
		}if (has_rune("K") || runeK) {
			
		}
		if (has_rune("L") || runeL) {
			runeL = true;
		}if (has_rune("M") || runeM) {
			
		}if (has_rune("N") || runeN) {
			
		}if (has_rune("O") || runeO) {
			
		}
	}
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
    loaded = true;
}

//he has 70 alt accounts
if((state == PS_SPAWN || state == PS_RESPAWN) && !i_have_70_alt_accounts && voicemode == 2){
	if(get_player_stocks(player) == 70){
		PlayVoiceClip("alfred_70alts", 2);i_have_70_alt_accounts = true;
		voice = noone;
	}
}

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	if(!hitpause){
	    sound_stop(voice)
	    voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
	}
	
#define MechChange
	if(inside_mech){
		hurtbox_spr = sprite_get("hurtbox");
		crouchbox_spr = sprite_get("hurtbox_crouch");
		knockback_adj = .9;
		walk_speed = 3.2;
		walk_accel = 0.2;
		initial_dash_speed = 6.75;
		dash_speed = 6.25;
		dash_turn_accel = 1.5;
		ground_friction = 0.55;
		wave_friction = 0.12;
		leave_ground_max = 6;
		max_jump_hsp = 6;
		air_max_speed = 5;
		air_accel = 0.3;
		gravity_speed = 0.4;
		max_djumps = 3;
		
		walk_anim_speed = 0.125;
		dash_anim_speed = 0.2;
		
		land_sound = noone;
		landing_lag_sound = noone;
		
		//Ground
		spr_idle = sprite_get("idle");
		spr_crouch = sprite_get("crouch");
		spr_walk = sprite_get("walk");
		spr_walkturn = sprite_get("walkturn");
		spr_dash = sprite_get("dash");
		spr_dashstart = sprite_get("dashstart");
		spr_dashstop = sprite_get("dashstop");
		spr_dashturn = sprite_get("dashturn");
		
		//Air
		spr_jumpstart = sprite_get("jumpstart");
		spr_jump = sprite_get("jump");
		spr_doublejump = sprite_get("doublejump");
		spr_walljump = sprite_get("walljump");
		spr_pratfall = sprite_get("pratfall");
		spr_land = sprite_get("land");
		spr_landinglag = sprite_get("landinglag");
		
		//Dodge
		spr_parry = sprite_get("parry");
		// Parry
		dodge_startup_frames = 1;dodge_active_frames = 3;dodge_recovery_frames = 4;
		spr_roll_forward = sprite_get("roll_forward");
		spr_roll_backward = sprite_get("roll_backward");
		// Tech roll
		techroll_startup_frames = 1;techroll_active_frames = 4;techroll_recovery_frames = 4;
		// Roll
		roll_forward_startup_frames = 1;roll_forward_active_frames = 4;roll_forward_recovery_frames = 4;
		roll_back_startup_frames = 1;roll_back_active_frames = 4;roll_back_recovery_frames = 4;
		spr_airdodge = sprite_get("airdodge");
		spr_airdodge_waveland = sprite_get("waveland");
		spr_tech = sprite_get("tech");
		
		//Hurt
		spr_hurt = sprite_get("hurt");
		spr_bighurt = sprite_get("bighurt");
		spr_hurtground = sprite_get("hurtground");
		spr_uphurt = sprite_get("uphurt");
		spr_downhurt = sprite_get("downhurt");
		spr_bouncehurt = sprite_get("bouncehurt");
		
		reset_attack_value(AT_DSPECIAL, AG_SPRITE);
		reset_attack_value(AT_DSPECIAL, AG_AIR_SPRITE);
		reset_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
		reset_attack_value(AT_TAUNT, AG_SPRITE);
		reset_attack_value(AT_PHONE, AG_SPRITE);
		
		spr_lookup = sprite_get("lookup");
		kob_sleep_sprite = sprite_get("sleep");
		kob_sleep_sprite_air = sprite_get("sleep");
	}else{
		hurtbox_spr = sprite_get("hurtbox_mechless");
		crouchbox_spr = sprite_get("hurtbox_crouch_mechless");
		knockback_adj = .95;
		walk_speed = 4;
		walk_accel = 0.1;
		initial_dash_speed = 4;
		dash_speed = 9;
		dash_turn_accel = 1;
		ground_friction = 0.3;
		wave_friction = 0.08;
		//leave_ground_max = 7;
		//max_jump_hsp = 7;
		leave_ground_max = maxspd;
		max_jump_hsp = maxspd-1;
		air_max_speed = 4;
		air_accel = 0.225;
		gravity_speed = 0.5;
		max_djumps = 1;
		
		walk_anim_speed = 0.125;
		dash_anim_speed = 0.2;
		
		land_sound = asset_get("sfx_land_med");
		landing_lag_sound = asset_get("sfx_land");
		
		//Ground
	    spr_idle = sprite_get("idle_mechless");
	    spr_crouch = sprite_get("crouch_mechless");
		spr_walk = sprite_get("dash_mechless");
		spr_walkturn = sprite_get("walkturn_mechless");
		spr_dash = sprite_get("dash_mechless");
		spr_dashstart = sprite_get("dashstart_mechless");
		spr_dashstop = sprite_get("dashstop_mechless");
		spr_dashturn = sprite_get("dashturn_mechless");
		
		//Air
		spr_jumpstart = sprite_get("jumpstart_mechless");
		spr_jump = sprite_get("jump_mechless");
		spr_doublejump = sprite_get("doublejump_mechless");
		spr_walljump = sprite_get("walljump_mechless");
		spr_pratfall = sprite_get("pratfall_mechless");
		spr_land = sprite_get("land_mechless");
		spr_landinglag = sprite_get("land_mechless");
		
		//Dodge
		spr_parry = sprite_get("parry_mechless");
		// Parry
		dodge_startup_frames = 1;dodge_active_frames = 1;dodge_recovery_frames = 4;
		spr_roll_forward = sprite_get("roll_mechless");
		spr_roll_backward = sprite_get("roll_mechless");
		// Tech roll
		techroll_startup_frames = 2;techroll_active_frames = 3;techroll_recovery_frames = 3;
		// Roll
		roll_forward_startup_frames = 2;roll_forward_active_frames = 3;roll_forward_recovery_frames = 3;
		roll_back_startup_frames = 2;roll_back_active_frames = 3;roll_back_recovery_frames = 3;
		spr_airdodge = sprite_get("airdodge_mechless");
		spr_airdodge_waveland = sprite_get("waveland_mechless");
		spr_tech = sprite_get("land_mechless");
		
		//Hurt
		spr_hurt = sprite_get("hurt_mechless");
		spr_bighurt = sprite_get("bighurt_mechless");
		spr_hurtground = sprite_get("hurtground_mechless");
		spr_uphurt = sprite_get("uphurt_mechless");
		spr_downhurt = sprite_get("downhurt_mechless");
		spr_bouncehurt = sprite_get("uphurt_mechless");
		
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_mechless"));
		set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_mechless_air"));
		set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_mechless_hurt"));
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_mechless"));
		set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("_phone_mechless"));
		
		spr_lookup = sprite_get("lookup_mechless");
		kob_sleep_sprite = sprite_get("sleep_mechless");
		kob_sleep_sprite_air = sprite_get("sleep_air_mechless");
	}
	inside_mech2 = inside_mech;