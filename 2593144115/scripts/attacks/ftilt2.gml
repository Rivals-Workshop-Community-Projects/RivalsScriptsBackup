set_attack_value(AT_FTILT2, AG_SPRITE, sprite_get("ftilt2"));
set_attack_value(AT_FTILT2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT2, AG_HURTBOX_SPRITE, sprite_get("ftilt2_hurt"));

set_window_value(AT_FTILT2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT2, 1, AG_WINDOW_SFX, asset_get("sfx_may_wrap1"));
set_window_value(AT_FTILT2, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_FTILT2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTILT2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTILT2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_FTILT2, 1);

set_hitbox_value(AT_FTILT2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTILT2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT2, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FTILT2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FTILT2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));