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
if(instance_exists(time_rift)){
	move_cooldown[AT_DSPECIAL] = 999;
}else{
	move_cooldown[AT_DSPECIAL] = 0;
}

if(state_timer == 5 && state == PS_DOUBLE_JUMP){
    if(right_down && spr_dir == -1){
        spr_dir = 1;
    }else if(left_down && spr_dir == 1){
        spr_dir = -1;
    }
}

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
		//shieldfx = spawn_hit_fx(x,y-round(char_height/2),fx_parry_shield);shieldfx.depth = depth-1;
		//shieldfx2 = spawn_hit_fx(x,y-round(char_height/2),fx_parry_shield2);
		//sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(sound_get("shield"));
		dusteff = spawn_hit_fx(x-50*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	    dusteff2 = spawn_hit_fx(x+50*spr_dir,y,fx_dust_sharp);dusteff2.depth = depth-1;
	}
	/*if(state_timer % 2 == 0 && state_timer < 20){
		spawn_hit_fx(x-(70*spr_dir)+random_func(1, 140, true)*spr_dir,y+20-random_func(2, 120, true),fx_chargelightning4);
		spawn_hit_fx(x-(70*spr_dir)+random_func(3, 140, true)*spr_dir,y+20-random_func(4, 120, true),fx_chargelightning4_fast);
	}
	if(instance_exists(shieldfx)){
		shieldfx.x = x;shieldfx.y = y-round(char_height/2);
	}if(instance_exists(shieldfx2)){
		shieldfx2.x = x;shieldfx2.y = y-round(char_height/2);
	}*/
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
	if (has_rune("K") || runeK) {
		runeK = true;
	}
	if (has_rune("L") || runeL) {
		runeL = true;
	}
}
if(runeK){
	if(!instance_exists(contacthitbox)){
		contacthitbox = create_hitbox(AT_UTILT, 4, x, y-25);contacthitbox.spr_dir = spr_dir;
	}else{
		if(contacthitbox.hitbox_timer <= 970){
			contacthitbox.hitbox_timer = 0;
		}contacthitbox.x = x;contacthitbox.y = y-25;contacthitbox.spr_dir = spr_dir;
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
	
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
	loaded = true;
}
