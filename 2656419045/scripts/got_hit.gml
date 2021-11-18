//uwu
poison = false;
hitpause_spr_dir = spr_dir;
listening_for_hitpause = false;
hit_last_frame = true;
wall_jump_y = 0;

if(neo_state == "Tanooki Statue") statue_was_hit = true;

var neoshield_blocked = false;
// if(neoshield_obj != noone) with(neoshield_obj) {
// 	neoshield_blocked = place_meeting(x, y, other.enemy_hitboxID);
// 	if(neoshield_blocked) {
// 		toss_dir = sign(lengthdir_x(10, get_hitbox_angle(other.enemy_hitboxID)));
// 		mark_for_destruction = true;
// 	}
// }

if(neoshield_blocked) {
	//Cancel the hit
	hitpause = false; hitstop = 1; hitstop_full = 1; state = PS_ATTACK_AIR; set_attack(AT_NSPECIAL);
	plasma_pause = false; burned = 0;
	hit_player_obj.has_hit = true; hit_player_obj.has_hit_player = false;
	take_damage(player, hit_player_obj.player, -1 * floor(enemy_hitboxID.damage));
	
	invincible = 3; invince_time = 15 + min(0, (hit_player_obj.hitpause * hit_player_obj.hitstop));
}
else if(prev_hitpause && transition_to_frames > 0) {
	//Mario takes 1.6x damage when hit out of a power-up transition
	take_damage(player, hit_player_obj.player, floor(0.6 * enemy_hitboxID.damage * damage_scaling));
	transition_to_frames = 0;
	free = true;
	aggressive_hitstop = 0;
	
	if(transition_to_power.revert_to == "death" && hit_player_obj.url == CH_RANNO && enemy_hitboxID.attack == AT_DSPECIAL) {
		ranno_swallow = hit_player_obj;
		exit;
	}
	else {
		give_flicker_frames = max(30, give_flicker_frames);
	}
}
else if(in_shell) {
	shell_points_owner = hit_player_obj;
	shell_player = hit_player_obj.player;
	skid_timer = round(hitstun * ((hit_player_obj.url == url)?1.75:0.95));
	neo_state = "Shell Spin"; neo_animstate = "shell_spin";
	neo_substate = "Launched";
	
	//Increased hitpause to make DIing easier (since player might be holding Down to stay in shell already)
	if(!hitpause) {
		hitpause = true; hitstop = 0; hitstop_full = 0;
		old_hsp = hsp; old_vsp = vsp; hsp = 0; vsp = 0;
	}
	hitstop += 10; hitstop_full += 10;
	if(enemy_hitboxID.type == 1) {
		if(!hit_player_obj.hitpause) {
			hit_player_obj.hitpause = true; hit_player_obj.hitstop = 0; hit_player_obj.hitstop_full = 0;
			hit_player_obj.old_hsp = hit_player_obj.hsp; hit_player_obj.old_vsp = hit_player_obj.vsp;
			hit_player_obj.hsp = 0; hit_player_obj.vsp = 0;
		}
		hit_player_obj.hitstop += 10; hit_player_obj.hitstop_full += 10;
	}
}
else if(enemy_hitboxID.effect == 1) {
	last_stomp_data.time = -100;
	if(neo_state != "Burnt") {
		neo_state = "Burnt"; neo_substate = "Burn Jump"; neo_animstate = "burn_jump";
		neo_statetimer = 0; neo_substatetimer = 0; neo_animtimer = 0;
		if(hitpause) { old_hsp = 0; old_vsp = -4; }
		else { hsp = 0; vsp = -4; }
	}
	else {
		neo_substate = "Knockback"; neo_animstate = "burn_jump";
	}
}
else if((enemy_hitboxID.kb_value > 0 || enemy_hitboxID.kb_scale > 0) && enemy_hitboxID.damage > 0 && !neo_armor && transition_to_frames <= 0) {
	last_stomp_data.time = -100;
	consecutive_stomps = 0;
	
	if(neo_power.revert_to == "death" && hit_player_obj.url == CH_RANNO && enemy_hitboxID.attack == AT_DSPECIAL) {
		ranno_swallow = hit_player_obj;
		exit;
	}
	
	for(counteroo = 0; counteroo < array_length_1d(RESIST_ATTACKS); counteroo++) {
		var check_attack = RESIST_ATTACKS[counteroo];
		
		if(hit_player_obj.url == check_attack.url)
			if(enemy_hitboxID.attack == check_attack.attack)
				if(check_attack.hbox_num == -1 || enemy_hitboxID.hbox_num == check_attack.hbox_num)
					exit;
	}
	
	if(!hitpause) {
		hitpause = true; hitstop = 10; hitstop_full = 10;
		old_hsp = hsp; old_vsp = vsp;
		hsp = 0; vsp = 0;
	}
	
	listening_for_hitpause = false;
	free = true;
	
	neo_statetimer = 0; neo_substatetimer = 0;
	
	neo_state = "Helpless";
	neo_substate = "Hit"; neo_armor = true; give_flicker_frames = 120;
	
	skid_timer = 0;
	override_anim_timer = 0;
	
	if(enemy_hitboxID.effect == 11) {
		neo_animstate = "plasma_shocked"; neo_animtimer = 0;
		animation_frozen = false; animating_hitpause = true;
		queue_voice = "plasma";
	}
	else {
		animation_frozen = true;
	}
	
	instant_reserve_available = false;
	
	if(neo_power.revert_to == "death") {
		unpause_queue_voice = "death";
		aggressive_hitstop = (enemy_hitboxID.effect == 11)?20:10;
		if(hitstop < aggressive_hitstop || enemy_hitboxID.effect == 11) {
			var old_hitstop = hitstop;
			
			hitstop = ((enemy_hitboxID.effect == 11) * hitstop) + aggressive_hitstop;
			aggressive_hitstop = hitstop;
			
			var hitstop_difference = (hitstop - old_hitstop);
			if(hitstop_difference > 0 && enemy_hitboxID.type == 1) {
				if(hit_player_obj.hitpause) {
					hit_player_obj.hitstop += hitstop_difference;
				}
				else {
					hit_player_obj.hitpause = true;
					hit_player_obj.hitstop = hitstop_difference; hit_player_obj.hitstop_full = hitstop_difference;
					hit_player_obj.old_hsp = hit_player_obj.hsp; hit_player_obj.vsp = hit_player_obj.vsp;
					hit_player_obj.hsp = 0; hit_player_obj.vsp = 0;
				}
			}
		}
		
		neo_state = "Cutscene";
		neo_substate = "Death";
		neo_animstate = "death";
		
		death_x = x; death_y = y;
		death_hsp = 2; death_vsp = -1;
		
		sound_play(sound_get("death"));
		
		if(STAGE_COMPAT_OBJ.damage_on_deathstate) {
			set_player_damage(player, 999);
		}
	}
	else {
		unpause_queue_voice = "revert";
		aggressive_hitstop = (enemy_hitboxID.effect == 11)?75:50;
		if(hitstop < aggressive_hitstop) {
			var old_hitstop = hitstop;
			
			hitstop = aggressive_hitstop;
			
			var hitstop_difference = (aggressive_hitstop - old_hitstop);
			if(hitstop_difference > 0 && enemy_hitboxID.type == 1) {
				if(hit_player_obj.hitpause) {
					hit_player_obj.hitstop += hitstop_difference;
				}
				else {
					hit_player_obj.hitpause = true;
					hit_player_obj.hitstop = hitstop_difference; hit_player_obj.hitstop_full = hitstop_difference;
					hit_player_obj.old_hsp = hit_player_obj.hsp; hit_player_obj.vsp = hit_player_obj.vsp;
					hit_player_obj.hsp = 0; hit_player_obj.vsp = 0;
				}
			}
		}
		
		transition_to_frames = 50;
		transition_to_power = neo_power.revert_to;
		
		sound_play(sound_get("power_down"));
	}
	
	//Etalus's uair grab is badly programmed because putting extra hitpause on Etalus does nothing
	//So we need some special functionality to freeze the attack when it hits Qua Mario
	for(counteroo = 0; counteroo < array_length_1d(ETALUS_GRABS); counteroo++) {
		var check_attack = ETALUS_GRABS[counteroo];
		
		if(hit_player_obj.url == check_attack.url)
			if(enemy_hitboxID.attack == check_attack.attack)
				if(check_attack.hbox_num == -1 || enemy_hitboxID.hbox_num == check_attack.hbox_num) {
					hit_player_obj.neo_data.etalus_window_freezer = id;
					hit_player_obj.hitstop += check_attack.hitstop_mod_enemy;
					hit_player_obj.neo_data.etalus_window_frames = hit_player_obj.hitstop;
					aggressive_hitstop += check_attack.hitstop_mod_mario; hitstop += check_attack.hitstop_mod_mario; hitstop_full += check_attack.hitstop_mod_mario;
				}
	}
}