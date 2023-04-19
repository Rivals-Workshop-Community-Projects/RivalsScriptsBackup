//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Fspecial Ice Clone Kick
if (attack == AT_FSPECIAL && window == 1){
	if (window_timer == 23 && special_down){
		set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, false);
	}
}


//Reset Fspecial Values
if (attack == AT_FSPECIAL && window == 1){
	if (window_timer = 1){
		set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 23);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
	}
}

//Kick Cancel
if (attack == AT_FSPECIAL && window == 1){
	if (window_timer = 28 && !special_down){
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 1);
	}
}


//Nspecial Charge Timer
if (attack == AT_NSPECIAL && window < 4){
	if (!special_down){
		window = 4;
		window_timer = 1;
	}
}


//Nspecial Charge 2
if (attack == AT_NSPECIAL && window == 2){
	if (window_timer == 10){
		move_cooldown[AT_TAUNT] = 99999;
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj2"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 45);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 4);
	}
}

//Nspecial Charge 3
if (attack == AT_NSPECIAL && window == 3){
	if (window_timer == 10){
		move_cooldown[AT_TAUNT] = 999999;
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj3"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .35);	
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 60);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .9);
		set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 199);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 199);
	}
}


//Reset Nspecial Values
if (attack == AT_NSPECIAL && window == 5){
	if (window_timer > 1){
		move_cooldown[AT_TAUNT] = 0;
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ice_uspecial_jump"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj1"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .25);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 25);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 28);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 28);
	}
}


//Nspecial Save Charge
if (attack == AT_NSPECIAL){
	can_shield = true;
}

//Nspecial Charge Release Increments
if (move_cooldown[AT_TAUNT] > 0 && move_cooldown[AT_TAUNT] < 100000 && attack == AT_NSPECIAL && window == 1){
	window = 2;
}

if (move_cooldown[AT_TAUNT] > 99999 && attack == AT_NSPECIAL && window == 1){
	window = 4;
}

//Nspecial Cooldown
if (attack == AT_NSPECIAL && window == 6){
	move_cooldown[AT_NSPECIAL] = 20;
}


//Uspecial Directional Input
if (attack == AT_USPECIAL && window == 1){
	if (spr_dir == 1 && right_down && !up_down){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 9);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
	}
}

if (attack == AT_USPECIAL && window == 1){
	if (spr_dir == -1 && left_down && !up_down){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 10);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
	}
}

if (attack == AT_USPECIAL && window == 1){
	if (spr_dir == 1 && right_down && up_down){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -8);
	}
}

if (attack == AT_USPECIAL && window == 1){
	if (spr_dir == -1 && left_down && up_down){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -8);
	}
}

if (attack == AT_USPECIAL && window == 1){
	if (spr_dir == 1 && left_down && !up_down){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -10);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
	}
}

if (attack == AT_USPECIAL && window == 1){
	if (spr_dir == -1 && right_down && !up_down){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -10);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
	}
}


//Reset Uspecial Direction
if (attack == AT_USPECIAL && window > 2){
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);
}



//Dstrong Second Hit
if (attack == AT_DSTRONG && window == 3 && has_hit){
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_hit"));
	set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);

	set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

	set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));

	set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);

	set_num_hitboxes(AT_DSTRONG,2);

	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 5);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 140);
	set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 95);
	set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 7);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ice_back_air"));
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
}


//Reset Dstrong Values
if (attack == AT_DSTRONG && window = 6 && window_timer > 5){
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
	set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);

	set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

	set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 0);

	set_num_hitboxes(AT_DSTRONG, 1);
}


//Dspecial Height Correction
if (attack == AT_DSPECIAL && window == 4 && window_timer == 15){
	y = y-20;
}


//Dspecial Teleport To Enemy
if (attack == AT_DSPECIAL && window == 3){
	if (window_timer == 1){
		x = hit_player_obj.x;
	}
}


//Dspecial Prevent Off Ledge
var stage_x = get_stage_data (SD_X_POS);

if (attack == AT_DSPECIAL && window == 3 && window_timer == 1){	
	if (hit_player_obj.x < stage_x || hit_player_obj.x > room_width - stage_x){
		x = stage_x + 30;	
	}
}

if (attack == AT_DSPECIAL && window == 3 && window_timer == 1){	
	if (hit_player_obj.x > room_width - stage_x){
		x = room_width - stage_x - 30;	
	}
}


//Dspecial Air
if (attack == AT_DSPECIAL && window == 1 && free){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 99999);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
	vsp = 15;
	hsp = 0;
}

//Dspecial Air Ground Contact
if (attack == AT_DSPECIAL && window == 1 && window_timer > 4 && !free){
	window = 2;
	window_timer = 3;
}

//Dspecial Air Through Platforms
if (attack == AT_DSPECIAL && window < 3){
	fall_through = true;
}


//Dspecial On Platforms
if (attack == AT_DSPECIAL && window == 1 && window_timer == 1 && ground_type != 1){
	vsp = -1;
}


//Dair Allow Jump
if (attack == AT_DAIR && window == 4 && djumps != 1){
	can_jump = true;
}

if (attack == AT_DAIR && window == 4 && djumps == 1){
	if (jump_pressed){
		vsp = 0;
		window = 5;
		window_timer = 20;
	}
}


//Dair Ground Hit
if (attack == AT_DAIR && window > 3 && window < 5 && !free){
	destroy_hitboxes();
	window = 5;
	window_timer = 0;
}





