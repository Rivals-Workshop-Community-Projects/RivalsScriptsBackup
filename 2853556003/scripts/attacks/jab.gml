set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
/*
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
*/

set_num_hitboxes(AT_JAB, 6);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sfx_punch_blow_weak2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sfx_punch_blow_medium1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 1)
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 6);

/*
set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 110);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 35);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 125);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sfx_waterhit_medium);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, sprite_get("water_geyser"))
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("water_geyser_mask"))
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, 0.25)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_UNBASHABLE, true)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_PARRY_STUN, true)
set_hitbox_value(AT_JAB, 3, HG_EXTENDED_PARRY_STUN, true)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_IS_TRANSCENDENT, true)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_DESTROY_EFFECT, -1)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_PLASMA_SAFE, true)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0)
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0)
*/

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 62);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 35);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sfx_waterhit_weak);
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, vfx_waterhit_small);
set_hitbox_value(AT_JAB, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 68);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 46);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sfx_waterhit_medium);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, vfx_waterhit_medium);
set_hitbox_value(AT_JAB, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 1)
