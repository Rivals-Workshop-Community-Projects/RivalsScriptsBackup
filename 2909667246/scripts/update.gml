muno_event_type = 1;
	user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
   move_cooldown[AT_USPECIAL] = 0;Lloid_Rocket_Ride = false;
   if(!free){
   		uspec_landed = true;uspec_landed2 = true;
   }
}
if(move_cooldown[AT_USPECIAL] <= 0 && uspec_landed){
	if(get_gameplay_time() % 3 == 0){
		uspec_fuel += 1;
	}
}uspec_fuel = min(uspec_fuel,300);
if(bellspawntimer > 0){
	bellspawntimer -= 1;
}

if(instance_exists(Pocketed_Projectile)){
	Pocketed_Projectile.hitbox_timer = 0;Pocketed_Projectile.hit_priority = 0;Pocketed_Projectile.grounds = 1;Pocketed_Projectile.walls = 1;
	Pocketed_Projectile.free = true;//Pocketed_Projectile.hsp = hsp;Pocketed_Projectile.vsp = vsp;
	if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_NSPECIAL && window != 2 && window != 5 || attack != AT_NSPECIAL)){
		Pocketed_Projectile.y = 0;Pocketed_Projectile.x = 50;
		Pocketed_Projectile.sprite_index = asset_get("empty_sprite");
	}
	if(pocket_release > 0){
		if(pocket_release == 1){ //release
			Pocketed_Projectile.spr_dir = spr_dir;Pocketed_Projectile.hsp = pocket_hsp*spr_dir;Pocketed_Projectile.vsp = pocket_vsp;
        	Pocketed_Projectile.y = y-30;Pocketed_Projectile.x = x+20*spr_dir;
		    Pocketed_Projectile.sprite_index = pocket_projectile_sprite;Pocketed_Projectile.image_index = pocket_projectile_sprite_imageindex;
	        Pocketed_Projectile.transcendent = pocket_transcendent;Pocketed_Projectile.grounds = pocket_grounds;Pocketed_Projectile.walls = pocket_walls;
	        if(pocket_projectile){
        		Pocketed_Projectile.hit_priority = 4;
            	Pocketed_Projectile.can_hit[1] = true;Pocketed_Projectile.can_hit[2] = true;Pocketed_Projectile.can_hit[3] = true;Pocketed_Projectile.can_hit[4] = true;
        	}else{
	        	with(Pocketed_Projectile){
			    	if(other.pocket_handle_state){
			        	state = 2;
			    	}
		    	}
        	}
        	if("Pocketed" in Pocketed_Projectile){
				Pocketed_Projectile.Pocketed = false;
			}if("PocketableByOwner" in Pocketed_Projectile){
				Pocketed_Projectile.PocketableByOwner = 0;
			}
		}else if(pocket_release == 2){ //destroy
		    Pocketed_Projectile.x = 9000;
		    Pocketed_Projectile.destroyed = true;
		}
		pocket_release = 0;Pocketed_Projectile = noone;
		pocket_projectile = false;pocket_article = false;
	}
}

//custom bury status effect stuff
with (oPlayer){
	if (villager_bury && villager_bury_id == other.id) {
	    if (state == PS_RESPAWN || state == PS_DEAD || hitstop > 1 && (abs(old_hsp) >= 6 || abs(old_vsp) >= 6) && !villager_bury_hitpause){
	    	villager_bury = false;
	    	if (state == PS_RESPAWN || state == PS_DEAD){
		    	hitpause = 0;hitstop = 0;
		    }
	    }
		if(villager_bury && villager_bury_timer > 0){
	        villager_bury_timer--;
	        set_state(PS_HITSTUN);
	        hitpause = 1;hitstop = 1;
	        villager_bury_hitpause = false;
	        hurt_img = 2;
	        if(villager_bury_timer == 0){
	        	hitpause = 0;hitstop = 0;villager_bury = false;vsp = -8;free = true;
	        }
	    }
	    if(!villager_bury){
	    	villager_bury_cooldown = 60;
		    with (other){
				var buryeffect = spawn_hit_fx(other.x+35,other.y,fx_bury);buryeffect.depth = depth-1;buryeffect.spr_dir = 1;
				buryeffect = spawn_hit_fx(other.x-35,other.y,fx_bury);buryeffect.depth = depth-1;buryeffect.spr_dir = -1;
		    }
		}
	}else if(villager_bury_id == other.id){
		if(!villager_bury && villager_bury_cooldown > 0)villager_bury_cooldown--;
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
				shaketarget.hitstop = maxhitpause;shaketarget.hitstop_full = maxhitpause;shake_camera(35, 5);sound_play(sound_get("sonic boom 3"),false,noone,1.0, 0.6+(random_func(0,90,true)/100));
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

if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_DSPECIAL){
	VillagerTreeCut = 0;
}
if (runeE && VillagerTreeCut <= 1) {
	VillagerTreeCut = 1;
}

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	attacking = true;
	if(op || canon || BossMode){
		super_armor = true;
	}
}else{
	attacking = false;strong_charge = 0;fakecharge = 0;inendlag = true;
}

//grab input
if(((state == PS_PARRY_START || state == PS_PARRY && state_timer <= 0 || state == PS_AIR_DODGE && state_timer <= 1)
|| ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 1 && window_timer <= 2 && attack != AT_GRAB))
&& ((attack_down || attack_pressed) && (shield_down || shield_pressed))){
	attack_end();destroy_hitboxes();window = 1;window_timer = 0;
	attack = AT_GRAB;set_attack(AT_GRAB);hurtboxID.sprite_index = sprite_get("grab_hurt");
	grabbedtarget = noone;grabbedobject = false;grabbedarticle = false;
	reset_attack_value(AT_GRAB, AG_NUM_WINDOWS);
}

if(canon || BossMode){
	if(state != PS_HITSTUN || get_player_damage(player) < 300){
	    if(x+hsp > room_width){
	    	x = 10;
	    	sound_play( sound_get("pocket_throw") );
		} 
		if(x+hsp < 0){
	    	x = room_width - 10;
	    	sound_play( sound_get("pocket_throw") );
		} 
		if(y+vsp > room_height){
			y = 10;
			sound_play( sound_get("pocket_throw") );
		}
		if(y+vsp < 0){
			y = room_height - 30;vsp = -20;
			x = room_width/2 + 500*spr_dir;hsp = -10*spr_dir;
			sound_play( sound_get("pocket_throw") );
		} 
	}
	passive_timer--;
	if(passive_timer <= 0){
		passive_timer = random_func(0,120,true);
		/*var rng_x = round(random_func(0,room_width,true));
		var rng_y = random_func(2,room_height,true);
		create_hitbox(AT_DSPECIAL, 1, rng_x,rng_y);
	    var rng_x2 = round(random_func(1,room_width,true));
	    var rng_y2 = random_func(3,room_height,true);
		create_hitbox(AT_DSPECIAL, 1, rng_x2,rng_y2)
		sound_play(sound_get("lighthit"));*/
	}
}

if(canon){
    outline_color = [outline_timer, outline_timer/2, 0];
	if (outline_timer > 200) outline_rev = true;
	if (outline_timer < 5) outline_rev = false;
	if (outline_rev) outline_timer -= 6;
	else outline_timer += 6;
	init_shader();
    damagebuff = 10;passivesoftarmor = 9999;max_djumps = 999;
    walk_speed = 6.25;walk_accel = 0.6;walk_turn_time = 2;
    initial_dash_time = 2;initial_dash_speed = 28;
    dash_speed = 16;dash_turn_time = 1;dash_turn_accel = 4.5;
    dash_stop_time = 1;ground_friction = .9;
    jump_start_time = 4;jump_speed = 15;
    air_accel = 4;air_friction = .2;air_max_speed = 14;
    super_armor = true;knockback_adj = 0;
    move_cooldown[attack] = 0;
    //if(has_hit){
        can_move = true;
        can_jump = true;
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_special = true;
        can_shield = true;
        //window = 0;
    //}
    if (y < 10){
        y = 10;
    }if (x < 10) {
        x = (room_width - 15)
    }if(x > (room_width - 10)){
        x = 15;
    }if ((y >= room_height - vsp) || (y <= vsp && state == PS_HITSTUN)){
        y = 1;
    	vsp = 0;
    }
    set_player_damage(player, 0);mega = true;
}else if(op){
    outline_color = [0, outline_timer, outline_timer/2];
	if (outline_timer > 150) outline_rev = true;
	if (outline_timer < 5) outline_rev = false;
	if (outline_rev) outline_timer -= 4;
	else outline_timer += 4;
	init_shader();
    damagebuff = 2;
    knockback_adj = .1;
    passivesoftarmor = 10;
    if(soft_armor <= passivesoftarmor){
    	soft_armor = passivesoftarmor;
    }
    if(BossMode){
	    initial_dash_speed = 12.5;dash_speed = 15;
		air_accel = 0.65;air_max_speed = 12;max_jump_hsp = 16;
		max_djumps = 999;
		move_cooldown[attack] = 0;can_move = true;can_jump = true;can_attack = true;
		can_strong = true;can_ustrong = true;can_special = true;can_shield = true;
    }mega = true;
}else{
    outline_color = [0, 0, 0];
    init_shader();
    if (small_sprites > 1) {
    	passivesoftarmor = 4*size_mult;
    }else{passivesoftarmor = 0;}
    knockback_adj = 1.05/size_mult;
    
    if (has_rune("K") || runeK) {
    	passivesoftarmor = 4*(size_mult*0.75);
    	knockback_adj = 1.05-(0.1*size_mult);
    }
    
    //if (has_rune("E") || runeE) {
    if(state != PS_HITSTUN && state != PS_PRATFALL && state != PS_PRATLAND && state != PS_WRAPPED && state != PS_FROZEN && state != PS_PARRY_START && state != PS_PARRY || size_mult > 1){
	    if(!free && !attacking || size_mult > 1){
		    if(soft_armor <= passivesoftarmor){
		    	var playerdmg = round(get_player_damage(player)/40);
		    	soft_armor = passivesoftarmor-playerdmg;
		    }if(soft_armor < 0){
		    	soft_armor = 0;
		    }
	    }
    }else{
	    soft_armor = 0;
    }
	//}
}

if(state == PS_CROUCH && !hitpause){
	if(!crouching){
		sound_play(sound_get("crouch"),false,noone,0.6);
	}crouching = true;
	if (state_timer == 4 && runeC){
		sound_play(sound_get("bonk"),false,noone,1.5);
		dusteff = spawn_hit_fx(x+(35*spr_dir), y, fx_dust_sharp);dusteff.depth = depth-1;
		create_hitbox(AT_DTILT, 4, x, y);attack_end();
	}
}else{
	if(crouching && !hitpause && state == PS_IDLE){
		sound_play(sound_get("crouch2"),false,noone,0.6);
	}crouching = false;
}

if((state == PS_LAND || state == PS_LANDING_LAG || state == PS_PRATLAND|| state == PS_WAVELAND) && state_timer == 1 && !hitpause && (size_mult > 1 || sol || op || canon)){
	shake_camera(floor((size_mult>1)?5*(size_mult*.55):3), floor((size_mult>1)?3*(size_mult*.65):3));
	if(size_mult > 2 || op || canon){
		sound_play( sound_get("dspecial_tree_land") );
	}sound_play( sound_get("heavyland") );
}

if(get_gameplay_time() <= 120 || !loaded){
	if(attack_down && jump_pressed && kewtmode <= 0){
		kewtmode = 1;
	}
	
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
					//print_debug(string("canon"));
					other.canon = true;other.supercanon = true;other.kewtmode = 1;
					other.runeA = true;other.runeB = true;other.runeC = true;other.runeD = true;other.runeE = true;other.runeF = true;
					other.runeG = true;other.runeH = true;other.runeI = true;other.runeJ = true;
					other.runeL = true;other.runeM = true;other.runeN = true;other.runeO = true;
					other.runesUpdated = true;other.small_sprites = 4;
					if(url == 2179072217 /*|| url == 1877715009 && "temp_level" in self*/){
						other.hypercanon = true;
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
	if(hypercanon){
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
	if(shield_down && attack_pressed && !otherplayersblock || "temp_level" in self && temp_level == 1){
		canonpress += 1;
		if("temp_level" in self && temp_level == 1){
			BossMode = true;
		}
		if(canonpress == 15 || BossMode){
			op = true;small_sprites = 2;
			runeA = true;runeB = true;runeC = true;runeD = true;runeE = true;runeF = true;
			runeG = true;runeH = true;runeI = true;runeJ = true;//runeK = true;
			runeL = true;runeM = true;runeN = true;runeO = true;
			runesUpdated = true;
		}else if(canonpress == 40){
			canon = true;small_sprites = 4;
			runeA = true;runeB = true;runeC = true;runeD = true;runeE = true;runeF = true;
			runeG = true;runeH = true;runeI = true;runeJ = true;//runeK = true;
			runeL = true;runeM = true;runeN = true;runeO = true;
			runesUpdated = true;
		}
	}
	if((BossMode || canon || op) && kewtmode <= 0)kewtmode = 1;
}

if(!loaded || kewtmode == 1){
	if(alt!= 0){
		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("dspecial_water_alts"));
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree_alts"));
		set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree_falling_alts"));
		set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree_alts"));
		fx_leaves = hit_fx_create(sprite_get("dspecial_tree_leaves_alts"), 60);
	}
	if(alt >= 15 && alt <= 21 || kewtmode == 1){ //kewts
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_balloon_sol_alts"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_lloid_mjau"));
		if(alt != 0)set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_lloid_mjau_alts"));
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_planet"));
		set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bowlingball_planet"));
	    set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("slingshot_projectile_planet"));
	    set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("slingshot_projectile_planet"));
	    if(alt == 0)set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_balloon_sol"));
	    
	    set_victory_bg(sprite_get("victorybg_kewt"));
	    
	    arena_title = "Kewtian of Smashville";
		boxing_title = "Kewtian of Smashville";
		ncode1 = "[WARNING] Multiversal extradimensional entity detected";
		ncode2 = "Threat level 0. Friendly. True size and strength is [ERROR]";
		ncode3 = "Unable to access more data";
	    
	    if(kewtmode = 1){
			sound_play(sound_get("fspecial_spawn"));
		}
		kewtmode = 2;sol = true;
	}
	if(alt == 22 || alt == 25){ //other alts w some kewt things
		set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_balloon_sol_alts"));
	}
	if(alt == 25){
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_melon"));
		set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bowlingball_melon"));
		set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("slingshot_projectile_abl"));
	    set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("slingshot_projectile_abl"));
	}else if(alt == 30){
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_lloid_golfcar"));
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_golf"));
		set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bowlingball_golf"));
		set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("slingshot_projectile_golf"));
	    set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("slingshot_projectile_golf"));
	    waveland_sound = sound_get("craig_mmm");
	    set_victory_theme(sound_get("craig_victory"));
	    PlayVoiceClip("craig_the_real_battle_starts_now", 2.5);
	}else if(alt == 31){
		sound_play(sound_get("villager"));waveland_sound = sound_get("villager");
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_mc"));
		set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_SPRITE, sprite_get("dattack_pot_mc"));
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_anvil"));
		set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bowlingball_anvil"));
		set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("ustrong_fireworks_mc"));
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_seed_mc"));
		set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree_mc"));
		set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree_falling_mc"));
		set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree_mc"));
		set_victory_theme(sound_get("emeralds win"));
		pocket_hud_slot = sprite_get("nspecial_pocket_hud_mc");
	}
	
	if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
		trainingmode = true;
	}
	
	//runeK = true;runeA = true;runeN = true;runesUpdated = true;
	if (runesUpdated || get_match_setting(SET_RUNES)) {
		if (has_rune("A") || runeA) {
			runeA = true;
			set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 999);
			set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 999);
		}if (has_rune("B") || runeB) {
			runeB = true;
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 9999);set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 9999);
		}if (has_rune("C") || runeC) {
			runeC = true;
		}if (has_rune("D") || runeD) {
			runeD = true;
			uspec_speed_multiplier = 0.5;
		}if (has_rune("E") || runeE) {
			runeE = true;
		}
		if (has_rune("F") || runeF) {
			runeF = true;
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 300);set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 300);
			set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
		}if (has_rune("G") || runeG) {
			runeG = true;
			set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 10);set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 7);set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.9);
			set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 7);set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 6);set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.7);
			set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 10);set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 7);set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.9);
		}if (has_rune("H") || runeH) {
			runeH = true;
		}
		if (has_rune("I") || runeI) {
			runeI = true;
		}if (has_rune("J") || runeJ) {
			runeJ = true;
		}if (has_rune("K") || runeK) {
			runeK = true;small_sprites = 2;
		}if (has_rune("L") || runeL) {
			runeL = true;
		}if (has_rune("M") || runeM) {
			runeM = true;
		}if (has_rune("N") || runeN) {
			runeN = true;
			set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 20);
			set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 20);
		}if (has_rune("O") || runeO) {
			runeO = true;
		}
		if(small_sprites > 1){
			sol = true;
		}
	}
	
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
	loaded = true;
}

if(canon || op){
	immune_to_laws = true;
}

//hyper armor stuff, checking if the character gets put in hitstun despite having super armor
if(hyperarmor && (state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_WRAPPED)){
	hyper_armor_triggered();
}
if(super_armor || soft_armor >= 999){
	hyperarmor = true;
}else{
	hyperarmor = false;
}

if(supercanon){
	invincible = true;super_armor = true;
	with oPlayer{
		if id != other.id{
	    	invincible = false;super_armor = false;
		}
    }
	if(hypercanon){
	    with oPlayer{
	        if id != other.id{
	        	x = 9000;
	            player=0;
	        }
    	}
    	player = 1;
    	end_match(player);
	}
}

if(trainingmode || op || canon || runeK){
    if(phone_cheats[CHEAT_BeegKewtian] > 0){
    	small_sprites = phone_cheats[CHEAT_BeegKewtian]*2;
        size_mult = small_sprites;
    }else if(op || canon || runeK){
    	//small_sprites = phone_cheats[CHEAT_BeegKewtian]*2;
        size_mult = small_sprites;
    }else if(!big && !mega && normalsize){
        small_sprites = 1;
        size_mult = 1;
    }
}

if("element_cooldown" not in self)element_cooldown = 0;
if(element_cooldown > 0)element_cooldown--;
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


#define hyper_armor_triggered
	set_state(PS_IDLE);
	hitstun = 0;hitstun_full = 0;
	invincible = true;invince_time = 60;
	hyperarmorhit = false;
	with(oPlayer){
		if(get_player_team(player) != other.player){
			if(has_hit_id == other){
				print(has_hit_id);print(other);
				other.hyperarmorhit = true;
				set_state(PS_HITSTUN);
				hitstun = 60;hitstun_full = 60;
				hitpause = 1;hitstop = 60;
			}
		}
	}
	if(!hyperarmorhit){
		with(oPlayer){
			if(get_player_team(player) != other.player){
				set_state(PS_HITSTUN);
				hitstun = 60;hitstun_full = 60;
				hitpause = 1;hitstop = 60;
			}
		}
	}
	
#define PlayVoiceClip
/// PlayVoiceClip(name,?volume)
//Plays SFX
//if(!muted){
	sound_stop(voice);
	voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
//}