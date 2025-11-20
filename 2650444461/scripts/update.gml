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

//silly angle 0 code (part 2)
if("killtarget" not in self){killtarget = noone;killtarget2 = noone;}
if(instance_exists(killtarget)){
	if(killtarget.activated_kill_effect && killtarget.state == PS_HITSTUN && !instance_exists(killtarget2)){
		if(!killtarget.free || position_meeting(killtarget.x,killtarget.y+20,asset_get("par_block")) || position_meeting(killtarget.x,killtarget.y+20,asset_get("par_jumpthrough")))killtarget.y -= 40;
		killtarget.old_vsp = 0;killtarget.vsp = 0;killtarget.orig_knock *= 2;
		killtarget.dumb_di_mult = 0;killtarget.sdi_mult = 0;
		killtarget2 = killtarget;killtarget2.mask_index = asset_get("empty_sprite");killtarget = noone;
		if(position_meeting(killtarget2.prev_x,killtarget2.prev_y+4,asset_get("par_block"))){killtarget2.prev_y -= 4;}
	}else{killtarget = noone;}
}if(instance_exists(killtarget2)){
	if(killtarget2.state != PS_HITSTUN || abs(killtarget2.hsp) < 10 && !killtarget2.hitpause || killtarget2.last_player != player
	|| place_meeting(killtarget2.x+killtarget2.hsp,killtarget2.y-20,asset_get("par_block")) || place_meeting(killtarget2.x+(killtarget2.hsp/2),killtarget2.y-20,asset_get("par_block"))){killtarget2.mask_index = asset_get("ex_guy_collision_mask");killtarget2 = noone;}
	if(instance_exists(killtarget2) && killtarget2.state != PS_DEAD && killtarget2.state != PS_RESPAWN){
		killtarget2.old_vsp = 0;killtarget2.vsp = 0;
		killtarget2.free = true;killtarget2.can_tech = 1;killtarget2.can_bounce = true;killtarget2.fall_through = true;
		if(position_meeting(killtarget2.x,killtarget2.y+30,asset_get("par_block"))){killtarget2.y -= 10;}
	}
}

with(oPlayer){
	if ("state" in self){
    if (state == PS_RESPAWN || state == PS_DEAD){
        
    }
	
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
	
	//shake hitpause code
	with(other){
		if("shaketarget" not in self)shaketarget = noone;
		if("extrahitpauseon" not in self)extrahitpauseon = true;
		if("hitpausesetpos" not in self)hitpausesetpos = true;
		if("hitpausecap" not in self)hitpausecap = 40;
		if("shakecap" not in self)shakecap = 50;
		if(instance_exists(shaketarget) && extrahitpauseon){
			if(shaketarget.should_make_shockwave){
				with(shaketarget){hitstop = round(hitstop*1.5);hitstop_full = round(hitstop_full*1.5);}
				hitstop = round(hitstop*1.5);hitstop_full = round(hitstop_full*1.5);
			}if(shaketarget.activated_kill_effect){
				var maxhitpause = min(hitpausecap,round(shaketarget.hitstop*2));
				if(hitpause){hitstop = maxhitpause;hitstop_full = maxhitpause;}
				shaketarget.hitstop = maxhitpause;shaketarget.hitstop_full = maxhitpause;shake_camera(35, 5);
			}if(hitpausesetpos){shaketarget.prev_x = shaketarget.x;shaketarget.prev_y = shaketarget.y;}shaketarget = noone;
		}
	}
	if(hitpause && state_cat == SC_HITSTUN && last_player == other.player){
		var shake = activated_kill_effect?round(hitstop*3):should_make_shockwave?round(hitstop*2):round(hitstop);shake = min(other.shakecap,shake);
		var dir = random_func(0, 359, true);var new_x = prev_x + round(lengthdir_x(shake/2, dir));var new_y = prev_y + round(lengthdir_y(shake/2, dir));
		x = round(new_x);y = round(new_y);
	}else if(!hitpause){
		prev_x = x;prev_y = y;
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

if("element_cooldown" not in self)element_cooldown = 0;
if(element_cooldown > 0)element_cooldown--;

