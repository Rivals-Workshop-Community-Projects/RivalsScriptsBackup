set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("out"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,3);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 4); //horizontal KB towards center of hitbox
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, snow_effect);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 36);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, crit_effect);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("hit1"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 46);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 270);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, crit_effect);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("hit1"));