set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
//Start
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
//Place
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
//Endlag
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_GOTO, 6);
//Attack
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("airhorn"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 7);

set_num_hitboxes(AT_DSTRONG, 5);

//Idle DatBoi
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("datboi"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GRAVITY, .6);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .06);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSTRONG, 1, HG_IGNORES_PROJECTILES, 1);

//DatBoi Fall
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .1);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 2);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));