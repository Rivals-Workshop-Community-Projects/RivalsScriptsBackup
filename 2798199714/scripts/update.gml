muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
	upb = false;move_cooldown[AT_USPECIAL] = 0;fspec_stall = 0;
	fair_pin = false;ustrongstall = false;
	if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
		uairused = false;
	}
	if(!uairused){
		uairboost = 1;
	}
}
if(!runeM){
	if(instance_exists(time_rift)){
		move_cooldown[AT_DSPECIAL] = 999;
	}else{
		move_cooldown[AT_DSPECIAL] = 0;
	}
}else{
	var has_time_rift = 0;
	with(obj_article1){
		if(player_id == other && player == other.player){
			with(other) {
				has_time_rift += 1;
			}
		}
	}
	if(has_time_rift >= 3){
		move_cooldown[AT_DSPECIAL] = 999;
	}else{
		move_cooldown[AT_DSPECIAL] = 0;
	}
}

if(state_timer == 5 && state == PS_DOUBLE_JUMP){
    if(right_down && spr_dir == -1){
        spr_dir = 1;
    }else if(left_down && spr_dir == 1){
        spr_dir = -1;
    }
}

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if(op || superop || BossMode){soft_armor = 99999;}
}else{
	//reset bonus dmg stuff
	if(bonus_damage){bonus_damage = false;damage_scaling = 1;outline_color = [0, 0, 0];init_shader();}
}
if(bonus_damage){outline_color = [80, 0, 0];init_shader();}
if(bonus_damage_flash > 0)bonus_damage_flash -= hitpause?4:8;

with (asset_get("pHitBox")){
	if (player_id == other && type == 2 && attack == AT_DSPECIAL){
		//if (hbox_num == 1){
			mask_index = other.time_rift_hit_sprite;
			sprite_change_collision_mask("dspecial_time_rift_hit",true,0,0,0,1000,1000,0);
		//}
	}
}

if(state == PS_PARRY){
	if(state_timer == 1 && !hitpause){
		sound_play(sound_get("shield"));
		dusteff = spawn_hit_fx(x-50*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	    dusteff2 = spawn_hit_fx(x+50*spr_dir,y,fx_dust_sharp);dusteff2.depth = depth-1;
	}
}else if(state == PS_HITSTUN){
	if((hsp > 8 || hsp < -8 || vsp > 8 || vsp < -8) && get_gameplay_time() % 5 == 0 || get_gameplay_time() % 10 == 0){
    	spawn_hit_fx(x-40+(random_func(0, 80, true)),y-20,fx_feathers);
	}
}else{
	if(free && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && taunt_pressed){
		set_attack(AT_TAUNT);
	}
}

if (runesUpdated || get_match_setting(SET_RUNES)) {
	if (has_rune("A") || runeA) {
		runeA = true;
	}if (has_rune("B") || runeB) {
		runeB = true;
		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 7);
		set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 150);set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 150);
	}if (has_rune("C") || runeC) {
		runeC = true;
		runeC_charge_multiplier = 0.25;
		runeC_charge_multiplier2 = 3.0;
	}if (has_rune("D") || runeD) {
		max_djumps = 8;
	}
	if (has_rune("G") || runeG) {
		runeG = true;
	}if (has_rune("H") || runeH) {
		runeH = true;
		set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
	}if (has_rune("I") || runeI) {
		runeI = true;
	}if (has_rune("K") || runeK) {
		runeK = true;
	}
	if (has_rune("L") || runeL) {
		runeL = true;
	}if (has_rune("M") || runeM) {
		runeM = true;
	}if (has_rune("O") || runeO) {
		runeO = true;
	}
}
if (has_rune("K") || runeK) {
	var contact_hb_on = (state_cat != SC_HITSTUN && state != PS_DEAD && state != PS_RESPAWN && state != PS_SPAWN && state != PS_PRATFALL && state != PS_PRATLAND);
	if(!instance_exists(contacthitbox) && contact_hb_on){
		contacthitbox = create_hitbox(AT_UTILT, 4, x, y-25);contacthitbox.spr_dir = spr_dir;
	}else if(instance_exists(contacthitbox)){
		if(contacthitbox.hitbox_timer <= 970)contacthitbox.hitbox_timer = 0;
		contacthitbox.x = x;contacthitbox.y = y-25;contacthitbox.spr_dir = spr_dir;
		if(!contact_hb_on)contacthitbox.destroyed = true;
	}
}

if(get_gameplay_time() <= 120 || !loaded){
	if(attack_down && ("temp_level" not in self || "temp_level" in self && temp_level <= 0)){
		with(asset_get("oPlayer")){
			if ("url" in self){
			if (url != ""){ //detects op characters. credit to sai for some of the logic here
				if(
				//exclude these characters	
				url != 2273636433 && url != 1870768156 && url != 1869351026 && url != 2558467885 && url != 2702430274 && url != 1928599994 && url != 2128134424
				//op characters
				&& (url == 2257020796 || url == 2179072217 || url == 1916799945 || url == 2297738646 || url == 2662021036
				|| (string_count("Ronald", string( get_char_info(player, INFO_STR_NAME) )) > 0
				or string_count("ultra instinct", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
				or string_count("UI ", string( get_char_info(player, INFO_STR_NAME) )) > 0
				or string_count("00%", string( get_char_info(player, INFO_STR_NAME) )) > 0
				or string_count("% accurate", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
				or string_count("Duane", string( get_char_info(player, INFO_STR_NAME) )) > 0
				or string_count("OP ", string( get_char_info(player, INFO_STR_NAME) )) > 0
				))){
					other.superop = true;other.superboss = true;
					other.runeA = true;other.runeB = true;other.runeC = true;other.runeD = true;other.runeE = true;other.runeF = true;
					other.runeG = true;other.runeH = true;other.runeI = true;other.runeJ = true;
					other.runeL = true;other.runeM = true;other.runeN = true;other.runeO = true;
					other.runesUpdated = true;
					if(url == 2179072217 /*|| url == 1877715009 && "temp_level" in self*/){
						other.hyperboss = true;
						with oPlayer{
	                        if id != other.id{
	                            player=0;
	                        }
	                    }
	                    end_match(player);
					}
				}
			}
			}
		}
	}
	if(hyperboss){
		with oPlayer{
	        if id != other.id{
	            player=0;
	        }
	    }
	    player = 1;
	    end_match(player);
	}
	
	with(oPlayer){
		if(id != other.id){
			if(!jump_down && ("temp_level" in self && temp_level <= 0 || "temp_level" not in self)){
				other.otherplayersblock = true;
			}else {
				other.otherplayersblock = false;
			}
		}
    }
	if(shield_down && attack_pressed && !otherplayersblock || "temp_level" in self && (temp_level == 1 || temp_level == 2 || temp_level == 3)){
		bosspress += 1;
		if("temp_level" in self && (temp_level == 1 || temp_level == 2 || temp_level == 3)){
			BossMode = true;
			boss_hp = temp_level==2?600:temp_level==3?900:300;
		}
		if(bosspress == 15 || BossMode){
			op = true;
			runeA = true;runeB = true;runeC = true;runeD = true;runeE = true;runeF = true;
			runeG = true;runeH = true;runeI = true;runeJ = true;//runeK = true;
			/*runeL = true;*/runeM = true;runeN = true;runeO = true;
			runesUpdated = true;
		}else if(bosspress == 40){
			superop = true;
			runeA = true;runeB = true;runeC = true;runeD = true;runeE = true;runeF = true;
			runeG = true;runeH = true;runeI = true;runeJ = true;runeK = true;
			runeL = true;runeM = true;runeN = true;runeO = true;
			runesUpdated = true;
		}
	}
}if((get_gameplay_time() == 120 || (bossattack == 1 || bossattack == 3 || bossattack == 5) && (state == PS_IDLE || state == PS_IDLE_AIR)) && BossMode){
	FinalSmash = 1;set_attack(AT_USPECIAL);
	if(get_gameplay_time() == 120){bossmusic = sound_play(sound_get("bossmusic"),true,noone,1.0);}
	if(bossattack == 1 || bossattack == 3 || bossattack == 5)bossattack += 1;
}
if(BossMode){
	if(get_gameplay_time() >= 60 && get_gameplay_time() <= 120){
		boss_display_hp = ease_expoIn(round(boss_display_hp), 300, get_gameplay_time()-60, 60);
		if(get_gameplay_time() % 3 == 0){
	    	sound_play(sound_get("hpbar"),false,noone,0.75);
		}
	}else if(get_gameplay_time() > 120){
		var hp = boss_hp-get_player_damage(player);hp = max(0,hp);
		boss_display_hp = (hp/boss_hp)*300;
	}
}

if(!loaded){
	if(get_player_color(player) != 0){
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_alts"));
	}
	
	if(alt == 30){
		sound_play(sound_get("iron knuckle"));
	}
	
	if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
		trainingmode = true;
	}
	
	//intro anim
	if(!trainingmode){
		set_attack(AT_TAUNT);window = 10;
	}
	
	var silly = create_hitbox(AT_DSTRONG, 11, x, y+5000);silly.spr_dir = 1;
	
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
	loaded = true;
}

//final smash stuff
if(FinalSmash > 0 && !bossdead){
	soft_armor = 99999;strong_charge = 90;
	was_parried = false;suppress_stage_music(0.25,120);
	fall_through = 1;
	if(FinalSmash > 1){
		vsp = 0;
		x = round(room_width/2);y = round(room_height/2)-30;
		if(FinalSmash >= 9){
			up_down = true;
		}
		if(state != PS_ATTACK_AIR && !hitpause){
			if(FinalSmash == 2 || FinalSmash == 3){
				set_attack(AT_NSPECIAL);
			}else if(FinalSmash == 4 || FinalSmash == 5 || FinalSmash == 6 || FinalSmash == 7 || FinalSmash == 8){
				set_attack(AT_USTRONG);
			}else if(FinalSmash == 9){
				set_attack(AT_TAUNT);
			}else if(FinalSmash > 9){
				FinalSmash = 0;
			}
		}
		if(get_gameplay_time() % 20 == 0){
        	var sword = create_hitbox(AT_NSPECIAL, 1, round(room_width/2)-300+random_func(0, 600, true), -190);//sound_play(sound_get("swords"));
        	if(sword.x > round(room_width/2)){sword.spr_dir = -1;}else{sword.spr_dir = 1;}
			sword.swordnum = 3;sword.swordnum2 = 1;sword.up = true;sword.hsp = 14*sword.spr_dir;sword.vsp = 14;sword.hitbox_timer = 110;
    	}
	}
	if("fs_charge" in self){
		fs_charge = 0;
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

//shake hitpause code
with(oPlayer){
    if ("state" in self){
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

//boss and anti cheapie stuff
if(superop || BossMode){
	if(state != PS_HITSTUN || get_player_damage(player) < 300 || BossMode){
	    if(x+hsp > room_width){
	    	x = 10;
	    	//sound_play( sound_get("pocket_throw") );
		} 
		if(x+hsp < 0){
	    	x = room_width - 10;
	    	//sound_play( sound_get("pocket_throw") );
		} 
		if(y+vsp > room_height){
			y = 10;
			//sound_play( sound_get("pocket_throw") );
		}
		if(y+vsp < 0 && FinalSmash <= 0){
			y = room_height - 30;vsp = -20;
			x = room_width/2 + 500*spr_dir;hsp = -10*spr_dir;
			//sound_play( sound_get("pocket_throw") );
		} 
	}if(BossMode){suppress_stage_music(0,120);set_player_stocks(player,1);}
}
if(superop){
    outline_color = [outline_timer, outline_timer/2, 0];
	if (outline_timer > 100) outline_rev = true;
	if (outline_timer < 5) outline_rev = false;
	if (outline_rev) outline_timer -= 6;
	else outline_timer += 12;
	init_shader();
    max_djumps = 999;soft_armor = 999;knockback_adj = 0;
    move_cooldown[attack] = 0;
    can_move = true;can_jump = true;can_attack = true;
    can_strong = true;can_ustrong = true;can_special = true;can_shield = true;
    set_player_damage(player, 0);
}else if(op){
    outline_color = [outline_timer, outline_timer/2, 0];
	if (outline_timer > 100) outline_rev = true;
	if (outline_timer < 5) outline_rev = false;
	if (outline_rev) outline_timer -= 6;
	else outline_timer += 6;
	init_shader();
    knockback_adj = .1;
    if(BossMode){
		max_djumps = 999;soft_armor = 99999;
    }
}
if(bossdead){
	x = ease_expoIn(round(x), round(room_width/2), 5, 20);
	y = ease_expoIn(round(y), round(room_height/2)-30, 5, 20);
	initial_invince = 2;bossdeadtimer += 1;hsp = 0;vsp = 0;
	can_tech = false;can_bounce = false;off_edge = true;
	can_wall_jump = false;can_wall_tech = false;can_be_grounded = false;
	if(bossdeadtimer < 180){set_state(PS_HITSTUN);hitstun = 20;hitstun_full = 20;shake_camera(3,5);}
	if(bossdeadtimer == 180){
		sound_play(sound_get("taunt_crystal"));shake_camera(20,30);
		var lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(0, 360, true);
        lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(1, 720, true);
        lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(2, 360, true);
        lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(3, 720, true);
		set_attack(AT_TAUNT);window = 10;
	}
	if(bossdeadtimer == 300){
	    end_match(last_player);
	}
}
