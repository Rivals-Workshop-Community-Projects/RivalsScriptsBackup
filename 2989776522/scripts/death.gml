// called when the character gets KO'd

inside_mech = true;

move_cooldown[AT_USPECIAL] = 0;
float = floatmax;
djumpfloat = 0;

sound_stop(sfx);
sound_stop(voice);

voicecooldown = 0; //attack sounds
voicecooldown2 = 0; //hurt sounds
voicecooldown3 = 0; //galaxy hit sounds

nspecial_charge = round(nspecial_charge/1.25);

var sonic = false;
var tails = false;
var knuckles = false;
var amy = false;
var shadow = false;
var silver = false;
var rouge = false;
var chaos = false;
var based_frog = false;
if("player" in last_player){
	with(last_player){
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
		}else if(string_count("Toadie", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Ribbit", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Ribble", string( get_char_info(player, INFO_STR_NAME) )) > 0
		|| string_count("Spike", string( get_char_info(player, INFO_STR_NAME) )) > 0 && "Spike" in self
		|| string_count("Frog", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Ranno", string( get_char_info(player, INFO_STR_NAME) )) > 0 
		|| string_count("Keroro", string( get_char_info(player, INFO_STR_NAME) )) > 0 || string_count("Croagunk", string( get_char_info(player, INFO_STR_NAME) )) > 0){
	    	with(other){based_frog = true;}
		}
	}
}

if(get_player_stocks(player) <= 1){ //last stock
	if(alt == -1){ //other alts idk
	    
	}else{ //eggman stuff
		if(voicemode == 0){ //adventure
			if(sonic || tails){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general death sfx
				rand = random_func(0, 11, true);
			    if(rand == 0){
			    	PlayVoiceClip("adv_no_way_i_cant_believe_this", 2);
			    }else if(rand == 1){
			    	PlayVoiceClip("adv_die", 2);
			    }else if(rand == 2){
			    	PlayVoiceClip("adv_i_cant_lose", 1.75);
			    }else if(rand == 3){
			    	PlayVoiceClip("adv_shouldve_tried_harder", 2.0);
			    }else if(rand == 4){
			    	PlayVoiceClip("adv_youre_better_than_i_expected", 2.0);
			    }else if(rand == 5){
			    	PlayVoiceClip("adv_ill_make_you_all_pay_for_this", 1.75);
			    }else if(rand == 6){
			    	PlayVoiceClip("adv_not_again_i_hate_you", 1.75);
			    }else if(rand == 7){
			    	PlayVoiceClip("adv_so_what_if_you_won_this_time", 1.75);
			    }else if(rand == 8){
			    	PlayVoiceClip("adv_this_isnt_the_end", 1.75);
			    }else if(rand == 9){
			    	PlayVoiceClip("adv_defeated_impossible_noo", 1.75);
			    }else if(rand == 10){
			    	PlayVoiceClip("adv_dies2", 1.75);
			    }
			}else if(rand >= 1){ //specific characters
				if(sonic){
					PlayVoiceClip("adv_i_hate_that_sonic", 1.75);
				}else if(tails){
					PlayVoiceClip("adv_i_cant_lose_to_tails", 1.75);
				}
			}
		}else if(voicemode == 1){ //modern
			if(sonic){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general death sfx
				rand = random_func(0, 5, true);
			    if(rand == 0){
			    	PlayVoiceClip("pollock_last_of_me", 2);
			    }else if(rand == 1){
			    	PlayVoiceClip("pollock_noo", 2);
			    }else if(rand == 2){
			    	PlayVoiceClip("pollock_dies4", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("pollock_i_cant_believe_this", 2);
			    }else if(rand == 4){
			    	PlayVoiceClip("pollock_wont_forget_this", 2);
			    }
		    }else if(rand >= 1){ //specific characters
				if(sonic){
					rand = random_func(2, 2, true);
				    if(rand == 0){
						PlayVoiceClip("pollock_everytime", 2);
				    }else if(rand == 1){
						PlayVoiceClip("pollock_this_isnt_over_blue_boy", 1.75);
				    }
				}
			}
		}else if(voicemode == 2){ //alfred
			if(sonic || tails /*|| amy*/ || shadow){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general death sfx
				rand = random_func(0, 8, true);
			    if(rand == 0){
			    	PlayVoiceClip("alfred_ahhmybones", 2.5);
			    }else if(rand == 1){
			    	PlayVoiceClip("alfred_dies", 2.5);
			    }else if(rand == 2){
			    	PlayVoiceClip("alfred_dies2", 2.5);
			    }else if(rand == 3){
			    	PlayVoiceClip("alfred_my_emeralds", 2.5);
			    }else if(rand == 4){
			    	PlayVoiceClip("alfred_dies4", 2);
			    }else if(rand == 5){
			    	PlayVoiceClip("alfred_police", 2);
			    }else if(rand == 6){
			    	PlayVoiceClip("alfred_what_the_actual_shit2", 2);
			    }else if(rand == 7){
			    	PlayVoiceClip("alfred_last_night", 2);
			    }
			}else if(rand >= 1){ //specific characters
				if(sonic){
					PlayVoiceClip("alfred_get_out_of_my_life_sonic", 1.75);
				}else if(tails){
					PlayVoiceClip("alfred_tails_mother", 1.75);
				}else if(shadow){
					rand = random_func(2, 2, true);
				    if(rand == 0){
						PlayVoiceClip("alfred_wtf_shadows_dick", 1.75);
				    }else if(rand == 1){
						PlayVoiceClip("alfred_come_back_here_shadow", 1.75);
				    }
				}
			}
		}else if(voicemode == 3){ //pingas
			if(rand == 0){ //general death sfx
				rand = random_func(0, 4, true);
			    if(rand == 0){
			    	PlayVoiceClip("pingas cry2", 2);
			    }else if(rand == 1){
			    	PlayVoiceClip("pingas dies", 2);
			    }else if(rand == 2){
			    	PlayVoiceClip("pingas_dies4", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("pingas_stroke", 2);
			    }
			}else if(rand >= 1){ //specific characters
				
			}
		}
	}
}else{
	if(alt == -1){ //other alts idk
	    
	}else{ //eggman stuff
		if(voicemode == 0){ //adventure
			if(sonic || tails || knuckles || chaos || based_frog){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand <= 1){ //general death sfx
				rand = random_func(0, 20, true);
			    if(rand == 0){
			    	PlayVoiceClip("adv_no_way_i_cant_believe_this", 2);
			    }else if(rand == 1){
			    	PlayVoiceClip("adv_dies", 1.75);
			    }else if(rand == 2){
			    	PlayVoiceClip("adv_you_little_pest", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("adv_you_little_fucks", 1.75);
			    }else if(rand == 4){
			    	PlayVoiceClip("adv_dont_think_youve_won", 1.75);
			    }else if(rand == 5){
			    	PlayVoiceClip("adv_ill_make_you_pay", 1.75);
			    }else if(rand == 6){
			    	PlayVoiceClip("adv_noo", 1.5);
			    }else if(rand == 7){
			    	PlayVoiceClip("adv_now_you_made_me_mad", 1.75);
			    }else if(rand == 8){
			    	PlayVoiceClip("adv_now_youve_done_it", 1.75);
			    }else if(rand == 9){
			    	PlayVoiceClip("adv_oh_no_my_power", 1.75);
			    }else if(rand == 10){
			    	PlayVoiceClip("adv_thats_it_im_gonna_destroy_you", 1.75);
			    }else if(rand == 11){
			    	PlayVoiceClip("adv_what", 1.5);
			    }else if(rand == 12){
			    	PlayVoiceClip("adv_hes_not_gonna_get_away", 1.5);
			    }else if(rand == 13){
			    	PlayVoiceClip("adv_i_cant_believe_this", 1.5);
			    }else if(rand == 14){
			    	PlayVoiceClip("adv_troublesome_fools", 1.75);
			    }else if(rand == 15){
			    	PlayVoiceClip("adv_bothersome_fools", 1.75);
			    }else if(rand == 16){
			    	PlayVoiceClip("adv_now_im_really_mad", 1.75);
			    }else if(rand == 17){
			    	PlayVoiceClip("adv_youll_regret_this", 1.75);
			    }else if(rand == 18){
			    	PlayVoiceClip("adv_youll_pay_for_this", 1.75);
			    }else if(rand == 19){
			    	PlayVoiceClip("adv_not_bad", 1.75);
			    }
			}else if(rand == 2){ //specific characters
				if(sonic){
					PlayVoiceClip("adv_i_hate_that_sonic", 1.75);
				}else if(tails){
					PlayVoiceClip("adv_now_youve_done_it_tails", 1.75);
				}else if(knuckles){
					PlayVoiceClip("adv_knuckles", 1.75);
				}else if(chaos){
					PlayVoiceClip("adv_chaos2", 1.75);
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
			if(rand <= 1){ //general death sfx
				rand = random_func(0, 13, true);if(inside_mech)rand = random_func(0, 15, true);
			    if(rand == 0){
			    	PlayVoiceClip("pollock_scream", 2);
			    }else if(rand == 1){
			    	PlayVoiceClip("pollock_dies", 2);
			    }else if(rand == 2){
			    	PlayVoiceClip("pollock_dies2", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("pollock_dies3", 2);
			    }else if(rand == 4){
			    	PlayVoiceClip("pollock_dies5", 2);
			    }else if(rand == 5){
			    	PlayVoiceClip("pollock_dies6", 2);
			    }else if(rand == 6){
			    	PlayVoiceClip("pollock_no", 2);
			    }else if(rand == 7){
			    	PlayVoiceClip("pollock_dies7", 2);
			    }else if(rand == 8){
			    	PlayVoiceClip("pollock_status_critical", 2);
			    }else if(rand == 9){
			    	PlayVoiceClip("pollock_dies8", 2);
			    }else if(rand == 10){
			    	PlayVoiceClip("pollock_look_what_youve_done", 2);
			    }else if(rand == 11){
			    	PlayVoiceClip("pollock_impossible", 2);
			    }else if(rand == 12){
			    	PlayVoiceClip("pollock_wont_forget_this", 2);
			    }else if(rand == 13){
			    	PlayVoiceClip("pollock_delicate_machine", 2);
			    }else if(rand == 14){
			    	PlayVoiceClip("pollock_dont_fall_apart_on_me_now", 2);
			    }
			}else if(rand == 2){ //specific characters
				if(sonic){
					rand = random_func(2, 7, true);
				    if(rand == 0){
						PlayVoiceClip("pollock_nasty_pincushion", 2);
				    }else if(rand == 1){
						PlayVoiceClip("pollock_blast_you_sonic", 1.75);
				    }else if(rand == 3){
						PlayVoiceClip("pollock_you_were_lucky_sonic", 2);
				    }else if(rand == 4){
						PlayVoiceClip("pollock_sonic_dont_think_youve_won_this", 2);
				    }else if(rand == 5){
						PlayVoiceClip("pollock_stubborn_little_pincushion_die_already", 2);
				    }else if(rand == 6){
						PlayVoiceClip("pollock_your_manners", 2);
				    }
				}else if(amy || shadow || silver){
					rand = random_func(2, 2, true);
				    if(rand == 0){
						PlayVoiceClip("pollock_nasty_pincushion", 2);
				    }else if(rand == 1){
						PlayVoiceClip("pollock_stubborn_little_pincushion_die_already", 2);
				    }
				}
			}
		}else if(voicemode == 2){ //alfred
			if(sonic || tails || amy || shadow || silver){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general death sfx
				rand = random_func(0, 18, true);
			    if(rand == 0){
			    	PlayVoiceClip("alfred_ahhmybones", 2.5);
			    }else if(rand == 1){
			    	PlayVoiceClip("alfred_dies", 2.5);
			    }else if(rand == 2){
			    	PlayVoiceClip("alfred_dies2", 2.5);
			    }else if(rand == 3){
			    	PlayVoiceClip("alfred_my_emeralds", 2.5);
			    }else if(rand == 4){
			    	PlayVoiceClip("alfred_wtf", 2.5);
			    }else if(rand == 5){
			    	PlayVoiceClip("alfred_dies3", 2.5);
			    }else if(rand == 6){
			    	PlayVoiceClip("alfred_piss_my_own_ass", 2.5);
			    }else if(rand == 7){
			    	PlayVoiceClip("alfred_what_in_sam_hell", 2.5);
			    }else if(rand == 8){
			    	PlayVoiceClip("alfred_dies4", 2);
			    }else if(rand == 9){
			    	PlayVoiceClip("alfred_my_followerbase", 2);
			    }else if(rand == 10){
			    	PlayVoiceClip("alfred_son_of_a_bitch", 2);
			    }else if(rand == 11){
			    	PlayVoiceClip("alfred_what_the_actual_shit", 2);
			    }else if(rand == 12){
			    	PlayVoiceClip("alfred_omg", 2);
			    }else if(rand == 13){
			    	PlayVoiceClip("alfred_why_doing_this", 2);
			    }else if(rand == 14){
			    	PlayVoiceClip("alfred_who_posted", 2);
			    }else if(rand == 15){
			    	PlayVoiceClip("alfred_dies7", 2);
			    }else if(rand == 16){
			    	PlayVoiceClip("alfred_dies8", 2);
			    }else if(rand == 17){
			    	PlayVoiceClip("alfred_ow_fuck", 2);
			    }
			}else if(rand >= 1){ //specific characters
				if(sonic || amy || silver){
					rand = random_func(2, 3, true);
				    if(rand == 0){
						PlayVoiceClip("alfred_nasty_hedgehog", 2.5);
				    }else if(rand == 1){
						PlayVoiceClip("alfred_you_fucking_cuckhogs", 2.5);
				    }else if(rand == 2){
						PlayVoiceClip("alfred_cucked_by_a_hedgehog", 2.5);
				    }
				}else if(tails){
					PlayVoiceClip("alfred_tails_mother", 2.5);
				}else if(shadow){
					rand = random_func(2, 4, true);
				    if(rand == 0){
						PlayVoiceClip("alfred_wtf_shadows_dick", 2);
				    }else if(rand == 1){
						PlayVoiceClip("alfred_nasty_hedgehog", 2.5);
				    }else if(rand == 2){
						PlayVoiceClip("alfred_you_fucking_cuckhogs", 2.5);
				    }else if(rand == 3){
						PlayVoiceClip("alfred_cucked_by_a_hedgehog", 2.5);
				    }
				}
			}
		}else if(voicemode == 3){ //pingas
			if(sonic || amy || shadow || silver){
				rand = random_func(1, 3, true);
			}else{
				rand = 0;
			}
			if(rand == 0){ //general death sfx
				rand = random_func(0, 6, true);
			    if(rand == 0){
			    	PlayVoiceClip("pingas cry", 2);
			    }else if(rand == 1){
			    	PlayVoiceClip("pingas dies2", 2);
			    }else if(rand == 2){
			    	PlayVoiceClip("pingas dies3", 2);
			    }else if(rand == 3){
			    	PlayVoiceClip("pingas this is embarrassing", 2);
			    }else if(rand == 4){
			    	PlayVoiceClip("pingas_dies5", 2);
			    }else if(rand == 5){
			    	PlayVoiceClip("pingas_dies6", 2);
			    }
			}else if(rand >= 1){ //specific characters
				if(sonic || amy || shadow || silver){
					PlayVoiceClip("pingas i hate that hedgehog", 2);
				}
			}
		}
	}
}

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(voicemode != 3){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
	//}