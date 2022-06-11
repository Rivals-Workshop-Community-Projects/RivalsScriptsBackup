set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
//Jump
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//Spin
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
//Shoot
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, -4);
//Endlag
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
//Reload
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_num_hitboxes(AT_DSPECIAL, 5)

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 220);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 76);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);