set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 9);
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_EXTRA_1, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 27);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_EXTRA_1, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_SFX, sound_get("RI2"));
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_HAS_SFX, 13);

set_window_value(AT_EXTRA_1, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.1);


set_num_hitboxes(AT_EXTRA_1, 4);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 37);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X,  100);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 140);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 03);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_IS_TRANSCENDENT, true );
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, sound_get("counterhit"));

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 120);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 240);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 0.1);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_TECHABLE, 1);


set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_WINDOW, 0);
set_hitbox_value(AT_EXTRA_1, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_X,  100);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_1, 10, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 10, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 10, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 10, HG_ANGLE, 30);
set_hitbox_value(AT_EXTRA_1, 10, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 10, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_EXTRA_1, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_1, 10, HG_VISUAL_EFFECT, SC);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 10, HG_TECHABLE, 0);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_IS_TRANSCENDENT, true );

