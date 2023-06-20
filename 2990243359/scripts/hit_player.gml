if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2){
	sound_play(asset_get("sfx_absa_harderhit"));
}
if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1){
	sound_play(sound_get("kick_heavy"),false,noone,0.8);
}
if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 4){
	sound_play(asset_get("sfx_abyss_explosion"),false,noone,0.7,1.0);
	sound_play(sound_get("sfx_smash_ult_sword_hit_heavy"),false,noone,0.8,0.9);
	var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), -2), vfx_sweetspot);
    	fx.depth = hit_player_obj.depth - 1;
}
if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num >= 7){
	sound_play(sound_get("sfx_smash_ult_sword_hit_heavy"),false,noone,0.9,0.9);
}

if (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num >= 4){
	sound_play(sound_get("sfx_smash_ult_sword_hit_heavy"),false,noone,0.8);
}

if (my_hitboxID.attack == AT_BAIR){ 
	if (my_hitboxID.hbox_num == 2){
		sound_play(sound_get("sfx_smash_ult_sword_hit_medium"),false,noone,0.8,0.9);
	}
	if (my_hitboxID.hbox_num == 3){
		sound_play(sound_get("sfx_smash_ult_sword_hit_heavy"),false,noone,0.8,0.9);
		sound_play(sound_get("sfx_stab_pierce"),false,noone,1.0);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), -0.2), vfx_sweetspot);
    	fx.depth = hit_player_obj.depth - 1;
	}
}
if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1){
	sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.0, 0.8);
	sound_play(sound_get("kick_heavy"),false,noone,0.9);
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.effect == 999){
	trident_opponent = hit_player_obj;
	trident_opponent.trident_stuck = true;
	trident.state = 7;
}

if (my_hitboxID.attack == AT_FSPECIAL){
	hit_player_obj.can_bounce = false;
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6, 0.9);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), vfx_fspecial);
    	fx.depth = hit_player_obj.depth - 1;
	}
	if (my_hitboxID.hbox_num == 3){
		sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.0, 0.8);
		sound_play(sound_get("kick_heavy"),false,noone,0.9);
	}
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 1){
    	window = 3;
    	window_timer = 0;
		flame_choke = true;
	}
	else {
		flame_choke = false;
	}
}
else {
	 flame_choke = false;
}

if (my_hitboxID.attack == AT_FSPECIAL_2){
	hit_player_obj.can_bounce = false;
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6, 0.9);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/1.2), 0.5), vfx_fspecial);
    	fx.depth = hit_player_obj.depth - 1;
	}
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 1){
    	window = 3;
    	window_timer = 0;
		trident_choke = true;
	}
	else {
		trident_choke = false;
	}
	if (my_hitboxID.hbox_num == 2 && special_down){
		trident_opponent = hit_player_obj;
		trident_opponent.trident_stuck = true;
		trident = instance_create( x+65*spr_dir, y-25, "obj_article1");
		trident.state = 7;
	}
}
else {
	 trident_choke = false;
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR){
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6, 0.9);
	}
	if (my_hitboxID.hbox_num == 3){
		sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.0, 0.8);
		sound_play(sound_get("kick_heavy"),false,noone,0.9);
	}
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 1){
    	window = 3;
    	window_timer = 0;
		air_flame_choke = true;
	}
	else {
		air_flame_choke = false;
	}
}
else {
	 air_flame_choke = false;
}

if (my_hitboxID.attack == AT_FSPECIAL_2_AIR){
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6, 0.9);
	}
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 1){
    	window = 3;
    	window_timer = 0;
		air_trident_choke = true;
	}
	else {
		air_trident_choke = false;
	}
	if (my_hitboxID.hbox_num == 2 && special_down){
		trident_opponent = hit_player_obj;
		trident_opponent.trident_stuck = true;
		trident = instance_create( x+65*spr_dir, y-25, "obj_article1");
		trident.state = 7;
	}
}
else {
	 air_trident_choke = false;
}

if (my_hitboxID.attack == AT_DSPECIAL && trident_opponent == hit_player_obj && trident_opponent.trident_stuck == true){
	trident_opponent_hit = true;
	if (lighting_stun > 20){
		if (lighting_stun >= 50) hit_player_obj.hitstop = 50;
		else hit_player_obj.hitstop = lighting_stun;
	}
	else {
		hit_player_obj.hitstop = 20;
	}
	trident_opponent.trident_stuck = false;
    instance_destroy(trident);
}



