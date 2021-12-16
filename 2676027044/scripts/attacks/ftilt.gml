set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("ftilt"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("willosummon"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 41);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("willosummon"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 41);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("willosummon"));

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hfx_shadow_small);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, hfx_shadow_small);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hfx_shadow_small);

/*
set_hitbox_value(AT_FTILT, 1, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_FTILT, 3, HG_SDI_MULTIPLIER, 2);
*/
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, -4);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, -4);
set_hitbox_value(AT_FTILT, 3, HG_SDI_MULTIPLIER, 2);
