/*set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 1);//*/

set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_new_test"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_new_test_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT, AG_CATEGORY, 2);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_DTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED, -12.5);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 36);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 1);