var atk = AT_DSPECIAL;

repeat(2){
	set_attack_value(atk, AG_CATEGORY, 2);
	set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
	set_attack_value(atk, AG_NUM_WINDOWS, 3);
	set_attack_value(atk, AG_OFF_LEDGE, 1);
	set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial"));
	set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);
	
	set_window_value(atk, 1, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 11);
	
	set_window_value(atk, 2, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 2, AG_WINDOW_LENGTH, 5);
	set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	
	set_window_value(atk, 3, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 3, AG_WINDOW_LENGTH, 15);
	set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	
	atk = AT_DSPECIAL_2;
	
	set_attack_value(atk, AG_MUNO_ATTACK_EXCLUDE, 1);
}

set_attack_value(atk, AG_SPRITE, sprite_get("dspecial_2"));

set_num_hitboxes(AT_DSPECIAL, 1);

//Melee
set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Melee");

//Weak
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 1000);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Projectile");
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);