set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

// Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_gus_dirt"));

// Charge 1
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_1"));

// Charge 2
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_2"));

// Charge 3
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_full"));

// No Magic - Start
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

// No Magic - End
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

// 1 Magic - Start
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);

// 1 Magic - End
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

// 2 Magic - Start
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX, sfx_quake_heavy);

// 2 Magic - End
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

// 3 Magic - Start
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 22);

// 3 Magic - End
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_HAS_WHIFFLAG, 1);

// Used for landing the aerial variant
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSPECIAL, 4);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 236);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 236);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 1);

//Quake1
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 16);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 1);

//Quake2
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 16);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 1);

//Quake 3
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 16);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 1);