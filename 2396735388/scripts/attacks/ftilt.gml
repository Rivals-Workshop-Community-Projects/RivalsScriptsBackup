set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 4);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 12);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 110);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 0);