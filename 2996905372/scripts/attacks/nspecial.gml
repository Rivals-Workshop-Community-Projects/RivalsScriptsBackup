set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

// initial startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sfx_dbfz_krillin_ddisk_start);

// hold charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// release charge (uncharged)
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// throw frame (hold)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 19);

// endlag
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 40); // this gets cut down significantly if using the uncharged ver. you can find the values near the start of the nspecial segment it in attack_update.gml
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 20);

// transition from uncharged to charged
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);

// hold charge (charged)
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);

// release charge (charged)
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 16);

// store charge
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 0);

// very awesome way to hold the throw pose :)
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 22);

set_num_hitboxes(AT_NSPECIAL, 2 + (destructoDiscOHKORune * 1));

// uncharged, ki projectile
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 38);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("kiproj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 14.5 + (4.5 * nspecProjAimRune));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1);

// destructo disk
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 130);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 26);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("destructodisk"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 13 + (4.5 * nspecProjAimRune));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 110);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));

// ignore this
if (destructoDiscOHKORune){
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 11);
	set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 10);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 10);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
	set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 30);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 16);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.8);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_TECHABLE, 3);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 304);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sfx_dbfz_blow_heavy2);
}