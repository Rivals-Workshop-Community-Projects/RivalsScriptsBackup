set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, asset_get("sfx_gus_jump"));
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 8);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 17*2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -7*2);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 46*2);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 14*2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 15*2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -7*2);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 42*2);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 6*2);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Blitzsteed
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_SPRITE, sprite_get("blitzsteed_destroy"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GROUND_FRICTION, .6);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 999);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_SPRITE, sprite_get("blitzsteed_head"));
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_GROUND_FRICTION, .6);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 999);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_SPRITE, sprite_get("blitzsteed_front_wheel"));
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_GROUND_FRICTION, .6);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 999);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_SPRITE, sprite_get("blitzsteed_back_wheel"));
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_GROUND_FRICTION, .6);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 7, HG_LIFETIME, 999);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_SPRITE, sprite_get("blitzsteed_lance"));
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_GROUND_FRICTION, .6);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 7, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 8, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_X, 15*2);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_Y, -7*2);
set_hitbox_value(AT_DATTACK, 8, HG_WIDTH, 42*2);
set_hitbox_value(AT_DATTACK, 8, HG_HEIGHT, 6*2);
set_hitbox_value(AT_DATTACK, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 8, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 8, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 8, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));