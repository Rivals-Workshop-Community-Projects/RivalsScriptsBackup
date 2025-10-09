//This Event Changes Gameplay every frame

//var ror_addition_type = 1 //-1 for removal
//with ror_temp {
with oPlayer {
	if player == obj_stage_main.ror_temp.player {
		ror_addition_type = obj_stage_main.ror_temp.ror_addition_type;
		switch(obj_stage_main.ror_temp_item_rarity) {
			case "L":
				ror_item_count_legends += 1 * ror_addition_type;
			break;
			case "E":
				ror_item_count_epics += 1 * ror_addition_type;
			break;
			case "R":
				ror_item_count_rares += 1 * ror_addition_type;
			break;
			case "C":
				ror_item_count_commons += 1 * ror_addition_type;
			break;
		}
		//		
		switch(obj_stage_main.ror_temp_item_name) {
			//Commons
			case "Crazy Luck": //Temp Item. Very Not Balanced
				ror_luck += obj_stage_main.ror_luck_c * ror_addition_type * obj_stage_main.luck_point_scaling;
				ror_card_daves[0] += ror_addition_type;
			break;
			case "Fast Movement":
				ror_card_fast_movement += 1 * ror_addition_type;
				//
				//walk_speed += 1;
				//walk_accel += .1;
				//dash_speed += 1;
				//initial_dash_speed += 1;
				//
			break;
			case "Lower Friction":
				ror_card_lower_friction += 1 * ror_addition_type;
				//
				//ground_friction *= 0.75; //.85
				//
			break;
			case "Floaty Faller":
				ror_card_floaty_faller += 1 * ror_addition_type;
				//
				//max_fall -= 1;
				//max_fall = clamp(max_fall, 1, max_fall);
				//
			break;
			case "Lottery Loser":
				ror_yuuko_pity += 1 * ror_addition_type;
				ror_yuuko_pity = clamp(ror_yuuko_pity, 0, 9999); //Can't go below 1 for whatever reason
				if (ror_addition_type == 1) {
					ror_luck -= 10 * obj_stage_main.luck_point_scaling;
				}
			break;
			case "Jump Man":
				ror_card_jump_man += 1 * ror_addition_type;
			
				//jump_speed += * ror_addition_type;
				//djump_speed += * ror_addition_type;
			break;
			case "Crowbar":
				ror_crowbars += 1 * ror_addition_type;
			break;
			case "Damage Buff":
				if (ror_addition_type == 1) {
					ror_next_damage_buff++;
				}
			break;
			case "Quick Repair":
				ror_card_quick_repair += 1 * ror_addition_type;
			break;
			case "Reconstruct":
				ror_card_change_stage += 1 * ror_addition_type;
				if (ror_addition_type == 1) {
					ror_change_stage++;
				}			
			break;
			case "Spam Mail":
				//ror_luck += ror_addition_type == 1 ? ror_card_spam * obj_stage_main.luck_point_scaling : (ror_card_spam - 1) * -obj_stage_main.luck_point_scaling;
				ror_luck += 5 * ror_addition_type * obj_stage_main.luck_point_scaling;
				ror_card_spam += 1 * ror_addition_type;
			break;
			case "New Adventure":
				ror_max_rerolls += 1 * ror_addition_type;
				if (ror_addition_type == 1) {
					ror_rerolls++;
				} else {
					ror_rerolls = clamp(ror_rerolls, 0, ror_max_rerolls);
				}					
			break;
			case "Funky Tea":
				ror_card_funky_tea += 1 * ror_addition_type;
				ror_luck += obj_stage_main.ror_luck_funky_tea * ror_addition_type * obj_stage_main.luck_point_scaling;
			break;
			case "Infection":
				ror_card_install_infection += 1 * ror_addition_type;
			break;	
			case "Wall Jump Gaming":
				ror_card_wj_height += 1 * ror_addition_type;
			break;
			case "Mystery Egg":
				ror_card_eggs += 1 * ror_addition_type;
				ror_eggs += 1 * ror_addition_type * (obj_stage_main.egg_only ? 2 : 1);
				ror_eggs = clamp(ror_eggs, 0, 999);
			break;
			case "Clean Slate":
				ror_card_clean_sweep += 1 * ror_addition_type;
			break;		
			case "Tidal Flow":
				ror_card_tidal_flow += 1 * ror_addition_type;
			break;
			case "Burst of Speed":
				ror_card_install_burst += 1 * ror_addition_type;
			break;
			case "Reaper's Impulse":
				ror_card_install_impulse += 1 * ror_addition_type;
			break;
			case "Sturdy Buildup":
				ror_card_install_sturdy += 1 * ror_addition_type;
			break;
			case "Light Training":
				ror_card_install_training += 1 * ror_addition_type;
			break;			
			case "Fast Food":
				ror_card_install_fast_food += 1 * ror_addition_type;
			break;
			case "Micro Manage":
				ror_card_single_reroll += 1 * ror_addition_type;
			break;			
			case "Cubed":
			case "Squared":
				ror_card_square += 1 * ror_addition_type;
			break;			
			case "Floatation Device":
				ror_card_floatation_device += 1 * ror_addition_type;
			break;
            case "Charge Champ":
                ror_card_install_charge_champ += 1 * ror_addition_type;
            break;
            case "Boost of the Abyss":
                ror_card_install_abyss_boost += 1 * ror_addition_type;
            break;
            case "The Floor is Lava":
                ror_card_floor_lava += 1 * ror_addition_type;
                ror_luck += obj_stage_main.ror_luck_funky_tea * ror_addition_type * obj_stage_main.luck_point_scaling;
            break;            
			case "Reckless Greed":
                ror_card_reckless_greed += 1 * ror_addition_type;
                ror_luck += obj_stage_main.ror_luck_funky_tea * ror_addition_type * obj_stage_main.luck_point_scaling;
            break;			
			case "Lens-Maker's":
                ror_card_glasses += 1 * ror_addition_type;
            break;	
			case "Nice Throw!":
                ror_card_nice_throw += 1 * ror_addition_type;
            break;
			//End of Commons
			
			//Rares
			case "Crazy Luck+": //Temp Item. Very Not Balanced
				ror_luck += obj_stage_main.ror_luck_r * ror_addition_type * obj_stage_main.luck_point_scaling;
				ror_card_daves[1] += ror_addition_type;
			break;
			case "Get out of Jail Free":
				ror_card_jail += 1 * ror_addition_type;
			break;
			case "Biological Weapon":
				ror_card_biological_weapon += 1 * ror_addition_type;
			break;
			case "Pacify":
				ror_card_pacify += 1 * ror_addition_type;
			break;
			case "Weight Up":
				ror_card_weight_up += 1 * ror_addition_type;
			break;
			case "Better Rolls":
				ror_card_better_rolls += 1 * ror_addition_type;
			break;
			case "Lower Pratland":
				ror_card_lower_pratland += 1 * ror_addition_type;
			break;
			case "Fast Wavedash":
				ror_card_fast_waveland += 1 * ror_addition_type;
			break;
			case "Quick Drop":
				ror_card_quick_drop += 1 * ror_addition_type;
			break;
			case "Meteor Master":
				ror_card_meteor_master += 1 * ror_addition_type;
			break;
			case "Doctor's Orders":
				ror_card_doc_orders += 1 * ror_addition_type;
			break;
			case "Bottled Up":
				ror_card_bottled += 1 * ror_addition_type;
			break;
			case "Air Control":
				ror_card_air_control += 1 * ror_addition_type;
			break;
			case "Light Landing":
				ror_card_light_landing += 1 * ror_addition_type;
			break;
			case "Joycon Drift":
				ror_card_joycon_drift += 1 * ror_addition_type;
			break;       
			case "Torus' Ring":
				ror_card_torus_bands += 1 * ror_addition_type;
			break;
			case "Aerial Evasion":
				ror_card_aerial_evasion += 1 * ror_addition_type;
			break;
			case "Lower Gravity":
				ror_card_lower_gravity += 1 * ror_addition_type;
			break;
			case "Rough Guy":
				ror_card_rough_guy += 1 * ror_addition_type;
			break;
			case "Batter Up!":
				ror_card_batter_up += 1 * ror_addition_type;
			break;
			case "Heavy Hitter":
				ror_card_heavy_hitter += 1 * ror_addition_type;
				
				//ror_physical_bonus_damage += 1;
			break;
			case "Affordable Start Up":
				if (ror_addition_type == 1) {
					ror_next_start_buff++;
				}
			break;
			case "W Cancel":
				if (ror_addition_type == 1) {
					ror_next_whiff++;
				}
			break;
			case "Discord Ping":
				ror_card_discord += 1 * ror_addition_type;
			break;
			case "Shifting Strongs":
				ror_card_shifting_strongs += 1 * ror_addition_type;
			break;
			case "Grass Knot":
				ror_card_grass_knot += 1 * ror_addition_type;
			break;
			case "Made of Honor":
				ror_card_active_proj += 1 * ror_addition_type;
			break;
			case "Ricochet":
				ror_card_proj_bounce += 1 * ror_addition_type;
			break;
			case "Regenerative Shell":
				ror_card_regen_shell += 1 * ror_addition_type;
			break;
			case "Feeling Ghoulish":
				ror_card_ghoul += 1 * ror_addition_type;
			break;
			case "Leap of Faith":
				ror_card_crouch_jump += 1 * ror_addition_type;
			break;      
			case "Spicy":
				ror_card_spicy += 1 * ror_addition_type;
			break;
			case "Skedaddle":
				ror_card_funny_dash += 1 * ror_addition_type;
			break;
			case "Stopwatch":
				ror_card_install_stopwatch += 1 * ror_addition_type;
			break;
			case "Slip N' Slide":
				ror_card_install_slide += 1 * ror_addition_type;
			break;
			case "Objection!":
				ror_card_install_objection += 1 * ror_addition_type;
			break;
			case "Static Buildup":
				ror_card_install_static += 1 * ror_addition_type;
			break;        
			case "Nothing Happened":
				ror_card_install_nothing += 1 * ror_addition_type;
			break;
			case "Express Shipping":
				ror_card_express += 1 * ror_addition_type;
			break;	
			case "TNT Double Jump":
				ror_card_tnt_jump += 1 * ror_addition_type;
			break;		
			case "Frostbite":
				ror_card_frostbite += 1 * ror_addition_type;
			break;		
			case "Bah Bah":
				ror_card_dance_break += 1 * ror_addition_type;
			break;
            case "Bounce Bud":
                ror_card_bounce_bud += 1 * ror_addition_type;
            break;            
			case "Rerolling Stones":
                ror_card_rerolling_stone += 1 * ror_addition_type;
				//
				ror_max_rerolls += 1 * ror_addition_type;
				if (ror_addition_type == 1) {
					ror_rerolls++;
				} else {
					ror_rerolls = clamp(ror_rerolls, 0, ror_max_rerolls);
				}	
            break;
            case "Plasmic Precision":
                ror_card_plasmic_precision += 1 * ror_addition_type;
            break;
			case "Free Download":
				ror_card_free_download += 1 * ror_addition_type;
			
				//obj_stage_main.choose_extra[player] -= 1 * ror_addition_type;
			break;
			//Rare
			
			//Epics
			case "Crazy Luck++": //Temp Item. Very Not Balanced
				ror_luck += obj_stage_main.ror_luck_e * ror_addition_type * obj_stage_main.luck_point_scaling;
				ror_card_daves[2] += ror_addition_type;
			break;
			case "Extra Jumps":
				ror_card_extra_jumps += 1 * ror_addition_type;
			break;
			case "Parry Masher":
				ror_card_parry_masher += 1 * ror_addition_type;
			break;
			case "Higher Airspeed":
				ror_card_higher_airspeed += 1 * ror_addition_type;
			break;
			case "Stunning Projectiles":
				ror_card_stunning_projectiles += 1 * ror_addition_type;
			break;
			case "More Hitstun":
				ror_card_more_hitstun += 1 * ror_addition_type;
				print(ror_card_more_hitstun)
			break;
			case "Nap Time":
				ror_card_nap_time += 1 * ror_addition_type;
			break;
			case "Night Seclusion":
				ror_card_night_seclusion = ror_addition_type == 1 ? true : false;
			break;
			case "FLM Launcher": //10% Chance per Launcher
				ror_card_flm_launcher += 1 * ror_addition_type;
			break;		
			case "Protective Bubble": //5% Chance per
				ror_card_protective_bubble += 1 * ror_addition_type;
			break;		
			case "Air Dash": 
				ror_card_air_dash += 1 * ror_addition_type;
			break;		
			case "Vengeful Spirit": 
				ror_card_ghost += 1 * ror_addition_type;
			break;
			case "End of a Life":
				ror_card_bloodsucker += 1 * ror_addition_type;
			break;
			case "Today's Look":
				ror_card_todayslook += 1 * ror_addition_type;
			break;
			case "Hold It!":
				ror_card_holdit += 1 * ror_addition_type;
			break;
			case "Air Dodge Plus":
				ror_card_airdodge_plus += 1 * ror_addition_type;
			break;
			case "Platforming Pro":
				ror_card_platform_pro += 1 * ror_addition_type;
			break;
			case "Blob Expansion":		
				ror_card_blob_expansion += 1 * ror_addition_type;
			break;		
			case "Painted Projectiles":
				ror_card_paint += 1 * ror_addition_type;
			break;
			case "Body Build":
				ror_card_body_build += 1 * ror_addition_type;
			break;
			case "Vertical Weight":
				ror_card_vert_weight += 1 * ror_addition_type;
			break;
			case "Horizontal Weight":
				ror_card_hori_weight += 1 * ror_addition_type;
			break;
			case "Rocky Exoskeleton":
				ror_card_exo_skele += 1 * ror_addition_type;
			break;
			/*
			case "Sonic Boom":
				ror_card_sonic_boom += 1 * ror_addition_type;
			break;
			*/
			case "Sonic Boom":
				ror_card_sonic_boom += 1 * ror_addition_type;
			break;			
			case "Techsplosion":
				ror_card_techplosion += 1 * ror_addition_type;
			break;
			case "URGH":
				ror_card_urgh += 1 * ror_addition_type;
			break;
			case "Bullet Hell Buddy":
				ror_card_extra_bullets += 1 * ror_addition_type;
			break;
			case "Speedy Projectiles":
				ror_card_proj_speed += 1 * ror_addition_type;
			break;
			case "Bamboo It":
				ror_card_bamboo += 1 * ror_addition_type;
			break;
			case "Grapple Pie":
				ror_card_grapple_pie += 1 * ror_addition_type;
			break;
			case "Grapple Fritter":
				ror_card_grapple_fritter += 1 * ror_addition_type;
			break;
			case "Candy Grapple":
				ror_card_candy_grapple += 1 * ror_addition_type;
			break;
			case "Sugar Rush":
				ror_card_sugar_rush += 1 * ror_addition_type;
			break;
			case "Why Dose She Floot":
				ror_card_peach_float += 1 * ror_addition_type;
			break;
			case "Wall Cling":
				ror_card_cling += 1 * ror_addition_type;
				if !ror_starts_with_cling {
					can_wall_cling = ror_card_cling;
				}
			break;
			case "Sweet Pearlfection": //Gawr Gura Fish Item
				ror_card_pearl += 1 * ror_addition_type;
			break;
			case "Coughing Bomb":
				ror_card_coughing_bomb += 1 * ror_addition_type;
			break;
			case "Witch Brew!":
				ror_card_witch_brew += 1 * ror_addition_type;
			break;
			case "Reflector":
				ror_card_reflector += 1 * ror_addition_type;
			break;
			case "Mini Black Hole":
				ror_card_hole += 1 * ror_addition_type;
			break;
			case "Boomerang":
				ror_card_boomerang += 1 * ror_addition_type;
			break;
			case "Floaty Double Jump":
				ror_absa_djump += 1 * ror_addition_type;
			break;
			case "Green Thumb":
				ror_card_parry_heal += 1 * ror_addition_type;
			break;
			case "Flame Body":
				ror_card_flame_body += 1 * ror_addition_type;
			break;	
			case "Blazing Projectiles":
				ror_card_fire_proj += 1 * ror_addition_type;
			break;		
			case "Showstopper":
				ror_card_showstopper += 1 * ror_addition_type;
			break;		
			case "Jump Around":
				ror_card_xanne += 1 * ror_addition_type;
			break;
			case "Super Charge":
				ror_card_install_charge += 1 * ror_addition_type;
			break;
			case "Rise and Shine":
				ror_card_install_shine += 1 * ror_addition_type;
			break;
			case "Turnabout":
				ror_card_install_turnabout += 1 * ror_addition_type;
			break;        
			case "Pocket Sand":
				ror_card_pocket_sand += 1 * ror_addition_type;
			break;		
			case "Gold Rush":
				ror_card_gold_rush += 1 * ror_addition_type;
			break;
			case "Cold Embrace":
				ror_card_cold_embrace += 1 * ror_addition_type;
			break;		
			case "Levitate":
				ror_card_levitate += 1 * ror_addition_type;
			break;		
			case "Blood Clotting":
				ror_card_install_blood_clotting += 1 * ror_addition_type;
			break;
			case "Recharge":
				ror_card_install_recharge += 1 * ror_addition_type;
			break;     
			case "House Warming":
				ror_card_house += 1 * ror_addition_type;
			break;		
			case "Self-Destruct":
				ror_card_self_destruct += 1 * ror_addition_type;
			break;
			case "Fiery Spirit":
				ror_card_fiery += 1 * ror_addition_type;
			break;     
			case "A Platypus?":
				ror_card_install_platypus += 1 * ror_addition_type;
			break;	
			case "Air Force":
				ror_card_air_force += 1 * ror_addition_type;
			break;	
			case "Ground Control":
				ror_card_ground_control += 1 * ror_addition_type;
			break;
			case "Hex":
				ror_card_hex += 1 * ror_addition_type;
			break;		
			case "Chilled Projectiles":
				ror_card_chilled_projectiles += 1 * ror_addition_type;
			break;				
			case "Magic Missile":
				ror_card_install_magic_missile += 1 * ror_addition_type;
			break;		
			case "Fair Play":
				ror_card_fair_play += 1 * ror_addition_type;
			break;			
			case "Parasite":
				ror_card_parasite += 1 * ror_addition_type;
			break;
			case "Newton's Law":
				ror_card_grav_cancel += 1 * ror_addition_type;
			break;
			//Epic
					
			//Legendaries
			case "Crazy Luck+++": //Temp Item. Very Not Balanced
				ror_luck += obj_stage_main.ror_luck_l * ror_addition_type * obj_stage_main.luck_point_scaling;
				ror_card_daves[3] += ror_addition_type;
			break;
			case "Fuel Leak":
				ror_card_fuel_leak += 1 * ror_addition_type;
			break;
			case "Tough Guy":
				ror_card_toughguy += 1 * ror_addition_type;
			break;
			case "Quicker Charging":
				ror_card_quick_charge += 1 * ror_addition_type;
			break;
			case "OOOHHHHHH":
				ror_card_mordecai = ror_card_mordecai ? false : true; //for the dstrong sfx
			break;
			case "Neutral":
				ror_dattack_jc = ror_dattack_jc ? false : true; 
			break;
			case "Extra Selection":
				ror_card_extra_selection += 1 * ror_addition_type;
				if !ror_clone { //Clone Prevention
					obj_stage_main.choose_extra[player] += 1 * ror_addition_type;
				}
			break;		
			case "Miss-tery Bag":
				ror_card_miss_bag += 1 * ror_addition_type;
			
				//obj_stage_main.choose_extra[player] -= 1 * ror_addition_type;
			break;
			case "Fool's Gold":
				ror_card_fools_gold += 1 * ror_addition_type;
			break;
			case "Midas Punch":
				ror_card_luck_boost = ror_card_luck_boost ? false : true; 
			break;
			case "Clone Buddy Delivery":
				ror_card_clone_buddy += 1 * ror_addition_type;
				if !ror_clone { //Clone Prevention
					//obj_stage_main.choose_amount[player] -= 1 * ror_addition_type;
					obj_stage_main.choose_extra[player] -= 1 * ror_addition_type;
					//print(obj_stage_main.choose_extra);
				}
			break;
			case "Get Over Here":
				ror_card_get_over_here += 1 * ror_addition_type;
			break;
			case "Shield of Shielding":
				ror_card_shield += 1 * ror_addition_type;
			break;			
			case "Creepypasta":
				ror_card_creepypasta += 1 * ror_addition_type;
			break;
			case "Roundabout Relocation":
				ror_card_relocation += 1 * ror_addition_type;
			break;
			case "Infinite Wind Up":
				ror_card_inf_charge += 1 * ror_addition_type;
			break;
			case "Blackjack Install":
				ror_card_install_black_jack = ror_card_install_black_jack ? false : true; 
			break;
			case "Consume Nutrients":
				ror_card_consume += 1 * ror_addition_type; //ror_card_consume ? false : true;
			break;
			/*
			case "Nice Throw!":
				if ror_luck {
					ror_luck = 0;
				}
			break;
			*/
			case "Championship Belt":
				if !ror_clone { //Clone Prevention
					ror_card_belt += 1 * ror_addition_type;
				}
			break;
			case "Streamer Luck":
				ror_max_rerolls += 2 * ror_addition_type;
				//
				if (ror_addition_type == 1) {
					ror_rerolls = ror_max_rerolls;
				} else {
					ror_rerolls = clamp(ror_rerolls, 0, ror_max_rerolls);
				}					
			break;
			case "Remote Control":
				ror_card_control_proj += 1 * ror_addition_type;
			break;
			case "Mechanical Shotgun":
				ror_card_clock += 1 * ror_addition_type;
			break;
			case "A": //Gawr Gura Fish Item
				ror_card_gura += 1 * ror_addition_type;
			break;
			case "Toke": 
				ror_card_buffet += 1 * ror_addition_type;
			break;
			case "Master of One": 
				if !ror_clone { //Clone Prevention
					ror_card_master_of_one += 1 * ror_addition_type;
					if (!ror_card_master_of_one) { //Reset Attack
						move_cooldown[ror_master_attack] = 0;
						ror_master_attack = -4;
					}
				}
			break;
			case "Invisible Strongs":
				ror_card_invis += 1 * ror_addition_type;
			break;
			case "Transcendence":
				ror_card_trans_proj += 1 * ror_addition_type;
			break;
			case "Roman Cancel":
				ror_card_roman += 1 * ror_addition_type;
			break;		
			case "Techxecution":
				ror_card_techxecution += 1 * ror_addition_type;
			break;
			case "Based Department":
				ror_card_assist += 1 * ror_addition_type;
			break;
			case "Reverse Reverse":
				ror_card_r00 += 1 * ror_addition_type;
			break;
			case "Jolly Festivities":
				ror_card_jolly_gift += 1 * ror_addition_type;
			break;       
			case "Trash Baby":
				ror_card_trash_baby += 1 * ror_addition_type;
			break;	
			case "404 Error":
				ror_card_transparent += 1 * ror_addition_type;
			break;	
			case "Going for Seconds":
				ror_card_seconds += 1 * ror_addition_type;
			break;
			case "Acidic Potion":
				ror_card_acidic += 1 * ror_addition_type;
			break;	
			case "Computer Virus":
				ror_card_virus += 1 * ror_addition_type;
			break;	
			case "Transform":
				ror_card_transform += 1 * ror_addition_type;
			break;
			case "Slow Start":
				ror_card_install_slow_start += 1 * ror_addition_type;
			break;       
			case "Rise from Ash":
				ror_card_install_rise_from_ash += 1 * ror_addition_type;
			break;		
			case "Dark Reflection":
				ror_card_dark_reflection += 1 * ror_addition_type;
			break;	
			case "Peach Install":
				ror_card_install_peach += 1 * ror_addition_type;
			break;	
			case "Tasty Croissant":
				ror_card_install_ant += 1 * ror_addition_type;
			break;
			case "Great Asset":
				ror_card_great_asset += 1 * ror_addition_type;
			break;	
			case "Missile Defense":
				ror_card_missile_defense += 1 * ror_addition_type;
			break;
			case "Possession":
				ror_card_gravity += 1 * ror_addition_type;
			break;
			case "Rapid Fire":
				ror_card_rapid_fire += 1 * ror_addition_type;
			break;
			case "Picky Eater":
				ror_card_picky_eater += 1 * ror_addition_type;
			break;
			case "Dragoon":
				if !ror_clone { //Clone Prevention
					ror_card_dragoon += 1 * ror_addition_type;
				}
			break;
			case "Dogfight":
				ror_card_dogfight += 1 * ror_addition_type;
			break;
			case "Nuh Uh":
				ror_card_nuhuh += 1 * ror_addition_type;
			break;
			case "Trash Collector":
				ror_card_trash_collector += 1 * ror_addition_type;
			break;		
			case "Suicopath":
				ror_card_suicho += 1 * ror_addition_type;
			break;		
			case "Abyssal Shortcut":
				ror_card_abyss_teleport += 1 * ror_addition_type;
			break;			
			case "Persistent Pest":
				ror_card_persistent_pest += 1 * ror_addition_type;
			break;		
			case "Queen's Decree":
				ror_card_queen += 1 * ror_addition_type;
			break;
			case "Multi-Purpose": //Temp Item. Very Not Balanced
				ror_luck += obj_stage_main.ror_luck_r * ror_addition_type * obj_stage_main.luck_point_scaling;
				ror_card_multi_purpose += ror_addition_type;
			break;			
			case "Wish Upon a Star":
				ror_card_star += ror_addition_type;
			break;			
			case "Mega Mushroom":
				ror_card_mega += ror_addition_type;
			break;			
            case "Defensive Shield":
                ror_card_parry_armor += ror_addition_type;
            break;
			case "Lazy Bones":
				ror_card_lazy_bones += 1 * ror_addition_type;
			break;	
            case "Monkey Mode":
                ror_card_strong_parry += 1 * ror_addition_type;
            break;  
			case "Got your Back":
				ror_card_back += 1 * ror_addition_type;
			break;			
			case "BIRDBRAIN":
				ror_card_teto += 1 * ror_addition_type;
			break;		
			case "Reversi":
				ror_card_reversi += 1 * ror_addition_type;
			break;			
			case "Blizzard":
				ror_card_blizzard += 1 * ror_addition_type;
			break;		
			case "Decay":
				ror_card_decay += 1 * ror_addition_type;
			break;			
			case "Shock Dart":
				ror_card_shock_dart += 1 * ror_addition_type;
			break;
			//End of legend
			
			//Creative Mode
			case "Creative Mode":
				ror_creative_types[0] += 1 * ror_addition_type;
			break;			
			case "Creative Common":
				ror_creative_types[1] += 1 * ror_addition_type;
			break;			
			case "Creative Rare":
				ror_creative_types[2] += 1 * ror_addition_type;
			break;			
			case "Creative Epic":
				ror_creative_types[3] += 1 * ror_addition_type;
			break;			
			case "Creative Legendary":
				ror_creative_types[4] += 1 * ror_addition_type;
			break;
			
			
			//Goku
			case "Hey It's Me":
				ror_card_goku += 1 * ror_addition_type;
			break;			
			case "1 Star Dragon Ball":
				ror_dragon_balls[0] += 1 * ror_addition_type;
				ror_dragon_ball_count += 1 * ror_addition_type;
			break;			
			case "2 Star Dragon Ball":
				ror_dragon_balls[1] += 1 * ror_addition_type;
				ror_dragon_ball_count += 1 * ror_addition_type;
			break;			
			case "3 Star Dragon Ball":
				ror_dragon_balls[2] += 1 * ror_addition_type;
				ror_dragon_ball_count += 1 * ror_addition_type;
			break;			
			case "4 Star Dragon Ball":
				ror_dragon_balls[3] += 1 * ror_addition_type;
				ror_dragon_ball_count += 1 * ror_addition_type;
			break;			
			case "5 Star Dragon Ball":
				ror_dragon_balls[4] += 1 * ror_addition_type;
				ror_dragon_ball_count += 1 * ror_addition_type;
			break;			
			case "6 Star Dragon Ball":
				ror_dragon_balls[5] += 1 * ror_addition_type;
				ror_dragon_ball_count += 1 * ror_addition_type;
			break;			
			case "7 Star Dragon Ball":
				ror_dragon_balls[6] += 1 * ror_addition_type;
				ror_dragon_ball_count += 1 * ror_addition_type;
			break;
			//Goku
		}
	}
}