set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("bair1_sfx"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("bair2_sfx"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("dstrong2_sfx"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 22);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("fast_hit_sfx"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, hit_small3);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 42);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("fast_hit_sfx"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, hit_small3);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 42);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 74);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 76);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("sharp_hit_sfx"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hit_small4);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 40);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 6);
