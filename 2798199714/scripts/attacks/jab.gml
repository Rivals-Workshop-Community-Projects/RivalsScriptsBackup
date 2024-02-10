set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("slash"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("slash 2"));
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 1.5);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("slash 3"));
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED, 1.5);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("slash 4"));

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 8.5);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 95);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("slash_hit"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 0.25);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 290);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("slash_hit"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 0.5);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("slash_hit"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 0.5);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 120);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("slash_hit"));
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_JAB, 4, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 20);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 55);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 5, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);

