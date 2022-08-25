set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 14);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 1);

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 35);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_LOCKOUT, 14);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, vfx_waterhit_light_huge);
