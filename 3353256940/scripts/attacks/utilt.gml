set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9)
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 72);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 304);