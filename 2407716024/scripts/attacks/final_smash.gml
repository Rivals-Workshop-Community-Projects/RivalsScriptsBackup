//final_smash
set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
set_attack_value(49, AG_CATEGORY, 1);
set_attack_value(49, AG_SPRITE, sprite_get("fsmash"));
set_attack_value(49, AG_NUM_WINDOWS, 6);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("fsmash_hurt"));
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);

set_window_value(49, 1, AG_WINDOW_LENGTH, 62);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("fsmash_start"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);

set_window_value(49, 2, AG_WINDOW_LENGTH, 12);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, sound_get("fsmash_beam"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED, 0);

set_window_value(49, 3, AG_WINDOW_TYPE, 9);
set_window_value(49, 3, AG_WINDOW_LENGTH, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_HSPEED, 0);

set_window_value(49, 4, AG_WINDOW_LENGTH, 18);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);

set_window_value(49, 5, AG_WINDOW_LENGTH, 12);
set_window_value(49, 5, AG_WINDOW_TYPE, 9);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(49, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 5, AG_WINDOW_SFX, sound_get("fsmash_shot"));
set_window_value(49, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_HSPEED, 0);

set_window_value(49, 6, AG_WINDOW_LENGTH, 18);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(49, 18);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(49, 1, HG_LIFETIME, 2);
set_hitbox_value(49, 1, HG_HITBOX_Y, -64);
set_hitbox_value(49, 1, HG_HITBOX_X, 400);
set_hitbox_value(49, 1, HG_WIDTH, 680);
set_hitbox_value(49, 1, HG_HEIGHT, 42);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 1);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(49, 1, HG_TECHABLE, 0);

set_hitbox_value(49, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 3);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_HITBOX_Y, -64);
set_hitbox_value(49, 2, HG_HITBOX_X, 400);
set_hitbox_value(49, 2, HG_WIDTH, 680);
set_hitbox_value(49, 2, HG_HEIGHT, 35);
set_hitbox_value(49, 2, HG_SHAPE, 1);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 1);
set_hitbox_value(49, 2, HG_ANGLE, 90);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 2);;
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(49, 2, HG_TECHABLE, 0);

set_hitbox_value(49, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_WINDOW, 4);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(49, 3, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(49, 3, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(49, 3, HG_LIFETIME, 50);
set_hitbox_value(49, 3, HG_HITBOX_Y, -72);
set_hitbox_value(49, 3, HG_HITBOX_X, 0);
set_hitbox_value(49, 3, HG_PRIORITY, 10);
set_hitbox_value(49, 3, HG_DAMAGE, 2);
set_hitbox_value(49, 3, HG_ANGLE, 25);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 2);;
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 3, HG_TECHABLE, 0);

set_hitbox_value(49, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 4, HG_WINDOW, 5);
set_hitbox_value(49, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 4, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(49, 4, HG_LIFETIME, 50);
set_hitbox_value(49, 4, HG_HITBOX_Y, -90);
set_hitbox_value(49, 4, HG_HITBOX_X, 0);
set_hitbox_value(49, 4, HG_PRIORITY, 10);
set_hitbox_value(49, 4, HG_DAMAGE, 2);
set_hitbox_value(49, 4, HG_ANGLE, 25);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 2);;
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(49, 4, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 4, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 4, HG_TECHABLE, 0);

set_hitbox_value(49, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(49, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 5, HG_WINDOW, 5);
set_hitbox_value(49, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 5, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(49, 5, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(49, 5, HG_LIFETIME, 50);
set_hitbox_value(49, 5, HG_HITBOX_Y, -76);
set_hitbox_value(49, 5, HG_HITBOX_X, 0);
set_hitbox_value(49, 5, HG_PRIORITY, 10);
set_hitbox_value(49, 5, HG_DAMAGE, 2);
set_hitbox_value(49, 5, HG_ANGLE, 25);
set_hitbox_value(49, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 5, HG_BASE_HITPAUSE, 2);;
set_hitbox_value(49, 5, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 5, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(49, 5, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 5, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 5, HG_TECHABLE, 0);

set_hitbox_value(49, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(49, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 6, HG_WINDOW, 5);
set_hitbox_value(49, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(49, 6, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(49, 6, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(49, 6, HG_LIFETIME, 50);
set_hitbox_value(49, 6, HG_HITBOX_Y, -48);
set_hitbox_value(49, 6, HG_HITBOX_X, 0);
set_hitbox_value(49, 6, HG_PRIORITY, 10);
set_hitbox_value(49, 6, HG_DAMAGE, 2);
set_hitbox_value(49, 6, HG_ANGLE, 46);
set_hitbox_value(49, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 6, HG_BASE_HITPAUSE, 2);;
set_hitbox_value(49, 6, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 6, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(49, 6, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 6, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 6, HG_TECHABLE, 0);

set_hitbox_value(49, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(49, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 7, HG_WINDOW, 5);
set_hitbox_value(49, 7, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(49, 7, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(49, 7, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(49, 7, HG_LIFETIME, 50);
set_hitbox_value(49, 7, HG_HITBOX_Y, -124);
set_hitbox_value(49, 7, HG_HITBOX_X, 0);
set_hitbox_value(49, 7, HG_PRIORITY, 10);
set_hitbox_value(49, 7, HG_DAMAGE, 2);
set_hitbox_value(49, 7, HG_ANGLE, 348);
set_hitbox_value(49, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(49, 7, HG_BASE_HITPAUSE, 2);;
set_hitbox_value(49, 7, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 7, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(49, 7, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 7, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 7, HG_TECHABLE, 0);

set_hitbox_value(49, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(49, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 8, HG_WINDOW, 4);
set_hitbox_value(49, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 8, HG_LIFETIME, 2);
set_hitbox_value(49, 8, HG_HITBOX_Y, -64);
set_hitbox_value(49, 8, HG_HITBOX_X, 400);
set_hitbox_value(49, 8, HG_WIDTH, 680);
set_hitbox_value(49, 8, HG_HEIGHT, 42);
set_hitbox_value(49, 8, HG_SHAPE, 1);
set_hitbox_value(49, 8, HG_PRIORITY, 10);
set_hitbox_value(49, 8, HG_DAMAGE, 1);
set_hitbox_value(49, 8, HG_ANGLE, 25);
set_hitbox_value(49, 8, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(49, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 8, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(49, 8, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 8, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(49, 8, HG_TECHABLE, 0);

set_hitbox_value(49, 9, HG_PARENT_HITBOX, 16);
set_hitbox_value(49, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 9, HG_WINDOW, 6);
set_hitbox_value(49, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(49, 9, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(49, 9, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(49, 9, HG_LIFETIME, 50);
set_hitbox_value(49, 9, HG_HITBOX_Y, -76);
set_hitbox_value(49, 9, HG_HITBOX_X, 0);
set_hitbox_value(49, 9, HG_PRIORITY, 10);
set_hitbox_value(49, 9, HG_DAMAGE, 2);
set_hitbox_value(49, 9, HG_ANGLE, 28);
set_hitbox_value(49, 9, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 9, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(49, 9, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 9, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(49, 9, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 9, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(49, 9, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 9, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 9, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 9, HG_TECHABLE, 0);

set_hitbox_value(49, 16, HG_PARENT_HITBOX, 16);
set_hitbox_value(49, 16, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 16, HG_WINDOW, 6);
set_hitbox_value(49, 16, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(49, 16, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(49, 16, HG_LIFETIME, 50);
set_hitbox_value(49, 16, HG_HITBOX_Y, -124);
set_hitbox_value(49, 16, HG_HITBOX_X, 0);
set_hitbox_value(49, 16, HG_PRIORITY, 10);
set_hitbox_value(49, 16, HG_DAMAGE, 2);
set_hitbox_value(49, 16, HG_ANGLE, 384);
set_hitbox_value(49, 16, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 16, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(49, 16, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 16, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(49, 16, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 16, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 16, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(49, 16, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 16, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 16, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 16, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 16, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 16, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 16, HG_TECHABLE, 0);

set_hitbox_value(49, 17, HG_PARENT_HITBOX, 16);
set_hitbox_value(49, 17, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 17, HG_WINDOW, 6);
set_hitbox_value(49, 17, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(49, 17, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(49, 17, HG_LIFETIME, 50);
set_hitbox_value(49, 17, HG_HITBOX_Y, -90);
set_hitbox_value(49, 17, HG_HITBOX_X, 0);
set_hitbox_value(49, 17, HG_PRIORITY, 10);
set_hitbox_value(49, 17, HG_DAMAGE, 2);
set_hitbox_value(49, 17, HG_ANGLE, 28);
set_hitbox_value(49, 17, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 17, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(49, 17, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 17, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(49, 17, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 17, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 17, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(49, 17, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 17, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 17, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 17, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 17, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 17, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 17, HG_TECHABLE, 0);

set_hitbox_value(49, 18, HG_PARENT_HITBOX, 16);
set_hitbox_value(49, 18, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 18, HG_WINDOW, 6);
set_hitbox_value(49, 18, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(49, 18, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(49, 18, HG_LIFETIME, 50);
set_hitbox_value(49, 18, HG_HITBOX_Y, -42);
set_hitbox_value(49, 18, HG_HITBOX_X, 0);
set_hitbox_value(49, 18, HG_PRIORITY, 10);
set_hitbox_value(49, 18, HG_DAMAGE, 2);
set_hitbox_value(49, 18, HG_ANGLE, 50);
set_hitbox_value(49, 18, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 18, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(49, 18, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 18, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(49, 18, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 18, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 18, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(49, 18, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj"));
set_hitbox_value(49, 18, HG_PROJECTILE_MASK, sprite_get("fsmash_proj"));
set_hitbox_value(49, 18, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 18, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 18, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 18, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 18, HG_TECHABLE, 0);


//fx
set_hitbox_value(49, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(49, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 10, HG_WINDOW, 4);
set_hitbox_value(49, 10, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(49, 10, HG_LIFETIME, 8);
set_hitbox_value(49, 10, HG_HITBOX_Y, -82);
set_hitbox_value(49, 10, HG_HITBOX_X, 0);
set_hitbox_value(49, 10, HG_PRIORITY, 10);
set_hitbox_value(49, 10, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj_shot"));
set_hitbox_value(49, 10, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(49, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_ANIM_SPEED, .50);
set_hitbox_value(49, 10, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(49, 11, HG_PARENT_HITBOX, 11);
set_hitbox_value(49, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 11, HG_WINDOW, 5);
set_hitbox_value(49, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 11, HG_LIFETIME, 6);
set_hitbox_value(49, 11, HG_HITBOX_Y, -98);
set_hitbox_value(49, 11, HG_HITBOX_X, 12);
set_hitbox_value(49, 11, HG_PRIORITY, 10);
set_hitbox_value(49, 11, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj_shot"));
set_hitbox_value(49, 11, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(49, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 11, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 11, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 11, HG_PROJECTILE_ANIM_SPEED, .50);
set_hitbox_value(49, 11, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(49, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(49, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(49, 12, HG_PARENT_HITBOX, 12);
set_hitbox_value(49, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 12, HG_WINDOW, 5);
set_hitbox_value(49, 12, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 12, HG_LIFETIME, 6);
set_hitbox_value(49, 12, HG_HITBOX_Y, -46);
set_hitbox_value(49, 12, HG_HITBOX_X, -8);
set_hitbox_value(49, 12, HG_PRIORITY, 10);
set_hitbox_value(49, 12, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj_shot"));
set_hitbox_value(49, 12, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(49, 12, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 12, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 12, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 12, HG_PROJECTILE_ANIM_SPEED, .50);
set_hitbox_value(49, 12, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(49, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(49, 12, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(49, 13, HG_PARENT_HITBOX, 13);
set_hitbox_value(49, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 13, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 13, HG_WINDOW, 5);
set_hitbox_value(49, 13, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(49, 13, HG_LIFETIME, 6);
set_hitbox_value(49, 13, HG_HITBOX_Y, -83);
set_hitbox_value(49, 13, HG_HITBOX_X, 2);
set_hitbox_value(49, 13, HG_PRIORITY, 10);
set_hitbox_value(49, 13, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj_shot"));
set_hitbox_value(49, 13, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(49, 13, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 13, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 13, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 13, HG_PROJECTILE_ANIM_SPEED, .50);
set_hitbox_value(49, 13, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(49, 13, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(49, 13, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(49, 14, HG_PARENT_HITBOX, 14);
set_hitbox_value(49, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 14, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 14, HG_WINDOW, 5);
set_hitbox_value(49, 14, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(49, 14, HG_LIFETIME, 3);
set_hitbox_value(49, 14, HG_HITBOX_Y, -120);
set_hitbox_value(49, 14, HG_HITBOX_X, -6);
set_hitbox_value(49, 14, HG_PRIORITY, 10);
set_hitbox_value(49, 14, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj_shot"));
set_hitbox_value(49, 14, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(49, 14, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 14, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 14, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 14, HG_PROJECTILE_ANIM_SPEED, .50);
set_hitbox_value(49, 14, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(49, 14, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(49, 14, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(49, 15, HG_PARENT_HITBOX, 15);
set_hitbox_value(49, 15, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 15, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 15, HG_WINDOW, 6);
set_hitbox_value(49, 15, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 15, HG_LIFETIME, 3);
set_hitbox_value(49, 15, HG_HITBOX_Y, -64);
set_hitbox_value(49, 15, HG_HITBOX_X, 0);
set_hitbox_value(49, 15, HG_PRIORITY, 10);
set_hitbox_value(49, 15, HG_PROJECTILE_SPRITE, sprite_get("fsmash_proj_shot"));
set_hitbox_value(49, 15, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(49, 15, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 15, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 15, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 15, HG_PROJECTILE_ANIM_SPEED, .50);
set_hitbox_value(49, 15, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(49, 15, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(49, 15, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);