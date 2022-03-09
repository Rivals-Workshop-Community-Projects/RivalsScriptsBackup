set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT,4);

// Umbrella
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 59);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 98);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Ice
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 53);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -53);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 43);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 108);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_UTILT, 2, HG_TIPPER, 1);

// Should Hit Here Too
// Umbrella
set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 51);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Ice
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -106);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 88);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 39);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_UTILT, 4, HG_TIPPER, 1);