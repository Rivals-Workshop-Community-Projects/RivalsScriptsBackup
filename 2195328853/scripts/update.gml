muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
   upb = false;uairboost = 1;
}

if(nspecialcharge < 60 && fspecialcharge < 60){
    if (get_player_color( player ) == 7){
        if (outline_color[0] != 31 || outline_color[1] != 31 || outline_color[2] != 111){
            outline_color=[31, 31, 111]
            init_shader();
        }
    }else if (get_player_color( player ) == 8){
        if (outline_color[0] != 130 || outline_color[1] != 20 || outline_color[2] != 35){
            outline_color=[130, 20, 35]
            init_shader();
        }
    }//else if (get_player_color( player ) == 10){
        //if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
            //outline_color=[97, 162, 255]
            //init_shader();
        //}
    //}
    else if (get_player_color( player ) == 16){
        if (outline_color[0] != 143 || outline_color[1] != 80 || outline_color[2] != 1){
            outline_color=[143, 80, 1]
            init_shader();
        }
    }else if (get_player_color( player ) == 26){
        if (outline_color[0] != 29 || outline_color[1] != 167 || outline_color[2] != 231){
            outline_color=[29, 167, 231]
            init_shader();
        }
    }else{
        outline_color = [0, 0, 0];
        init_shader();
    }
}else{
	if(!runeO || runeO && fspecialcharge < 180){
		outline_color = [outline_timer, outline_timer, outline_timer];
		if (outline_timer > 120) outline_rev = true;
		if (outline_timer < 0) outline_rev = false;
		if(nspecialcharge < 60 || fspecialcharge < 60){
			if (outline_rev) outline_timer -= 15;
			else outline_timer += 15;
		}else{
			if (outline_rev) outline_timer -= 40;
			else outline_timer += 40;
		}
		init_shader();
	}else if(runeO && fspecialcharge >= 180){
		outline_color = [outline_timer, outline_timer, outline_timer];
		if (outline_timer > 200) outline_rev = true;
		if (outline_timer < 50) outline_rev = false;
		if (outline_rev) outline_timer -= 55;
		else outline_timer += 55;
		init_shader();
	}
}

if(steam_cooldown > 0)steam_cooldown -= 1;

if(state_timer == 5 && state == PS_DOUBLE_JUMP){
    if(right_down && spr_dir == -1){
        spr_dir = 1;
    }else if(left_down && spr_dir == 1){
        spr_dir = -1;
    }
}

if(free && /*floating &&*/ (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && taunt_pressed){
   set_attack(AT_TAUNT);
}

if (attack != AT_NSPECIAL && state != PS_HITSTUN && special_pressed && joy_pad_idle && (attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL)){
	with(obj_article1){
		if("BlueBlobBall" in self && BlueBlobBall && player_id == other /*&& player == other.player*/ && !Pocketed){
        	if (instance_exists(ballhitbox)) {
		    	instance_destroy(ballhitbox);
		    }if(ballmode == 0){
			    if(other.nspecialcharge < 60){
			    	var explosion = create_hitbox(AT_NSPECIAL,3,x,y);explosion.player = player;
			    	spawn_hit_fx(x+20,y+20, player_id.fx_blob_ball_explosion);spawn_hit_fx(x-20,y+20, player_id.fx_blob_ball_explosion);
			    	spawn_hit_fx(x+20,y-20, player_id.fx_blob_ball_explosion);spawn_hit_fx(x-20,y-20, player_id.fx_blob_ball_explosion);
			    }else{
			    	var explosion = create_hitbox(AT_NSPECIAL,2,x,y);explosion.player = player;
			    	spawn_hit_fx(x,y, player_id.fx_blob_ball_explosion);spawn_hit_fx(x,y, player_id.fx_blob_ball_explosion2);
			    }
			    sound_play(asset_get("sfx_waterhit_heavy"));
			}else if(ballmode == 1){ //ice
			    var explosion = create_hitbox(AT_NSPECIAL,4,x,y);explosion.player = player;
			    spawn_hit_fx(x,y, 199);
			    sound_play(asset_get("sfx_ice_back_air"));
			}else if(ballmode == 2){ //steam
			    var explosion = create_hitbox(AT_NSPECIAL,5,x,y);explosion.player = player;
			    spawn_hit_fx(x+20,y-20, 144);spawn_hit_fx(x-20,y-20, 144);spawn_hit_fx(x+20,y+20, 144);spawn_hit_fx(x-20,y+20, 144);
			    sound_play(asset_get("sfx_ell_steam_release"));
			}else if(ballmode == 3){ //whirlpool
			    var explosion = create_hitbox(AT_NSPECIAL,6,x,y);explosion.player = player;
			    spawn_hit_fx(x,y, 196);
			    sound_play(asset_get("sfx_waterhit_heavy"));
			}instance_destroy(self);
    	}
	}
	nspecialcharge = 0;
}

//shake hitpause code
with(oPlayer){
	if ("state" in self){
	if(other.TLinmatch){
	    if("pictophotoload" in self && pictophotoload){
	    	other.toonlink_randomizephoto = true;
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

//Crawl
if(state == PS_CROUCH){
    can_move = true;
    if (right_down){
        hsp = 0.5;//spr_dir = 1;
        crawling = true;          
    }else if (left_down){
        hsp = -0.5;
        crawling = true;  
    }
    if (joy_pad_idle){
        hsp = 0;
        crawling = false;
    }
   
}else{
    crawling = false;
}

if(get_gameplay_time() <= 120){
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
}if(get_gameplay_time() <= 2){
	with(asset_get("oPlayer")){
	    if("amtoonlink" in self && amtoonlink)other.TLinmatch = true;
	}
}

if (get_match_setting(SET_RUNES)) {
	if (has_rune("G")) {
		max_djumps = 10;
	}if (has_rune("H")) {
		runeH = true;
	}if (has_rune("I")) {
		runeI = true;
	}
	if (has_rune("L")) {
		//set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
		set_num_hitboxes(AT_USPECIAL, 2);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 40);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 40);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 13);
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 12);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 1.9);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 3.9);
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 240);
		set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("rest_hit"));
	}if (has_rune("M")) {
		runeM = true;
	}if (has_rune("O")) {
		runeO = true;
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
	}else{killtarget = noone;}
}if(instance_exists(killtarget2)){
	if(killtarget2.state != PS_DEAD && killtarget2.state != PS_RESPAWN){
		killtarget2.old_vsp = 0;killtarget2.vsp = 0;//killtarget2.y = killtarget_y;
		killtarget2.free = true;killtarget2.can_tech = 1;killtarget2.can_tech = 1;killtarget2.fall_through = true;
	}if(position_meeting(killtarget2.x,killtarget2.y+30,asset_get("par_block"))){killtarget2.y -= 10;}
	if(killtarget2.state != PS_HITSTUN || abs(killtarget2.hsp) < 10 && !killtarget2.hitpause){killtarget2.mask_index = asset_get("ex_guy_collision_mask");killtarget2 = noone;}
}

//uncanon things!
if(get_gameplay_time() % 30 == 0 || hitpause){
	poison = 0;
	if("infection_timer" in self){ //nemesis
		infection_timer = 0;blood_tick = 0;is_infected = false;
	}if("has_bleeding" in self){ //hassan
		has_bleeding = false;bleeding_time = 0;has_bleed_timer = 0;has_bleed_stacks = 0;
	}if("filia_bleed" in self && "timer_nspecial" in self){ //filia
		filia_bleed = 0;timer_nspecial = 0;filia_tempid = -1;filia_id = -1;outline_color = [ 0, 0, 0 ];init_shader();
	}if("test_status_timer" in self){ //yor
		test_status_timer = 0;
	}if("amaya_venom" in self){ //amaya
		amaya_venom = false;amaya_venom_count = 0;amaya_venom_id = 0;
	}if ("croagpoison" in self){ //croagunk
        croagpoison = 0;
	}if ("malsick" in self){ //mal
		malsick = false;sickTimer = 0;sickAfterGrace = sickAfterGraceMax;sickGrace = 0;resetOutline = true;
	}
}

//randomize TL photo when TL uses the taunt
if(TLinmatch){
	if(toonlink_randomizephoto){
		toonlink_randomizephoto = false;
		var random_photo = random_func(0, 3, true);
		if(random_photo == 0){
			toonlink_photo = sprite_get("toonlink_photo3");
			toonlink_photo2 = 1;
		}else if(random_photo == 1){
			toonlink_photo = sprite_get("toonlink_photo2");
			toonlink_photo2 = sprite_get("toonlink_photo_TL2");
		}else if(random_photo == 2){
			toonlink_photo = sprite_get("toonlink_photo");
			toonlink_photo2 = 5;
		}
	}
}