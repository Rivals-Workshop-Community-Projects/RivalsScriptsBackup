muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
   upb = false;move_cooldown[AT_USPECIAL] = 0;fspecialcooldown = false;nspec_timer = 0;
}

if(nspecialcharge < 20){
    /*if (get_player_color( player ) == 7){
        if (outline_color[0] != 31 || outline_color[1] != 31 || outline_color[2] != 111){
            outline_color=[31, 31, 111]
            init_shader();
        }
    }else{*/
        outline_color = [0, 0, 0];
        init_shader();
    //}
}else{
	if(!runeO || runeO && nspecialcharge < 180){
		outline_color = [0, outline_timer, outline_timer*2];
		if(nspecialcharge < 40){
			if (outline_timer > 60) outline_rev = true;
			if (outline_rev) outline_timer -= 4;
			else outline_timer += 4;
		}else if(nspecialcharge < 60){
			if (outline_timer > 90) outline_rev = true;
			if (outline_rev) outline_timer -= 10;
			else outline_timer += 10;
		}else{
			if (outline_timer > 120) outline_rev = true;
			if (outline_rev) outline_timer -= 20;
			else outline_timer += 20;
		}
		if (outline_timer < 0) outline_rev = false;
		init_shader();
	}else if(runeO && nspecialcharge >= 180){
		outline_color = [0, outline_timer, outline_timer];
		if (outline_timer > 200) outline_rev = true;
		if (outline_timer < 50) outline_rev = false;
		if (outline_rev) outline_timer -= 55;
		else outline_timer += 55;
		init_shader();
	}
}

if(get_gameplay_time() % 10 == 0 || free){
	if(!has_rune("F") && !runeF){
		ground_friction = 0.3;wave_friction = 0.1;wave_land_adj = 1.15;
	}else{
		ground_friction = 0.1;wave_friction = 0.05;wave_land_adj = 1.6;
	}
}

with(oPlayer){
	if(!mudkip_handled_stats && "char_height" in self){
		ground_friction_or = ground_friction;wave_friction_or = wave_friction;wave_land_adj_or = wave_land_adj;leave_ground_max_or = leave_ground_max;mudkip_handled_stats = true;
	}
	if(on_puddle_id == other.id){
		if("amMudkip" in self){
		    if(slippery_timer > 0){
				ground_friction = 0.05;wave_friction = 0;wave_land_adj = 2.0;leave_ground_max = leave_ground_max_or+10;
				slippery_timer--;
			}else{
				ground_friction = ground_friction_or;wave_friction = wave_friction_or;wave_land_adj = wave_land_adj_or;leave_ground_max = leave_ground_max_or;
			}
        }else{
			if(slippery_timer > 0){
				ground_friction = ground_friction_or+0.6;wave_friction = wave_friction_or+0.6;;wave_land_adj = wave_land_adj_or/2;//leave_ground_max = leave_ground_max_or+6;
				slippery_timer--;
			}else{
				ground_friction = ground_friction_or;wave_friction = wave_friction_or;wave_land_adj = wave_land_adj_or;leave_ground_max = leave_ground_max_or;
			}
        }
	}
}

with (asset_get("pHitBox")){
	if (player_id == other && type == 2 && attack == AT_USPECIAL){
		if (hbox_num == 1){
			mask_index = other.upb_hit_sprite1;
			sprite_change_collision_mask("uspecial_hit1",true,0,0,0,32,50,0);
		}else if (hbox_num == 2){
			mask_index = other.upb_hit_sprite3;
			sprite_change_collision_mask("uspecial_hit3",true,0,0,0,36,60,0);
		}else if (hbox_num == 3){
			mask_index = other.upb_hit_sprite3;
			sprite_change_collision_mask("uspecial_hit3",true,0,0,0,44,80,0);
		}else if (hbox_num == 4){
			mask_index = other.upb_hit_sprite4;
			sprite_change_collision_mask("uspecial_hit4",true,0,0,0,52,100,0);
		}
	}
}

if(state == PS_PARRY && !hitpause){
	if(state_timer == 1){
		sound_play(sound_get("Bubble"));
	}
	if(state_timer == 20){
		spawn_hit_fx(x-30*spr_dir+random_func(1, 10, true)*spr_dir,y-40-random_func(2, 10, true),fx_bubbles);
		spawn_hit_fx(x+20*spr_dir+random_func(3, 10, true)*spr_dir,y+4-random_func(4, 10, true),fx_bubbles);
		spawn_hit_fx(x-30*spr_dir+random_func(5, 10, true)*spr_dir,y+4-random_func(6, 10, true),fx_bubbles_fast);
		spawn_hit_fx(x+20*spr_dir+random_func(7, 10, true)*spr_dir,y-40-random_func(8, 10, true),fx_bubbles_fast);
		sound_play(sound_get("Bubble Pop"));
	}
}

if (runesUpdated || get_match_setting(SET_RUNES)) {
	if (has_rune("A") || runeA) {
		
	}if (has_rune("C") || runeC) {
		
	}if (has_rune("F") || runeF) {
		
	}
	if (has_rune("G") || runeG) {
		set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
	}if (has_rune("H") || runeH) {
		runeH = true;
	}if (has_rune("I") || runeI) {
		runeI = true;nspec_multiplier = 3;
	}
	if (has_rune("L") || runeL) {
		
	}if (has_rune("M") || runeM) {
		
	}if (has_rune("N") || runeN) {
		
	}if (has_rune("O") || runeO) {
		
	}
}

//shiny effect for shiny alt
switch(get_player_color(player)){
	case 1:
		if (state != PS_RESPAWN && state != PS_DEAD){
	    	if(get_gameplay_time() % 180 == 0){
				var eff = spawn_hit_fx(round(x-25+random_func(0, 50, true)),round(y-random_func(0, 50, true)),fx_shine_small);eff.depth = depth-1;
	        }if(get_gameplay_time() % 120 == 0){
				var eff = spawn_hit_fx(round(x-25+random_func(0, 50, true)),round(y-random_func(0, 50, true)),fx_shine_smallfast);eff.depth = depth-1;
	        }
		}
	break;
}

if(!loaded){
	//if(get_gameplay_time() <= 2){
		if(get_player_color(player) == 10){
			
		}else if(get_player_color(player) == 11){
			
		}
	//}
	if (get_training_cpu_action() != CPU_FIGHT && !playtesting && !("is_ai" in self)) {
		trainingmode = true;
	}
	
	//for testing intro anim
	//intro = 1;
	//var pokeball = create_hitbox(AT_JAB, 3, x-200*spr_dir, y-35);//pokeball.spr_dir = spr_dir;pokeball.hsp = pokeball.hsp*spr_dir;
	intro = 0;
	
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
	loaded = true;
}

if(get_gameplay_time() <= 120){
	//intro anim
	if(/*!trainingmode &&*/ get_gameplay_time() <= 10){
		intro = 1;
		if(get_gameplay_time() == round(player*3)-2){
			var pokeball = create_hitbox(AT_JAB, 3, x-200*spr_dir, y-35);//pokeball.spr_dir = spr_dir;pokeball.hsp = pokeball.hsp*spr_dir;
		}
	}
}