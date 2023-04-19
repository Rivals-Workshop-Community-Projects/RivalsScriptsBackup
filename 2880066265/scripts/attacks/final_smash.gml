set_attack_value(49, AG_SPRITE, sprite_get("finalsmash_alpha1"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("empty_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 8);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 12);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 120);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(49, 5);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_WINDOW, 3);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 1, HG_LIFETIME, 120);
set_hitbox_value(49, 1, HG_HITBOX_X, 2);
set_hitbox_value(49, 1, HG_HITBOX_Y, -40);
set_hitbox_value(49, 1, HG_PRIORITY, 3);
set_hitbox_value(49, 1, HG_DAMAGE, 3);
set_hitbox_value(49, 1, HG_ANGLE, 180);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 192);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_alpha2"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("finalsmash_alpha2"));
set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 32);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1); //yes
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1); //yes
set_hitbox_value(49, 1, HG_PROJECTILE_PARRY_STUN, 1); //want this to be a yes
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 7);
set_hitbox_value(49, 2, HG_LIFETIME, 3);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 2, HG_HITBOX_X, -52);
set_hitbox_value(49, 2, HG_HITBOX_Y, -50);
set_hitbox_value(49, 2, HG_WIDTH, 211);
set_hitbox_value(49, 2, HG_HEIGHT, 104);
set_hitbox_value(49, 2, HG_SHAPE, 2);
set_hitbox_value(49, 2, HG_PRIORITY, 1);
set_hitbox_value(49, 2, HG_DAMAGE, 2);
set_hitbox_value(49, 2, HG_ANGLE, 60);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 7);
set_hitbox_value(49, 3, HG_LIFETIME, 3);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 3, HG_HITBOX_X, -11);
set_hitbox_value(49, 3, HG_HITBOX_Y, -37);
set_hitbox_value(49, 3, HG_WIDTH, 150);
set_hitbox_value(49, 3, HG_HEIGHT, 150);
set_hitbox_value(49, 3, HG_SHAPE, 0);
set_hitbox_value(49, 3, HG_PRIORITY, 10);
set_hitbox_value(49, 3, HG_DAMAGE, 85);
set_hitbox_value(49, 3, HG_ANGLE, 60);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.4);
//set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 12);
//set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 3, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 8);

set_hitbox_value(49, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 4, HG_WINDOW, 7);
set_hitbox_value(49, 4, HG_LIFETIME, 3);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 4, HG_HITBOX_X, -11);
set_hitbox_value(49, 4, HG_HITBOX_Y, -37);
set_hitbox_value(49, 4, HG_WIDTH, 500);
set_hitbox_value(49, 4, HG_HEIGHT, 500);
set_hitbox_value(49, 4, HG_SHAPE, 0);
set_hitbox_value(49, 4, HG_PRIORITY, 9);
set_hitbox_value(49, 4, HG_DAMAGE, 45);
set_hitbox_value(49, 4, HG_ANGLE, 60);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 1.0);
//set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 12);
//set_hitbox_value(49, 4, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(49, 4, HG_ANGLE_FLIPPER, 8);

set_hitbox_value(49, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 5, HG_WINDOW, 7);
set_hitbox_value(49, 5, HG_LIFETIME, 3);
set_hitbox_value(49, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 5, HG_HITBOX_X, -11);
set_hitbox_value(49, 5, HG_HITBOX_Y, -37);
set_hitbox_value(49, 5, HG_WIDTH, 700);
set_hitbox_value(49, 5, HG_HEIGHT, 700);
set_hitbox_value(49, 5, HG_SHAPE, 0);
set_hitbox_value(49, 5, HG_PRIORITY, 8);
set_hitbox_value(49, 5, HG_DAMAGE, 25);
set_hitbox_value(49, 5, HG_ANGLE, 60);
set_hitbox_value(49, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 5, HG_KNOCKBACK_SCALING, 0.6);
//set_hitbox_value(49, 5, HG_BASE_HITPAUSE, 12);
//set_hitbox_value(49, 5, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(49, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(49, 5, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(49, 5, HG_ANGLE_FLIPPER, 8);
