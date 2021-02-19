//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// RUNE J : USpecial Armor
if runeJ {
	if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
		if window == 2{
			super_armor = true;
		}
		if window == 1 || window == 3{
			super_armor = false;
		}
	} else {
		if (attack == AT_USPECIAL || AT_USPECIAL_2){
			if window >= 1{
				super_armor = false;
			}
		}
	}
}

// RUNE G : Zetta Perfect Framing
if runeG {
// Rune G and Rune B
if (runeG && runeB){
	if (attack == AT_FSPECIAL && window == 2 && window_timer <= 5){
		if (special_pressed){
			set_num_hitboxes(AT_FSPECIAL, 3);
			
			set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
			set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
			set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 55);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
			set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -80);
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("rune_proj"));
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("rune_proj"));
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 7.25);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, rudebuster);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -30);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zap"));
			
			set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 10);
			set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 55);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -80);
			set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 50);
			set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("rune_proj"));
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("rune_proj"));
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 7.25);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, rudebuster);
			set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -30);
			set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -40);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zap"));
			
			set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 4);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 15);
			set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 55);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -80);
			set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 50);
			set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("rune_proj"));
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("rune_proj"));
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 7.25);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, rudebuster);
			set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, -30);
			set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -40);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_zap"));
		}
	}
}

// Normal Rune G
else if (attack == AT_FSPECIAL && window == 2 && window_timer <= 5){
		if (special_pressed){
			set_num_hitboxes(AT_FSPECIAL, 3);
			
			set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
			set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
			set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 55);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
			set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -65);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 70);
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj"));
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 7.25);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, rudebuster);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -30);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zap"));
			
			set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 10);
			set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 55);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -65);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 70);
			set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 50);
			set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("fspecial_proj"));
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 7.25);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, rudebuster);
			set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -30);
			set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -40);
			set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zap"));
			
			set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 4);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 15);
			set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 55);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -65);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 70);
			set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 50);
			set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("fspecial_proj"));
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 7.25);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, rudebuster);
			set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, -30);
			set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -40);
			set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_zap"));
		}
	}

} else {
	set_num_hitboxes(AT_FSPECIAL, 1);
}

if (runeO){
	if supersaiyan == 1 and has_hit{
		can_jump = true;
	}
}

if (attack == AT_EXTRA_3){
	if (window == 1 || (window == 2 && window_timer == 1)){
		sound_play(sound_get("music_spooky"), true, false);
	}
}

if (attack == AT_JAB) {
	if (window == 2) {
		if (window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)) {
			clear_button_buffer(PC_ATTACK_PRESSED);
		}
	}
}

if (attack == AT_DSTRONG) {
	if window < 7 {
		var followup_pos = get_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X);
		var time_to_hit1 = 11; //im lazy so i counted the time in the attack file. you could totally do this via code
		var time_to_followup = 6; //counted again. maybe do this via code.
		for (var p = 0; p < array_length(dstrong_hit_list); p++) {
			if dstrong_hit_list[p,0] != noone && dstrong_hit_list[p,0].state_cat == SC_HITSTUN {
				dstrong_hit_list[p,0].x = ease_linear(dstrong_hit_list[p,1], x+(followup_pos*spr_dir), state_timer-strong_charge-time_to_hit1, time_to_followup);
			}
		}
	}
	if (window == get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == 1) {
		for (var p = 0; p < array_length(dstrong_hit_list); p++) {
			if (dstrong_hit_list[p,0] == noone) {
				break;
			}
			else {
				dstrong_hit_list[p,0] = noone;
				dstrong_hit_list[p,1] = 0;
			}
		}
	}
}

if diamondbutbetterkrisbbutbetter{
	if attack == AT_JAB && window >= 5 && has_hit_player{
		iasa_script();
		can_jump = true;
	}
	else if attack != AT_JAB && attack != AT_NTHROW && has_hit_player{
		iasa_script();
		can_jump = true;
	}
}

//Skins and Stuff
#region
// Change the colors of the extra characters
/* if (sneakyalt == 1){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt1"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt1"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt1"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt1"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt1"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt1"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt1"));
	}
}
else if (sneakyalt == 2){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt2"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt2"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt2"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt2"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt2"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt2"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt2"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt2"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt2"));
	}
}
else if (sneakyalt == 3){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt3"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt3"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt3"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt3"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt3"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt3"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt3"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt3"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt3"));
	}
}
else if (sneakyalt == 4){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt4"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt4"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt4"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt4"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt4"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt4"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt4"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt4"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt4"));
	}
}
else if (sneakyalt == 5){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt5"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt5"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt5"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt5"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt5"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt5"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt5"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt5"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt5"));
	}
}
else if (sneakyalt == 7){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt7"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt7"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt7"));
		//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecialskinalt8_proj")); (Yeah I can't figure it out either, maybe try making a variable that changes depending on the costume?)
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt7"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt7"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt7"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt7"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt7"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt7"));
	}
}
else if (sneakyalt == 8){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt8"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt8"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt8"));
		//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecialskinalt8_proj")); (Yeah I can't figure it out either)
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt8"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt8"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt8"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt8"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt8"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt8"));
	}
}
else if (sneakyalt == 9){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt9"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt9"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt9"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt9"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt9"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt9"));
	}
}
else if (sneakyalt == 10){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt10"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt10"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt10"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt10"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt10"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt10"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt10"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt10"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt10"));
	}
}
else if (sneakyalt == 11){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt11"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt11"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt11"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt11"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt11"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt11"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt11"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt11"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt11"));
	}
}
else if (sneakyalt == 12){
	if (attack == AT_DSTRONG){
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt12"));
	}
	if (attack == AT_NSPECIAL){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt12"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialskinalt12"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt12"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt12"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecialskinalt12"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt12"));
		set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecialskinalt12"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt12"));
	}
}
else{
	if (attack == AT_DSTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("dstrong"));
	}
	if (attack == AT_USTRONG){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
	}
	if (attack == AT_FSPECIAL){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
	}
	if (attack == AT_FSPECIAL_2){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
	}
	if (attack == AT_TAUNT){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
	}
}

if (sneakyalt == 6){
	//colors.gml OR init_shader.gml:
	switch (get_match_setting(SET_SEASON)) {
	  case 1: // valentines
	    switch(attack){
	    	case AT_DSTRONG:
	    		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinalt5"));
	    	case AT_NSPECIAL:
	    		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinalt5"));
	    	case AT_FSPECIAL:
	    		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinalt1"));
	    	case AT_FSPECIAL_2:
	    		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinalt1"));
	    	case AT_USTRONG:
	    		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinalt1"));
	    	case AT_TAUNT:
	    		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinalt5"));
	    }
	    break;
	  case 2: // summer
	    	case AT_DSTRONG:
	    		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinheat"));
	    	case AT_NSPECIAL:
	    		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinheat"));
	    	case AT_FSPECIAL:
	    		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinheat"));
	    	case AT_FSPECIAL_2:
	    		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinheat"));
	    	case AT_USTRONG:
	    		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinheat"));
	    	case AT_TAUNT:
	    		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinheat"));
	    break;
	  case 3: // halloween
	    	case AT_DSTRONG:
	    		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinhalloween"));
	    	case AT_NSPECIAL:
	    		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinhalloween"));
	    	case AT_FSPECIAL:
	    		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinhalloween"));
	    	case AT_FSPECIAL_2:
	    		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinhalloween"));
	    	case AT_USTRONG:
	    		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinhalloween"));
	    	case AT_TAUNT:
	    		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinhalloween"));
	    break;
	  case 4: // christmas
	    	case AT_DSTRONG:
	    		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrongskinxmas"));
	    	case AT_NSPECIAL:
	    		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialskinxmas"));
	    	case AT_FSPECIAL:
	    		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialskinxmas"));
	    	case AT_FSPECIAL_2:
	    		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecialskinxmas"));
	    	case AT_USTRONG:
	    		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrongskinxmas"));
	    	case AT_TAUNT:
	    		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntskinxmas"));
	    break;
	}
} */
#endregion

if attack == AT_TAUNT {
	if window <= 2 {
		if (window == 1 && window_timer == 5 && shield_down) {
			attack = AT_TAUNT_2;
		}
		if (window == 1 && window_timer == 5 && (shield_down && special_down)) {
			attack = AT_EXTRA_3;
		}
	}
}

if (attack == AT_EXTRA_3){
	if (window == 5 && window_timer == 5){
		if (shield_down && special_down && taunt_down){
			window = 2;
			window_timer = 1;
		}
	}
	if (window == 6){
		sound_stop(sound_get("music_spooky"));
	}
}

if attack == AT_USPECIAL || attack == AT_USPECIAL_2 {
	if attack == AT_USPECIAL {
		if (window == 1 && (window_timer >= 11 && window_timer <= 12)&& special_down && tp_gauge >= recover_high) {
			attack = AT_USPECIAL_2;
			tp_gauge -= recover_high;
		}
	}
	if window == 2 {
		var window_length = get_window_value(attack,window,AG_WINDOW_LENGTH);
		if (window_timer >= window_length/2) {
			can_wall_jump = true;
		}
	}
}

// DEVILSKNIFE
// Checks for the move
if (attack == AT_NSPECIAL) {
    // Checks the window
    if (window == 2 && window_timer == 1) {
        // offset coords for spawning the article
        var temp_x = 30;
        var temp_y = -25;
        devilsknife = instance_create(x+(temp_x*spr_dir),y+(temp_y),"obj_article1");
		if angle_devilsknife {
			if joy_pad_idle {
				if (spr_dir == 1) devilsknife.movement_angle = 0;
				if (spr_dir == -1) devilsknife.movement_angle = 180;
			}
			else {
				devilsknife.movement_angle = joy_dir;
			}
		}
		else {
			devilsknife.movement_angle = 90 - (90*spr_dir);
		}
    }
	if (window < 3) {
		can_fast_fall = false;
	}
}

// On Hit Cancel Stuff
/*if (attack == AT_UTILT) { disabled for balance reasons
    if (window == 1 && window_timer == 1) {
        reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
    }
}*/

// Looking at Dash Attack
if (attack == AT_DATTACK or attack == AT_DTILT) {
    if (window == 1 && window_timer == 1) {
        reset_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH);
    }
    // Makes Dash Attack Jump Cancellable
    if (window == 2 && has_hit_player && attack == AT_DATTACK) {
    	can_jump = true;
    	set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
    	
    	if (window == 3 && window_timer >= 1){
    		can_move = true;
    	}
    }
    else{
    	set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 11);
    }

/*if attack == AT_DATTACK {
	hsp /= 1.1
}*/
	
}

/*if (attack == AT_NAIR) { disabled for balance
    if (window == 1 && window_timer == 1) {
        reset_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH);
        reset_attack_value(AT_NAIR, AG_LANDING_LAG);
    }
} */

/* if (attack == AT_UAIR) { disabled for balance
    if (window == 1 && window_timer == 1) {
        reset_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH);
    }
}*/

if (attack == AT_NSPECIAL && !diamondbutbetterkrisbbutbetter){
	if (window == 3 && window_timer == 1){
		move_cooldown[AT_NSPECIAL] = 80;
	}
}

if (attack == AT_NSPECIAL && diamondbutbetterkrisbbutbetter){
	if (window == 3 && window_timer == 1){
		move_cooldown[AT_NSPECIAL] = 20;
	}
}

if (attack == AT_FSPECIAL && !diamondbutbetterkrisbbutbetter){
	if (window == 3 && window_timer == 1){
		move_cooldown[AT_FSPECIAL] = 70;
	}
}

if (attack == AT_FSPECIAL && diamondbutbetterkrisbbutbetter){
	if (window == 3 && window_timer == 1){
		move_cooldown[AT_FSPECIAL] = 15;
	}
}

if (attack == AT_FSPECIAL_2 && !diamondbutbetterkrisbbutbetter){
	if (window == 3 && window_timer == 1){
		move_cooldown[AT_FSPECIAL_2] = 100;
	}
}

if (attack == AT_FSPECIAL_2 && diamondbutbetterkrisbbutbetter){
	if (window == 3 && window_timer == 1){
		move_cooldown[AT_FSPECIAL_2] = 25;
	}
}

//if downspecial sucessfully, toggle courage. also reset courage timer
if (attack == AT_DSPECIAL && move_cooldown[AT_DSPECIAL] == 0) {
    if (window == 2 && window_timer == 1){
    	sound_play(dspec_activesound);
    }
    if (window == 3 && window_timer == 1) {
        if (supersaiyan == 0) {
            supersaiyan = 1;
			stats_adjusted = false;
        }
    }
}

if (attack == AT_DSPECIAL_2){
	if (!free && window == 1 && window_timer == 1) {
		set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
	}
	else if (free && window == 1 && window_timer == 1) {
		set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -1);
	}
}

if (attack == AT_DSPECIAL_2 and !toggle_courage){
	if (window == 2 && window_timer == 1){
		sound_play(dspec_deactivesound);
	}
	if(window == 3 && window_timer == 1){
		if (supersaiyan == 1){
			supersaiyan = 0;
        	supersaiyan_frametimer = 0;
        	move_cooldown[AT_DSPECIAL] = 180;
			stats_adjusted = false;
		}
	}
}


if !hitpause {
	if attack == AT_NAIR and !runeC {
		if window == 1 && window_timer == 1 {
				sound_play(asset_get("sfx_swipe_heavy1"));
		}
	}
	
	if attack == AT_FAIR and !runeI {
		if window == 1 && window_timer == 1 {
				sound_play(asset_get("sfx_swipe_heavy2"));
		}
	}
	
		if attack == AT_BAIR {
		if window == 1 && window_timer == 5 {
				sound_play(asset_get("sfx_shovel_swing_med2"));
		}
	}
	
}