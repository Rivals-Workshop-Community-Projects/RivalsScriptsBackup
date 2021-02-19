set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("swing_high_2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 0);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HSPEED, 0);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_UTILT, 3);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 19);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 61);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("hit_weak_5"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -13);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -53);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 62);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("hit_weak_5"));

//back hit
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -49);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 16);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 16);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("hit_med_5"));









