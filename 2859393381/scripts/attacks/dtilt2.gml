set_attack_value(AT_DTILT2, AG_SPRITE, sprite_get("dtilt2"));
set_attack_value(AT_DTILT2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTILT2, AG_HURTBOX_SPRITE, sprite_get("dtilt2_hurt"));

set_window_value(AT_DTILT2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT2, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_DTILT2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT2, 4, AG_WINDOW_HAS_WHIFFLAG, 6);

set_num_hitboxes(AT_DTILT2,2);

set_hitbox_value(AT_DTILT2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT2, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_DTILT2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT2, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DTILT2, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT2, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DTILT2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DTILT2, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DTILT2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DTILT2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT2, 2, HG_HITBOX_X, 116);
set_hitbox_value(AT_DTILT2, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT2, 2, HG_WIDTH, 56);
set_hitbox_value(AT_DTILT2, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT2, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT2, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DTILT2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT2, 2, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DTILT2, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DTILT2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));