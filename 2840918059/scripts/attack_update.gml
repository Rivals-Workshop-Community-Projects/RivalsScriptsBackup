//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Nspecial Cooldown
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2){
	move_cooldown[AT_NSPECIAL] = 25;
}

//Nspecial Charge
if (attack == AT_NSPECIAL && window == 2 && window_timer > 2 && special_down && BAR >= 5){
	attack = AT_NSPECIAL_2;
	BAR -= 5;
	spawn_hit_fx(x, y, charge);
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
}


//Uspecial FX
if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
	if (window == 2 && window_timer == 1){
		var fx = spawn_hit_fx(x, y+10, uspec_ice);
			fx.depth = -10;
	}
}

if (attack == AT_USPECIAL_2 && window > 1 && get_gameplay_time() % 5 == 0){
	spawn_hit_fx(x, y+10, nspec_trail);
}


//Uspecial Cooldown
if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
	move_cooldown[AT_USPECIAL] = 99999;
	move_cooldown[AT_USPECIAL_2] = 99999;
}

//Uspecial Charge
if (attack == AT_USPECIAL && window == 1 && window_timer > 6 && special_down && BAR >= 5){
	attack = AT_USPECIAL_2;
	BAR -= 5;
	spawn_hit_fx(x, y, charge);
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
}


//Fspecial FX
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
	if (window == 2 && window_timer == 1){
		var fx = spawn_hit_fx(x, y-30, expire);
			fx.depth = -10;
	}
}


//Fspecial Cooldown
if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 20;
}


//Fspecial Charge
if (attack == AT_FSPECIAL && window == 1 && window_timer > 5 && special_down && BAR >= 5){
	attack = AT_FSPECIAL_2;
	BAR -= 5;
	spawn_hit_fx(x, y, charge);
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
}

	

//Dspecial Air
if (attack == AT_DSPECIAL && window == 2 && window_timer > 8 && !free){
	window = 3;
	window_timer = 0;
}

if (attack == AT_DSPECIAL_2 && window == 2 && window_timer > 12 && !free){
	window = 3;
	window_timer = 0;
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (window == 1 && free){
		vsp = -4;
	}
}


if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (window == 2 && free){
		vsp += .5;
	}
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (window == 2 && window_timer >= 30 && free){
		can_jump = true;
	}
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (window == 2 && window_timer >= 30 && free && jump_pressed){
		window = 8;
		djumps = 0;
	}
}


//Dspecial Cooldown
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	move_cooldown[AT_DSPECIAL] = 20;
}


//Dspecial Charged Spike
if (attack == AT_DSPECIAL && window == 2 && special_down && BAR >= 5){
	attack = AT_DSPECIAL_2;
	BAR -= 5;
	spawn_hit_fx(x, y, charge);
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
}


var stage_y = get_stage_data( SD_Y_POS );

var stage_x = get_stage_data( SD_X_POS );


if (attack == AT_DSPECIAL_2 && window == 4 && window_timer == 1){
	if (hit_player_obj.x > stage_x && hit_player_obj.x < room_width - stage_x){
		create_hitbox (AT_DSPECIAL_2, 1, hit_player_obj.x, stage_y-54);
	}
}


//Dspecial Charged Spike Offstage

if (attack == AT_DSPECIAL_2 && window == 4 && window_timer == 1 && hit_player_obj.x < stage_x){
	create_hitbox (AT_DSPECIAL_2, 1, stage_x+30, stage_y-54);
}


if (attack == AT_DSPECIAL_2 && window == 4 && window_timer == 1 && hit_player_obj.x > room_width - stage_x){
	create_hitbox (AT_DSPECIAL_2, 1, room_width-stage_x-30, stage_y-54);
}


//Dstrong Second Hit
if (attack == AT_DSTRONG && window == 4 && window_timer == 10 && has_hit){
	set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
	window = 6;
	window_timer = 0;
}

if (attack == AT_DSTRONG && window == 1){
	reset_attack_value(AT_DSTRONG, AG_NUM_WINDOWS);
}



//Dair Allow Jump
if (attack == AT_DAIR && window == 3 && jump_pressed && !was_parried){
	djumps = 0;
	window = 5;
	window_timer = 20;
}

//Dair Parry
if (attack == AT_DAIR && free && was_parried){
	state = PS_PRATFALL;
}


//Dair Cooldown
if (attack == AT_DAIR){
	move_cooldown[AT_DAIR] = 20;
}


//Dair Ground Hit
if (attack == AT_DAIR && window > 1 && window < 4 && !free){
	destroy_hitboxes();
	window = 4;
	window_timer = 0;
}

if (attack == AT_DAIR){
	can_move = false;
}

//Dair FX
if (attack == AT_DAIR && window == 4 && window_timer == 1){
	var fx = spawn_hit_fx(x, y, splash);
		fx.depth = -10;
}


//Dair Rune J Spikes
if (attack == AT_DAIR && window == 4 && window_timer == 1 && !free && has_rune("J")){
	create_hitbox (AT_DSPECIAL, 2, x+40, y-24);
	create_hitbox (AT_DSPECIAL, 2, x-40, y-24);
}



//Uair Slow Fall
if (attack == AT_UAIR && has_hit && old_vsp > 0 && window > 3){
	old_vsp = 0;
}


//Dtilt Jump Cancel
if (attack == AT_DTILT && window > 1 && window_timer > 6 && !was_parried){
	can_jump = true;
}

if (attack == AT_DTILT){
	move_cooldown[AT_DTILT] = 15;
}

//Dtilt FX
if (attack == AT_DTILT && window == 2 && get_gameplay_time() % 4 == 0){
	var fx = spawn_hit_fx(x, y, dtilt_ice);
		fx.depth = -10;
}


//Ftilt Cooldown
if (attack == AT_FTILT){
	move_cooldown[AT_FTILT] = 15;
}


//Rune G Super Armor
if (has_rune("G")){
	if (attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL_2 || attack == AT_USPECIAL_2){
		super_armor = true;
	}
}


