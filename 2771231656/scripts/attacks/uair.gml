set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("miss1"))

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//sword
set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START,7)

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, sound_get("Sswing2"))

set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,4);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("kick_medium"))

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -38);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 240);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK,4.7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("kick_weak"))

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 70);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 88);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 9.3);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("swordmid"))

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -130);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 140);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 8.9);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("swordmid"))