set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// 1 startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

// 2 active
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// 3 endlag
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

// 4 startup
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);

// 5 active
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

// 6 endlag
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 0);



set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 58);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, vfx_knife_small);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 58);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, vfx_knife_small);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);


// used for soul trails, probably don't touch this perhaps
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 0);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 0);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, sprite_get("soul_trail_head"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_UNBASHABLE, true);