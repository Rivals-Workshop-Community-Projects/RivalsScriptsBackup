set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 8);


set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_burst"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 74);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 69);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 39);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, splsh);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

