// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_USPECIAL] = 0;
    fspecial_stall = 0;
    can_uspecial = false;
}

if(abs(hsp) > 1 && !free)meatball_fill+=abs(hsp)/2000;
meatball_fill = clamp(meatball_fill,0,1.4);

if(dattack_projectile_cooldown > 0)dattack_projectile_cooldown -= 1;

if(free && /*floating &&*/ (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && taunt_pressed){
	if(playercount > 1){
		set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("ftilt"));
		set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
	}else{
        set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("gay"));
    }
	set_attack(AT_TAUNT_2);
}
if(state != PS_WALK && (state != PS_WALK_TURN || state == PS_WALK_TURN && abs(hsp) <= .2)){sound_stop(walk_music);walk_music_timer = 0;walk_music = noone;}

playercount = 0;
with(oPlayer){
	if ("state" in self){
	if (state == PS_RESPAWN || state == PS_DEAD){
        sol_burn = false;
        outline_color = [0, 0, 0];init_shader();
    }
    
    if (sol_burn && sol_burn_id == other.id && !hitpause) {
		sol_burn_timer -= 1;
		with (other){
			if(get_gameplay_time() % 3 == 0){
				var fireeff = spawn_hit_fx(round(other.x-(40*spr_dir)+random_func(1, 80, true)*spr_dir),round(other.y+20-(random_func(2, 40+other.char_height, true))),fx_fire);fireeff.depth = depth-1;
				fireeff = spawn_hit_fx(round(other.x-(40*spr_dir)+random_func(3, 80, true)*spr_dir),round(other.y+20-(random_func(4, 40+other.char_height, true))),fx_fire_fast);fireeff.depth = depth-1;
			}
		}
		outline_color = [150, 0, 0];init_shader();
		if (sol_burn_timer == 0){
			sol_burn = false;
			outline_color = [0, 0, 0];
    		init_shader();
		}
	}
	
	if(is_player_on(player) && state != PS_DEAD && state != PS_RESPAWN){other.playercount++;}
	if(get_player_team(player) == get_player_team(other.player) && self != other && (string_count("Luigi", string(get_char_info(player, INFO_STR_NAME))) > 0)){ //If on a team with a Luigi
        with(oPlayer){
            if(get_player_team(player) == get_player_team(other.player))return;
            other.can_this_be_it_luigi = false;
            if(get_player_stocks(player) > 1){other.can_this_be_it_luigi = true;return;}            
        }
        with(other)if(!this_is_it_luigi && !can_this_be_it_luigi){PlayVoiceClip("this is it luigi",2);this_is_it_luigi = true;}		
	}
	if(get_player_team(player) != get_player_team(other.player) && self != other && get_gameplay_time() >= 120){
		if(get_player_stocks(player) > prev_stock_count){ //This should literally like, only trigger if someone gets a stock. Aka Monopoly or the Toads, or ig someone takes a stock?
			with(other){PlayVoiceClip("uh oh",2);this_is_it_luigi = false;}
		}		
	}
	if("walk_music" in self && self != other)walk_music_blocked = other.walk_music != noone;
	if(can_uspecial){
		if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
		    can_uspecial = false;
		}
	}
	if(prev_stock_count != get_player_stocks(player))prev_stock_count = get_player_stocks(player);
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

switch(state){
    case PS_SPAWN:
        if(state_timer == 5)sound_play(sound_get("Hotel_Mario_Intro"));
    break;
    case PS_WALK:case PS_WALK_TURN:
    	if(state == PS_WALK_TURN && abs(hsp) >= .2 || state == PS_WALK){
			if(!walk_music_blocked){
		    	if(walk_music_timer == 0)walk_music = sound_play(sound_get("sick walk music"));
		    	walk_music_timer++;
		    	if(walk_music_timer >= 900)walk_music_timer = 0;
		    	suppress_stage_music(0.5,.2);
			}
    	}
    break;    
    case PS_PARRY:
		if(state_timer == 1)PlayVoiceClip("you know what they say2");
	break;
	case PS_ROLL_BACKWARD:case PS_ROLL_FORWARD:case PS_TECH_BACKWARD:case PS_TECH_FORWARD:
		if(random_func(0,4,true) == 2 && state_timer == 1)PlayVoiceClip("be careful");
	break;
}

if(instance_exists(pig_hb)){
	with(asset_get("oPlayer")){
		if(pig_hit_cooldown > 0){
			pig_hit_cooldown--;
		}else if(player != other.pig_hb.lastplayerhit){
			with(other.pig_hb){
				can_hit[other.player] = true;	
			}
		}
	}
}

if(instance_exists(meatball)){
	with(asset_get("oPlayer")){
		if(meatball_hit_cooldown > 0){
			meatball_hit_cooldown--;
		}else{
			with(other.meatball){
				can_hit[other.player] = true;	
			}
		}
	}
}

if((state != PS_RESPAWN && attack != AT_TAUNT || attack == AT_TAUNT && vsp != 0) && respawnplat == 1){
	respawnplat = 0;
}

if(runesUpdated || get_match_setting(SET_RUNES)){
	if(runeB)set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 300);
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

if(instance_exists(nspec_cloud)){
	with(oPlayer){
		if(place_meeting(x,y,other.nspec_cloud)){
			if(free){
				var vsp_alteration = 0 - gravity_speed;
				if !(vsp_alteration < 0 && vsp < -max_fall) && vsp < max_fall {
					vsp += vsp_alteration;
				}
			}			
			if(!can_uspecial && move_cooldown[AT_USPECIAL] != 0){
				move_cooldown[AT_USPECIAL] = 0;
				can_uspecial = true;
			}
		}
	}
}

if(!instance_exists(pig_hb) && move_cooldown[AT_UAIR] < 3) move_cooldown[AT_UAIR] = 0;
else if(instance_exists(pig_hb) && move_cooldown[AT_UAIR] < 3)move_cooldown[AT_UAIR] = 2;

#define PlayVoiceClip
/// PlayVoiceClip(name,?volume,?stopprev)
	//Plays SFX
	if(!muted && !hitpause){
		if(argument_count>2?argument[2]!=false:true)sound_stop(voice);
		voice = sound_play(sound_get(argument[0]),false,noone,argument_count>1?argument[1]:1,("voicepitch" in self)?voicepitch:1);
		if(argument_count>1)sound_volume(voice, argument[1], 0);
	}

