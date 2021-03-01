set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_COOLDOWN, bow_cooldown_max);
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_CD_SPECIAL, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSTRONG, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sfx_minecraft_bow_loose);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 4, AG_MUNO_WINDOW_CD_SPECIAL, 3);

set_num_hitboxes(AT_FSTRONG, 1);

//Copy to the crossbow

var i = 1;
var _atk = AT_FSTRONG;

repeat(2){

	set_hitbox_value(_atk, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(_atk, i, HG_WINDOW, (_atk == AT_FSTRONG) ? 3 : 2);
	set_hitbox_value(_atk, i, HG_LIFETIME, 3);
	set_hitbox_value(_atk, i, HG_HITBOX_X, 32);
	set_hitbox_value(_atk, i, HG_HITBOX_Y, (_atk == AT_FSTRONG) ? -29 : -35);
	set_hitbox_value(_atk, i, HG_WIDTH, 48);
	set_hitbox_value(_atk, i, HG_HEIGHT, 20);
	set_hitbox_value(_atk, i, HG_SHAPE, 2);
	set_hitbox_value(_atk, i, HG_PRIORITY, 3);
	set_hitbox_value(_atk, i, HG_DAMAGE, 10);
	set_hitbox_value(_atk, i, HG_ANGLE, 50);
	set_hitbox_value(_atk, i, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(_atk, i, HG_KNOCKBACK_SCALING, 0.8);
	set_hitbox_value(_atk, i, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(_atk, i, HG_HITPAUSE_SCALING, 0.8);
	set_hitbox_value(_atk, i, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(_atk, i, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	
	_atk = AT_FSTRONG_2;

}

//Copy to DAir and crossbow

i = 2;
_atk = AT_FSTRONG;

repeat(3){

	set_hitbox_value(_atk, i, HG_HITBOX_TYPE, 2);
	set_hitbox_value(_atk, i, HG_LIFETIME, 240);
	set_hitbox_value(_atk, i, HG_WIDTH, 10);
	set_hitbox_value(_atk, i, HG_HEIGHT, 10);
	set_hitbox_value(_atk, i, HG_SHAPE, 2);
	set_hitbox_value(_atk, i, HG_PRIORITY, 3);
	set_hitbox_value(_atk, i, HG_DAMAGE, 9);
	set_hitbox_value(_atk, i, HG_ANGLE, 70);
	set_hitbox_value(_atk, i, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(_atk, i, HG_KNOCKBACK_SCALING, 0.6);
	set_hitbox_value(_atk, i, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(_atk, i, HG_HITPAUSE_SCALING, 0.6);
	set_hitbox_value(_atk, i, HG_HIT_SFX, asset_get((i == 3 || _atk == AT_DAIR) ? "sfx_blow_medium1" : "sfx_blow_weak1"));
	set_hitbox_value(_atk, i, HG_PROJECTILE_SPRITE, spr_fstrong_arrow);
	set_hitbox_value(_atk, i, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(_atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(_atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	// set_hitbox_value(_atk, i, HG_EXTENDED_PARRY_STUN, 1);
	// set_hitbox_value(_atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
	// set_hitbox_value(_atk, i, HG_PROJECTILE_PARRY_STUN, 1);
	
	i++;
	
	if (i == 4){
		_atk = AT_DAIR;
		i = 2;
	}
	
}

_atk = AT_FSTRONG;
i = 3;

repeat(2){
	set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 60);
	set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.7);
	
	_atk = AT_DAIR;
	i = 2;
}

set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_NAME, "Melee");
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_NAME, "Arrow");
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_NAME, "Arrow (Charged)");
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);



