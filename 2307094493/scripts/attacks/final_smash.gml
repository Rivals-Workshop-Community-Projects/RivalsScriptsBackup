set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("FinalsmashLT"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
set_window_value(49, 1, AG_WINDOW_VSPEED, -20);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("plop_sfx"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(49, 2, AG_WINDOW_LENGTH, 50);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(49, 2, AG_WINDOW_HSPEED, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED, 25);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(49, 3, AG_WINDOW_LENGTH, 150);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 3, AG_WINDOW_HSPEED, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED, 15);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 8);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(49, 4, AG_WINDOW_HSPEED, -1);
set_window_value(49, 4, AG_WINDOW_VSPEED, -3);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 10);

//Lifetime, / visuals
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 300);
set_hitbox_value(49, 1, HG_HITBOX_Y, -80);
set_hitbox_value(49, 1, HG_HITBOX_X, 10);
set_hitbox_value(49, 1, HG_WIDTH, 0);
set_hitbox_value(49, 1, HG_HEIGHT, 0);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 4);
set_hitbox_value(49, 1, HG_ANGLE, 60);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(49, 1, HG_EFFECT, 6);
set_hitbox_value(49, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_plasma_field_loop"));
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);

//Hit 1
set_hitbox_value(49, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 10);
set_hitbox_value(49, 2, HG_LIFETIME, 50);
set_hitbox_value(49, 2, HG_HITBOX_X, 120);
set_hitbox_value(49, 2, HG_HITBOX_Y, -50);
set_hitbox_value(49, 2, HG_WIDTH, 200);
set_hitbox_value(49, 2, HG_HEIGHT, 70);
set_hitbox_value(49, 2, HG_SHAPE, 0);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 10);
set_hitbox_value(49, 2, HG_ANGLE, 45);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(49, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 2);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(49, 3, HG_LIFETIME, 30);
set_hitbox_value(49, 3, HG_HITBOX_X, 305);
set_hitbox_value(49, 3, HG_HITBOX_Y, -40);
set_hitbox_value(49, 3, HG_WIDTH, 200);
set_hitbox_value(49, 3, HG_HEIGHT, 90);
set_hitbox_value(49, 3, HG_SHAPE, 0);
set_hitbox_value(49, 3, HG_PRIORITY, 10);
set_hitbox_value(49, 3, HG_DAMAGE, 10);
set_hitbox_value(49, 3, HG_ANGLE, 45);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(49, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(49, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 4, HG_WINDOW, 2);
set_hitbox_value(49, 4, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(49, 4, HG_LIFETIME, 20);
set_hitbox_value(49, 4, HG_HITBOX_X, 500);
set_hitbox_value(49, 4, HG_HITBOX_Y, -40);
set_hitbox_value(49, 4, HG_WIDTH, 200);
set_hitbox_value(49, 4, HG_HEIGHT, 90);
set_hitbox_value(49, 4, HG_SHAPE, 1);
set_hitbox_value(49, 4, HG_PRIORITY, 10);
set_hitbox_value(49, 4, HG_DAMAGE, 10);
set_hitbox_value(49, 4, HG_ANGLE, 90);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(49, 4, HG_HITBOX_GROUP, 3);

// exploade

set_hitbox_value(49, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(49, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 5, HG_WINDOW, 3);
set_hitbox_value(49, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(49, 5, HG_LIFETIME, 20);
set_hitbox_value(49, 5, HG_HITBOX_X, 600);
set_hitbox_value(49, 5, HG_HITBOX_Y, -180);
set_hitbox_value(49, 5, HG_WIDTH, 600);
set_hitbox_value(49, 5, HG_HEIGHT, 300);
set_hitbox_value(49, 5, HG_PRIORITY, 10);
set_hitbox_value(49, 5, HG_DAMAGE, 10);
set_hitbox_value(49, 5, HG_ANGLE, 45);
set_hitbox_value(49, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(49, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(49, 5, HG_HIT_SFX, asset_get("sfx_clairen_uspecial_rise"));
set_hitbox_value(49, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(49, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(49, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 6, HG_WINDOW, 3);
set_hitbox_value(49, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(49, 6, HG_LIFETIME, 20);
set_hitbox_value(49, 6, HG_HITBOX_X, 600);
set_hitbox_value(49, 6, HG_HITBOX_Y, -180);
set_hitbox_value(49, 6, HG_HITBOX_GROUP, 5);

set_hitbox_value(49, 7, HG_PARENT_HITBOX, 5);
set_hitbox_value(49, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 7, HG_WINDOW, 3);
set_hitbox_value(49, 7, HG_WINDOW_CREATION_FRAME, 40);
set_hitbox_value(49, 7, HG_LIFETIME, 20);
set_hitbox_value(49, 7, HG_HITBOX_X, 600);
set_hitbox_value(49, 7, HG_HITBOX_Y, -180);
set_hitbox_value(49, 7, HG_HITBOX_GROUP, 6);

set_hitbox_value(49, 8, HG_PARENT_HITBOX, 5);
set_hitbox_value(49, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 8, HG_WINDOW, 3);
set_hitbox_value(49, 8, HG_WINDOW_CREATION_FRAME, 60);
set_hitbox_value(49, 8, HG_LIFETIME, 15);
set_hitbox_value(49, 8, HG_HITBOX_X, 600);
set_hitbox_value(49, 8, HG_HITBOX_Y, -180);
set_hitbox_value(49, 8, HG_HITBOX_GROUP, 7);

set_hitbox_value(49, 9, HG_PARENT_HITBOX, 5);
set_hitbox_value(49, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 9, HG_WINDOW, 3);
set_hitbox_value(49, 9, HG_WINDOW_CREATION_FRAME, 80);
set_hitbox_value(49, 9, HG_LIFETIME, 10);
set_hitbox_value(49, 9, HG_HITBOX_X, 600);
set_hitbox_value(49, 9, HG_HITBOX_Y, -180);
set_hitbox_value(49, 9, HG_HITBOX_GROUP, 8);

set_hitbox_value(49, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 10, HG_WINDOW, 3);
set_hitbox_value(49, 10, HG_WINDOW_CREATION_FRAME, 100);
set_hitbox_value(49, 10, HG_LIFETIME, 20);
set_hitbox_value(49, 10, HG_HITBOX_X, 600);
set_hitbox_value(49, 10, HG_HITBOX_Y, -180);
set_hitbox_value(49, 10, HG_WIDTH, 400);
set_hitbox_value(49, 10, HG_HEIGHT, 250);
set_hitbox_value(49, 10, HG_PRIORITY, 10);
set_hitbox_value(49, 10, HG_DAMAGE, 20);
set_hitbox_value(49, 10, HG_ANGLE, 45);
set_hitbox_value(49, 10, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(49, 10, HG_BASE_KNOCKBACK, 50);
set_hitbox_value(49, 10, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 10, HG_VISUAL_EFFECT, 302);
set_hitbox_value(49, 10, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(49, 10, HG_HITBOX_GROUP, 9);