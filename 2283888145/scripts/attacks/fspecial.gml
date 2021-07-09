var atk = AT_FSPECIAL;

repeat(2){
	set_attack_value(atk, AG_CATEGORY, 2);
	set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
	set_attack_value(atk, AG_NUM_WINDOWS, 5);
	set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
	set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);
	
	//1 startup 1
	set_window_value(atk, 1, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 1, AG_WINDOW_LENGTH, 9);
	set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 2);
	
	//2 charge
	set_window_value(atk, 2, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	
	//3 startup... 2!
	set_window_value(atk, 3, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 3, AG_WINDOW_LENGTH, 9);
	set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(atk, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(atk, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(atk, 3, AG_WINDOW_SFX_FRAME, 8);
	
	//4 active
	set_window_value(atk, 4, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 4, AG_WINDOW_LENGTH, 3);
	set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 7);
	
	//5 endlag
	set_window_value(atk, 5, AG_WINDOW_TYPE, 1);
	set_window_value(atk, 5, AG_WINDOW_LENGTH, 15);
	set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 8);
	
	atk = AT_FSPECIAL_2;
	
	set_attack_value(atk, AG_MUNO_ATTACK_EXCLUDE, 1);
}

set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2"));
if !echo set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Charge time: " + string(fspecial_charge_max) + "f");

set_num_hitboxes(AT_FSPECIAL, 1);

//Melee
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Weak
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 1000);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Uncharged Projectile");
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);

//Strong
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 1000);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Charged Projectile");
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);

//Buster (multi-hit)
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 1000);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Buster Multi-Hits");
if echo set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);

//Buster last hit
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 1000);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Buster Finisher");
if echo set_hitbox_value(AT_FSPECIAL, 5, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);

//Smash... wait what if someone does buster then switches to this, oh noes
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 1000);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Smash");
if echo set_hitbox_value(AT_FSPECIAL, 6, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);

//Dodge
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 1000);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 5);				//community patch
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
//set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 80);
//set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 120);				//community patch
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 120);				// V
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 7, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_FSPECIAL, 7, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITPAUSE_SCALING, 0.8);		//c
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 7, HG_MUNO_HITBOX_NAME, "Dodge");
if !echo set_hitbox_value(AT_FSPECIAL, 7, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);