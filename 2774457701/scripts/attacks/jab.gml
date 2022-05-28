set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);