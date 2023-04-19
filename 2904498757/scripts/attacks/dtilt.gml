set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

// startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

// active 1
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 6);

// active 2
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED, 6);

// active 3
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED, 5);

// endlag
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 6);

// ========== HITBOXES ==========
set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 72);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -25);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 74);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));