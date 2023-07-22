set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("smash"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES,3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
//fist

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, sound_get("draw"));

set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_SFX, sound_get("HA"));
set_window_value(AT_USTRONG, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,5);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("choke"));

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("swordheavy"));

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("swordheavy"));

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -75);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("swordheavy"));

set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("punch_weak"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);