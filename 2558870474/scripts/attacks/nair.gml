set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1.5);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR,8);

// First Hit Brella
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 81);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 81);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

// First Hit Ice
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 105);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_NAIR, 2, HG_TIPPER, 1);

// Second Hit Brella
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);

// Second Hit Ice
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 4, HG_TIPPER, 1);

// Third Hit Brella
set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);

// Third Hit Ice
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 6, HG_TIPPER, 1);

// Final Hit
//set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 85);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 85);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 3);

// Ice Final Hit
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 109);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 109);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 8, HG_TIPPER, 1);
