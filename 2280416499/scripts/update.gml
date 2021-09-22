if phone_user_id != noone{
	if cur_settings[st_st_combo] comboCounter();
	if cur_settings[st_st_cpu] placateCPU();
}



// laggy snow effect

// if get_gameplay_time() < 400{

// 	if get_gameplay_time() % 15 == 0{
// 		instance_create(random_func(0, room_width, true), 0, "obj_stage_article", 10);
// 	}
// }

// print(fps_real)



if setting_updated != noone {
	
	if setting_updated == st_st_damage{
		set_player_damage(phone_user_id.player, cur_settings[st_st_damage]);
	}
	
	else if setting_updated == st_st_music{
		music_timer = music_timer_max;
		music_stop();
	}
	
	setting_updated = noone;
}



if setting_clicked != noone{
	
	// if setting_clicked == st_st_layout{
	// 	with obj_stage_article if num == 9{
	// 		state = 1;
	// 		state_timer = 0;
	// 		user = other.phone_user_id;
	// 		with user set_state(PS_PRATLAND);
	// 		user.was_parried = true;
	// 		user.parry_lag = 10000;
	// 		user.x = x;
	// 		user.y = owner.y + 6;
	// 		has_crouched = true;
	// 		sound_play(asset_get("mfx_star"));
	// 	}
	// }
	
	if setting_clicked == st_st_save{
		saveState();
		phone_user_id.phone.cursor++;
	}
	
	else if setting_clicked == st_st_load{
		loadState();
	}
	
	setting_clicked = noone;
}



if music_timer{
	music_timer--;
	if !music_timer{
		var cur_sound = songs[cur_settings[st_st_music]];
		loadMusic(cur_sound.file, cur_sound.type);
	}
}



if !has_music_interrupted && false{
	if (get_training_cpu_action() != CPU_FIGHT) has_music_interrupted = 1;
	var check = 0;
	with oPlayer if state == PS_SPAWN check = 1;
	if !check{
		has_music_interrupted = 1;
		music_play_file("muno_mollusk_dock");
	}
}



if death_timer{
	death_timer--;
	if (death_timer % 5 == 0){
		with asset_get("obj_stage_article") if num == 1{
			var len = array_length(layouts);
			current_layout = clamp(random_func(0, len, true), 0, len - 1);
			while array_find_index(already_layouts, current_layout) != -1{
				if (current_layout == len - 1) current_layout = 0;
				else current_layout++;
			}
			
			if is_aether_stage(){
				walls = [random_func(1, 2, true) > 0, random_func(2, 2, true) > 0]
				bridges = [random_func(3, 2, true) > 0, random_func(4, 2, true) > 0]
			}
		}
		
		with asset_get("obj_stage_article") if num == 9 select_timer = select_timer_max;
	
		if death_timer{
			sound_play(asset_get("mfx_hover"), 0, 0);
		}
		else{
			sound_play(asset_get("mfx_star"), 0, 0);
			with asset_get("obj_stage_article") if num == 1{
				array_push(already_layouts, current_layout);
				if array_length(already_layouts) >= array_length(layouts){
					already_layouts = [];
				}
			}
		}
	}
}



#define comboCounter

with asset_get("oPlayer") if object_index == oPlayer{
	if state_cat == SC_HITSTUN && "training_town_combo" in self{
		if (hitstop == hitstop_full){ // got hit
			if !training_town_combo{
				training_town_color = random_func(0, 256, true) % 255;
			}
			training_town_combo++;
			sound_play(asset_get("mfx_star"), 0, noone, 1, power(1.05946309436, training_town_combo - 5));
			with other{
				var counter = instance_create(other.x, other.y - 32, "obj_stage_article", 4);
				counter.target = other;
			}
		}
	}
	else{
		training_town_combo = 0;
		training_town_base_damage = get_player_damage(player);
	}
}



#define placateCPU

with oPlayer{
	if (burned && burnt_id.url == CH_ZETTERBURN) burned = 0;
	if (url == CH_KRAGG) can_up_b = 0;
	if (url == CH_FORSBURN) move_cooldown[AT_FSPECIAL] = 2;
	if (url != CH_MAYPUL) marked = false;
	if (url != CH_RANNO) poison = 0;
	if (url == CH_SHOVEL_KNIGHT){
		gems = 0;
		if (state == PS_ATTACK_AIR && window == 1 && window_timer == 1){
			set_num_hitboxes(AT_USPECIAL, 0);
			set_num_hitboxes(AT_FSPECIAL, 0);
		}
	}
}



#define saveState

with oPlayer{
	training_town_x = x;
	training_town_y = y;
	training_town_spr_dir = spr_dir;
	training_town_dmg = get_player_damage(player);
	spawn_hit_fx(x, y - 32, 301);
}



#define loadState

var found = 0;

with oPlayer{
	if "training_town_x" in self{
		x = training_town_x;
		y = training_town_y;
		spr_dir = training_town_spr_dir;
		set_player_damage(player, training_town_dmg);
		spawn_hit_fx(x, y - 32, 301);
	}
	else if !found{
		print_debug("Position and damage not saved!");
		found = 1;
	}
}



#define loadMusic(filename, type)

switch(type){
	case 0: // local
		music_play_file("DUMMY");
		music_play_file(filename);
		break;
	case 1: // base game - giiiiik
		break;
	case 2: // silence
		break;
	default: //type = ID of char which has the sound file
		break;
}







