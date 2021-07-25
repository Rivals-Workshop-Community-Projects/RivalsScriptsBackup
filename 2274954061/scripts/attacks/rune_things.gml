set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 8);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 3);

//active
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 2);

//hold
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//endlag
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CANCEL_TYPE, 1);

//startup
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX_FRAME, 2);

//active
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HSPEED, 1);

//hold
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_HAS_WHIFFLAG, 8);

//endlag
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 2000);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 1500);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 15);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 200);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 200);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, .95);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, 1)
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTENDED_PARRY_STUN, 1);