//Stage Handler update
timer--
//print_debug(string(timer));

switch(mode) {
	case 0://Transition
		if(timer == return_time - 5){
			with(obj_stage_article){
				should_exist = false;
			}
			with(obj_stage_article_platform){
				should_exist = false;
			}
			sound_play(sound_get("link"))
			linkable_timer = 0;
		}
		if(timer == 1){
			mode = actor_mode;
			if(actor_mode != 1){
				timer = aether_timer;
			}
			else{
				timer = return_time;
			}
			linkable_timer = 0;
			actor1 = (random_func(0, 5, true));
			actor2 = (random_func(1, 5, true));
		}
	break;
	case 1://Bright Moon Cottage
		linkable_timer++
		if(timer == return_time - 5){
			with(obj_stage_article){
				if(variable_instance_exists(id, "bmc_linkables")){
					if(other.linkable_timer == 1){
						sprite_index = default_sprite;
					}
					if(spawn_variables[0] = other.actor1 or spawn_variables[0] = other.actor2){
						if(other.linkable_timer > 600){
							linkable = true;
						}
					}
				}
				should_exist = true;
				mode = 1;
			}
			with(obj_stage_article_platform){
				should_exist = true;
				mode = 1;
			}
			timer = return_time;
		}
	break;
	case 2://Natural World
		if(timer == aether_timer - 5){
			with(obj_stage_article){
				should_exist = true;
				mode = 2;
			}
			with(obj_stage_article_platform){
				should_exist = true;
				mode = 2;
			}
		}
		if(timer == 0){
			mode = 0;
			actor_mode = 1;
			timer = return_time;
		}
	break;
	case 3://HAPPY TOWN
		if(timer == aether_timer - 5){
			with(obj_stage_article){
				should_exist = true;
				mode = 3;
			}
			with(obj_stage_article_platform){
				should_exist = true;
				mode = 3;
			}
		}
		if(timer == 0){
			mode = 0;
			actor_mode = 1;
			timer = return_time;
		}
	break;
	case 4://Violence District
		if(timer == aether_timer - 5){
			with(obj_stage_article){
				should_exist = true;
				mode = 4;
			}
			with(obj_stage_article_platform){
				should_exist = true;
				mode = 4;
			}
		}
		if(timer == 0){
			mode = 0;
			actor_mode = 1;
			timer = return_time;
		}
	break;
	case 5://Sun Faces Heave
		if(timer == aether_timer - 5){
			with(obj_stage_article){
				should_exist = true;
				mode = 5;
			}
			with(obj_stage_article_platform){
				should_exist = true;
				mode = 5;
			}
		}
		if(timer == 0){
			mode = 0;
			actor_mode = 1;
			timer = return_time;
		}
	break;
	case 6://Black Space
		if(timer == aether_timer - 5){
			with(obj_stage_article){
				should_exist = true;
				mode = 6;
			}
			with(obj_stage_article_platform){
				should_exist = true;
				mode = 6;
			}
		}
		if(timer == 0){
			mode = 0;
			actor_mode = 1;
			timer = return_time;
		}
	break;
}