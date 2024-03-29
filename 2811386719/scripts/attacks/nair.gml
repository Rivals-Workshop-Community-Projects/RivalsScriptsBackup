set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 6);

//Feet
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_NAIR, 1, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

//Torso
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, 10);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_NAIR, 2, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

//Hands
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_NAIR, 3, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);

//Feet
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 4, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);

//Torso
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, 10);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 5, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);

//Hands
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 6, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);