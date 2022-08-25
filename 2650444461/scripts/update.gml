muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
   upb = false;move_cooldown[AT_USPECIAL] = 0;fspecialcooldown = false;
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
	ground_friction = 0.3;wave_friction = 0.1;wave_land_adj = 1.15;
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

/*if(get_gameplay_time() <= 120){
	
}

if (runesUpdated || get_match_setting(SET_RUNES)) {
	if (has_rune("A") || runeA) {
		
	}if (has_rune("C") || runeC) {
		
	}if (has_rune("F") || runeF) {
		
	}
	if (has_rune("G") || runeG) {
		
	}if (has_rune("H") || runeH) {
		
	}if (has_rune("I") || runeI) {
		
	}
	if (has_rune("L") || runeL) {
		
	}if (has_rune("M") || runeM) {
		
	}if (has_rune("N") || runeN) {
		
	}if (has_rune("O") || runeO) {
		
	}
}*/


if(!loaded){
	//if(get_gameplay_time() <= 2){
		if(get_player_color(player) == 10){
			
		}else if(get_player_color(player) == 11){
			
		}
	//}
	if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
		trainingmode = true;
	}
	
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
	loaded = true;
}

//randomize TL photo when TL uses the taunt
/*with(asset_get("oPlayer")){
    if("pictophotoload" in self){
    	if(pictophotoload){
        	other.toonlink_randomizephoto = true;
    	}
    }
}if(toonlink_randomizephoto){
	toonlink_randomizephoto = false;
	var random_photo = random_func(0, 5, true);
	if(random_photo == 0){
		toonlink_photo = sprite_get("toonlink_photo");
		toonlink_photo2 = 2;
	}else{
		toonlink_photo = sprite_get("toonlink_photo2");
		toonlink_photo2 = sprite_get("toonlink_photo_TL2");
	}
}*/