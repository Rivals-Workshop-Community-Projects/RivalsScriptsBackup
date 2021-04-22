set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab"));

//Hit 1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("smallswing2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 1);

//Hit 2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("smallswing2"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 1);

//Hit 3
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("smallswing"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 32);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 32);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 38);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 34);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -74);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 82);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);











set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 10);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, -1);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -1);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 32);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 8, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 8, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 8, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_SPRITE, sprite_get("PowerPellet"));
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);