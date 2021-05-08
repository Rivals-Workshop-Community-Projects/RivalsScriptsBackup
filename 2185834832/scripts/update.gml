if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 20) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if(state == PS_DOUBLE_JUMP && state_timer == 0){
    spawn_hit_fx( x, y, bubblejump)
    sound_play( asset_get( "sfx_bubblemouth" ))
}

if(state == PS_DOUBLE_JUMP && vsp < 0){
    if(doublejumpVar == -1){
    	if(state_timer == 2){
        hsp = -6.5    
    	}
    }else if(doublejumpVar == 1){
    	if(state_timer == 2){
        hsp = 6.5
    	}
    }else{
    	if(state_timer == 2){
        hsp = 0
    	}
    }
}

if(attack != AT_DSTRONG || window == 0){
	if(grabbedid != noone){
		grabbedid.ungrab = 1
        grabbedid.state = PS_TUMBLE;
		grabbedid = noone
	}
}

if(state == PS_DOUBLE_JUMP && state_timer < 2){
    if(left_down){
        doublejumpVar = -1
    }
    if(right_down){
        doublejumpVar = 1
    }
}

if(vsp > 0 || state == PS_IDLE || state == PS_IDLE_AIR){
    doublejumpVar = 0
}

waterCutterExist -= 1

if(attack == AT_NSPECIAL_2 && window > 1){
	can_fast_fall = false
}else{
	can_fast_fall = true
}

if(!free){
	uspecVar = 1
	fspecVar = 2
	dspecFlying = false
	emergencyCount = 0
}

if(waterLevel > 99 && waterCharges < 3){
	waterLevel = 0
	waterCharges += 1
	sound_play(asset_get("sfx_watergun_fire"))
}

if(waterCharges >= 3){
	waterLevel = 0
}
if(waterCharges > 3){
	waterCharges = 0
}else if(waterCharges < 0){
	waterCharges = 0
}

if(waterLevel > 100){
	waterLevel = 100
}else if(waterLevel < 0){
	waterLevel = 0
}

combatTimer -= 0.2

if(waterLevel > 0){
	if(combatTimer < 0){
		waterLevel -= 1
		combatTimer = 8
	}
}

if(window == 0){
	strongAttack = false
}

if(waterCharges > 0){
	waterLevelEmergency = 0
}else{
	if(emergencyCount < 2){
		if(waterLevelEmergency <= 7){
			waterLevelEmergency += 0.015
		}
	}else{
		waterLevelEmergency = 8
	}
}

if(waterLevelEmergency > 0){
	if(state == PS_PRATFALL || state == PS_PRATLAND){
		waterLevelEmergency = 0
	}
}

//torga kirby
if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirb");
	var ability_hurt = sprite_get("kirb_hurt");
	var myicon = sprite_get("torgakirbyicon")
	
	with enemykirby{
		newicon = myicon
		sprite_change_offset("kirb", 80, 100);
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_waterwarp"));
                
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
                
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_waterhit_weak"));
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
                
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1)
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.42);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 110);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 110);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6.2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.55);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
	}
}
if(enemykirby != undefined){
	with (oPlayer){
		if(state == PS_ATTACK_AIR && attack == AT_EXTRA_3|| state == PS_ATTACK_GROUND && attack == AT_EXTRA_3){
			if(window == 2 && state_timer > 100){
				window = 3
				window_timer = 0
				vsp = -3
				move_cooldown[AT_EXTRA_3] = 100
				move_cooldown[AT_NSPECIAL] = 100
			}else if(window == 2 && state_timer > 16 && !special_down){
				window = 3
				window_timer = 0
				vsp = -3
				move_cooldown[AT_EXTRA_3] = 100
				move_cooldown[AT_NSPECIAL] = 100
			}
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6.2 + state_timer / 20);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2 + state_timer / 200);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7 + state_timer / 20);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.55 + state_timer / 200);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7 + state_timer / 20);
		}
	}
}