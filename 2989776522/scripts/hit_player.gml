//hitboxes that cause custom fire status effect
if(my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num != 7 || my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2){
	if(!hit_player_obj.sol_burn){
		/*rand = random_func(0, 3, true);
		if(rand <= 1){
			sound_stop(voice);
			voice = sound_play(sound_get("fire"));
		}*/
	}
	//if(my_hitboxID.hbox_num == 1){
		hit_player_obj.sol_burn = true;
	    hit_player_obj.sol_burn_id = id;
		hit_player_obj.sol_burn_timer = 90;
	//}
}

//hitboxes that cause custom bury status effect
if(my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num >= 5 && my_hitboxID.hbox_num <= 6 || my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 7){
	if(!hit_player_obj.villager_bury && hit_player_obj.villager_bury_cooldown <= 0
	&& (!hit_player_obj.free)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
		hit_player_obj.free = false;hit_player_obj.orig_knock = 0;
        hit_player_obj.should_make_shockwave = false;
		
		hit_player_obj.villager_bury = true;
	    hit_player_obj.villager_bury_id = id;
	    var playerdmg = get_player_damage(hit_player_obj.player)/2;
		hit_player_obj.villager_bury_timer = round(30+playerdmg)+strong_charge;
		hit_player_obj.villager_bury_hitpause = true;
		//hit_player_obj.y += 10;
	}
}

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	sound_play(sound_get("laser shot hit"),false,noone,1.0);
}

if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
	hit_player_obj.should_make_shockwave = false;
	my_hitboxID.hsp = 0;my_hitboxID.vsp = -1;
	my_hitboxID.hitbox_timer = max(my_hitboxID.hitbox_timer, 45);
}

if(my_hitboxID.attack == AT_BAIR){
	if(my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5)sound_play(asset_get("sfx_zetter_upb_hit"),false,noone,1.0);
	if(my_hitboxID.hbox_num <= 3)hit_player_obj.should_make_shockwave = false;
}

if(my_hitboxID.attack == AT_UAIR){
	if(my_hitboxID.hbox_num == 5){
		hit_player_obj.should_make_shockwave = false;hit_player_obj.y -= 25;
		hit_player_obj.old_hsp = old_hsp;//hit_player_obj.old_vsp = old_vsp;
	}else if(my_hitboxID.hbox_num == 7){
		hit_player_obj.should_make_shockwave = false;
		sound_play(asset_get("sfx_blow_medium3"),false,noone,1.0);
	}
}

if(my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1){
	sound_play(sound_get("bumper"),false,noone,1.25);
}

if(my_hitboxID.attack == AT_DATTACK && (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 9)){
	if(my_hitboxID.hbox_num != 9)hit_timer = 25;
	if(!hit_player_obj.free){
		hit_player_obj.orig_knock *= 0.5;
		hit_player_obj.old_vsp = 0;
	}
}

//heavy metal sfx
if(my_hitboxID.attack == AT_DTILT && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4)
|| my_hitboxID.attack == AT_DATTACK && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6)
|| my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 8 || my_hitboxID.hbox_num == 9)
|| my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 1){
	sound_play(asset_get("sfx_shovel_hit_heavy1"));
}
//metal sfx
if(my_hitboxID.attack == AT_DATTACK && (my_hitboxID.hbox_num != 1 && my_hitboxID.hbox_num != 5 && my_hitboxID.hbox_num != 6 && my_hitboxID.hbox_num != 7 && my_hitboxID.hbox_num != 8)
|| my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2 || my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1
|| my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num != 8 && my_hitboxID.hbox_num != 9 || my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 2
|| my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 5){
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
}


//sharp laser hit fx
if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
	var sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big);sharphitfx.draw_angle = random_func(0, 720, true);
	sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big);sharphitfx.draw_angle = random_func(5, 720, true);
	var sharphitfx2 = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit);sharphitfx2.draw_angle = random_func(4, 720, true);
	
	if("should_make_shockwave" in hit_player_obj && hit_player_obj.should_make_shockwave){
		sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_lightbeams);sharphitfx.draw_angle = random_func(1, 720, true);
		sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_lightbeams);sharphitfx.draw_angle = random_func(2, 1080, true);
		sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_lightbeams);sharphitfx.draw_angle = random_func(3, 1420, true);
		sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big2);sharphitfx.draw_angle = random_func(6, 720, true);
		sharphitfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-35,fx_sharphit_big2);sharphitfx.draw_angle = random_func(7, 720, true);
	}
}

if(hit_player_obj.should_make_shockwave){
	var sonic = false;
	var tails = false;
	var knuckles = false;
	var amy = false;
	var shadow = false;
	var silver = false;
	var rouge = false;
	var chaos = false;
	var based_frog = false;
	var yucky_rat = false;
	with(hit_player_obj){
    	if((string_count("Sonic", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Sanic", string( get_char_info(player, INFO_STR_NAME) )) > 0)
    	&& string_count("metal", string_lower( get_char_info(player, INFO_STR_NAME) )) <= 0 && string_count("mecha", string_lower( get_char_info(player, INFO_STR_NAME) )) <= 0){
	    	with(other){sonic = true;}
		}else if(string_count("Tails", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){tails = true;}
		}else if(string_count("Knuckles", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){knuckles = true;}
		}else if(string_count("Amy", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){amy = true;}
		}else if(string_count("Shadow", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){shadow = true;}
		}else if(string_count("Silver", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){silver = true;}
		}else if(string_count("Rouge", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){rouge = true;}
		}else if(string_count("Chaos 0", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Chaos Zero", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){chaos = true;}
		}else if(string_count("Toadie", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Spike", string( get_char_info(player, INFO_STR_NAME) )) > 0 && "Spike" in self){
	    	with(other){based_frog = true;}
		}else if(string_count("skycrafter", string_lower(get_player_name(player))) > 0 || string_count("Bar Reygard", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Amber", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){yucky_rat = true;}
		}
	}
	
	rand = random_func(1, 2, true);
	if(rand == 0 && voicecooldown3 <= 0){
		voicecooldown3 = 90;
		if(voicemode == 0){ //adventure
			if(sonic || tails || amy || chaos || based_frog){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general kill sfx
				rand = random_func(0, 24, true);
			    if(rand == 0){
			    	PlayVoiceClip("adv_hohoho", 1.25);
			    }else if(rand == 1){
			    	PlayVoiceClip("adv_i_win", 1.75);
			    }else if(rand == 2){
			    	PlayVoiceClip("adv_its_no_use", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("adv_farewell", 1.75);
			    }else if(rand == 4){
			    	PlayVoiceClip("adv_hohohoho", 1.75);
			    }else if(rand == 5){
			    	PlayVoiceClip("adv_laugh", 1.75);
			    }else if(rand == 6){
			    	PlayVoiceClip("adv_laugh2", 1.75);
			    }else if(rand == 7){
			    	PlayVoiceClip("adv_laugh3", 1.75);
			    }else if(rand == 8){
			    	PlayVoiceClip("adv_laugh4", 1.75);
			    }else if(rand == 9){
			    	PlayVoiceClip("adv_haha_hows_that", 1.75);
			    }else if(rand == 10){
			    	PlayVoiceClip("adv_haha_piece_of_cake", 1.75);
			    }else if(rand == 11){
			    	PlayVoiceClip("adv_laugh5", 1.75);
			    }else if(rand == 12){
			    	PlayVoiceClip("adv_laugh6", 1.75);
			    }else if(rand == 13){
			    	if(tails){
			    		PlayVoiceClip("adv_ive_got_you_now_tails", 1.75);
			    	}else{
			    		PlayVoiceClip("adv_ive_got_you_now", 1.75);
			    	}
			    }else if(rand == 14){
			    	PlayVoiceClip("adv_gotcha", 1.75);
			    }else if(rand == 15){
			    	PlayVoiceClip("adv_you_think_you_can_keep_up_with_me", 1.75);
			    }else if(rand == 16){
			    	PlayVoiceClip("adv_youre_not_getting_away_that_easy", 1.75);
			    }else if(rand == 17){
			    	PlayVoiceClip("adv_werent_expecting_that_were_you", 1.75);
			    }else if(rand == 18){
			    	PlayVoiceClip("adv_aha", 1.75);
			    }else if(rand == 19){
			    	PlayVoiceClip("adv_ha_i_bet_you_werent_expecting_this", 1.75);
			    }else if(rand == 20){
			    	PlayVoiceClip("adv_hoho_why_dont_you_give_up", 1.75);
			    }else if(rand == 21){
			    	PlayVoiceClip("adv_ohoh", 1.75);
			    }else if(rand == 22){
			    	PlayVoiceClip("adv_at_least_make_it_challenging", 1.75);
			    }else if(rand == 23){
			    	if(tails){
			    		PlayVoiceClip("adv_better_luck_next_time_fox", 1.75);
			    	}else{
			    		PlayVoiceClip("adv_better_luck_next_time", 1.75);
			    	}
			    }else if(rand == 24){
			    	PlayVoiceClip("adv_that_all_you_got", 1.75);
			    }else if(rand == 25){
			    	PlayVoiceClip("adv_that_all_youve_got", 1.75);
			    }else if(rand == 26){
			    	PlayVoiceClip("adv_time_to_meet_your_maker", 1.75);
			    }else if(rand == 27){
			    	PlayVoiceClip("adv_i_wont_go_down_that_easy", 1.75);
			    }else if(rand == 28){
			    	PlayVoiceClip("adv_ill_destroy_you_all", 1.75);
			    }else if(rand == 29){
			    	PlayVoiceClip("adv_ill_show_you_what_real_evil_is", 1.75);
			    }else if(rand == 30){
			    	PlayVoiceClip("adv_laugh7", 1.75);
			    }else if(rand == 31){
			    	PlayVoiceClip("adv_laugh8", 1.75);
			    }else if(rand == 32){
			    	PlayVoiceClip("adv_laugh9", 1.75);
			    }
			}else if(rand >= 1){ //specific characters
				if(sonic){
					PlayVoiceClip("adv_dont_get_any_ideas_sonic", 1.75);
				}else if(tails){
					rand = random_func(2, 3, true);
				    if(rand == 0){
						PlayVoiceClip("adv_ive_got_you_now_tails", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("adv_goodbye_tails", 1.75);
				    }else if(rand == 2){
						PlayVoiceClip("adv_better_luck_next_time_fox", 1.75);
				    }
				}else if(amy){
					PlayVoiceClip("adv_give_up_amy", 1.75);
				}else if(chaos){
					PlayVoiceClip("adv_chaos", 1.75);
				}else if(based_frog){
					rand = random_func(2, 3, true);
				    if(rand == 0){
						PlayVoiceClip("adv_the_frog", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("adv_get_that_frog", 1.75);
				    }else if(rand == 2){
						PlayVoiceClip("adv_frog", 1.75);
				    }
				}
			}
		}else if(voicemode == 1){ //modern
			if(sonic || amy || shadow || silver){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general kill sfx
				rand = random_func(0, 17, true);
			    if(rand == 0){
			    	PlayVoiceClip("pollock_giving_up_already", 1.25);
			    }else if(rand == 1){
			    	PlayVoiceClip("pollock_laugh", 1.75);
			    }else if(rand == 2){
			    	PlayVoiceClip("pollock_a_hit_how_delightful", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("pollock_hope_youve_said_your_goodbyes", 2);
			    }else if(rand == 4){
			    	PlayVoiceClip("pollock_out_of_my_sight", 2);
			    }else if(rand == 5){
			    	PlayVoiceClip("pollock_how_do_you_like_that", 2);
			    }else if(rand == 6){
			    	if(sonic){
			    		PlayVoiceClip("pollock_not_good_enough_sonic", 1.75);
			    	}else{
			    		PlayVoiceClip("pollock_not_good_enough", 1.75);
			    	}
			    }else if(rand == 7){
			    	if(sonic){
			    		PlayVoiceClip("pollock_i_expected_more_sonic", 1.75);
			    	}else{
			    		PlayVoiceClip("pollock_i_expected_more", 1.75);
			    	}
			    }else if(rand == 8){
			    	PlayVoiceClip("pollock_laugh2", 1.75);
			    }else if(rand == 9){
			    	if(sonic){
			    		PlayVoiceClip("pollock_prepare_to_be_sunk_sonic", 1.75);
			    	}else{
			    		PlayVoiceClip("pollock_prepare_to_be_sunk", 1.75);
			    	}
			    }else if(rand == 10){
			    	PlayVoiceClip("pollock_silence", 2);
			    }else if(rand == 11){
			    	PlayVoiceClip("pollock_laugh3", 1.75);
			    }else if(rand == 12){
			    	PlayVoiceClip("pollock_laugh4", 1.75);
			    }else if(rand == 13){
			    	PlayVoiceClip("pollock_laugh5", 1.75);
			    }else if(rand == 14){
			    	PlayVoiceClip("pollock_laugh6", 1.65);
			    }else if(rand == 15){
			    	PlayVoiceClip("pollock_laugh7", 1.65);
			    }else if(rand == 16){
			    	PlayVoiceClip("pollock_laugh8", 1.65);
			    }
			    if(my_hitboxID.attack == AT_BAIR){
					rand = random_func(2, 3, true);
					if(rand == 0){
				    	PlayVoiceClip("pollock_burn_to_ashes", 1.75);
				    }
				}
			}else if(rand >= 1){ //specific characters
				if(sonic){
					rand = random_func(2, 8, true);
				    if(rand == 0){
						PlayVoiceClip("pollock_heres_one_for_the_road_sonic", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("pollock_check_mate_sonic", 1.75);
				    }else if(rand == 2){
						PlayVoiceClip("pollock_are_you_fast_enough_to_dodge_this", 1.75);
				    }else if(rand == 3){
						PlayVoiceClip("pollock_not_good_enough_sonic", 1.75);
				    }else if(rand == 4){
						PlayVoiceClip("pollock_i_expected_more_sonic", 1.75);
				    }else if(rand == 5){
						PlayVoiceClip("pollock_you_unexpecting_little_hedgehog", 1.75);
				    }else if(rand == 6){
						PlayVoiceClip("pollock_begone_hedgepig", 1.75);
				    }else if(rand == 7){
						PlayVoiceClip("pollock_prepare_to_be_sunk_sonic", 1.75);
				    }
				}else if(amy || silver){
					rand = random_func(2, 2, true);
				    if(rand == 0){
						PlayVoiceClip("pollock_you_unexpecting_little_hedgehog", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("pollock_begone_hedgepig", 1.75);
				    }
				}else if(shadow){
					rand = random_func(2, 3, true);
				    if(rand == 0){
						PlayVoiceClip("pollock_are_you_fast_enough_to_dodge_this", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("pollock_you_unexpecting_little_hedgehog", 1.75);
				    }else if(rand == 2){
						PlayVoiceClip("pollock_begone_hedgepig", 1.75);
				    }
				}
			}
		}else if(voicemode == 2){ //alfred
			if(sonic /*|| tails*/ || knuckles || amy || shadow || yucky_rat){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general kill sfx
				rand = random_func(0, 11, true);
			    if(rand == 0){
			    	PlayVoiceClip("alfred_you_fool", 2);
			    }else if(rand == 1){
			    	PlayVoiceClip("alfred_you_are_not_allowed", 2);
			    }else if(rand == 2){
			    	PlayVoiceClip("alfred_told_you_not_to_fuck", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("alfred_going_to_kill_you", 2);
			    }else if(rand == 4){
			    	PlayVoiceClip("alfred_shutup3", 1.75);
			    }else if(rand == 5){
			    	if(sonic || tails || knuckles || amy || shadow || silver || rouge || yucky_rat){
			    		PlayVoiceClip("alfred_vine_compilations_rodent", 2);
			    	}else{
			    		PlayVoiceClip("alfred_vine_compilations", 2);
			    	}
			    }else if(rand == 6){
			    	PlayVoiceClip("alfred_garbage2", 2);
			    }else if(rand == 7){
			    	PlayVoiceClip("alfred_stfu", 2);
			    }else if(rand == 8){
			    	PlayVoiceClip("alfred_obama", 2);
			    }else if(rand == 9){
			    	PlayVoiceClip("alfred_laugh3", 1.75);
			    }else if(rand == 10){
			    	PlayVoiceClip("alfred_purple_background", 1.75);
			    }
			}else if(rand >= 1){ //specific characters
				if(sonic){
					rand = random_func(2, 3, true);
				    if(rand == 0){
						PlayVoiceClip("alfred_sonic_ive_had_enough", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("alfred_thats_right_sonic", 1.75);
				    }else if(rand == 2){
						PlayVoiceClip("alfred_sonics_finally_dead", 3);
				    }
				}else if(knuckles){
					PlayVoiceClip("alfred_thats_right_sonic_knuckles", 1.75);
				}else if(amy){
					rand = random_func(2, 3, true);
				    if(rand == 0){
						PlayVoiceClip("alfred_amy_where", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("alfred_amy_plank", 1.75);
				    }else if(rand == 2){
						PlayVoiceClip("alfred_amy_get_outta_here", 2.5);
				    }
				}else if(shadow){
					rand = random_func(2, 2, true);
				    if(rand == 0){
						PlayVoiceClip("alfred_shadow_bitchass", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("alfred_shadow_small_dick", 1.75);
				    }
				}else if(yucky_rat){
					PlayVoiceClip("alfred_perish_rodent", 1.75);
				}
			}
		}
	}
}

//charge final smash when projectiles hit
if("fs_charge" in self && my_hitboxID.type == 2){
    fs_charge += my_hitboxID.damage;
}

if(my_hitboxID.type == 1){nspecial_charge += round((my_hitboxID.damage*1.25));}

can_summon_mech = true;

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	if(voicemode != 3){
	    sound_stop(voice)
	    voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
	}