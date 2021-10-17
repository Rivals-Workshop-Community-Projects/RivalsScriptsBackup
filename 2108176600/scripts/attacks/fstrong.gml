set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_LANDING_LAG, 4);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("weird_swing1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 24);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 110);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -11);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 88);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 51);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 27);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 29);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 98);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("weird_hit1"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_PARRY_STUN, true); 
set_hitbox_value(AT_FSTRONG, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);