set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("SGF"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 34);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, -6);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, sound_get("SGL"));
set_window_value(AT_JAB, 8, AG_WINDOW_SFX_FRAME, 11);





set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 110);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 13);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -65);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 60);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);