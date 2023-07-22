set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("miss1"))
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, sound_get("miss2"))

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//sword
set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 6, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX, sound_get("Sswing1"))
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,4);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("kick_weak"))

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("kick_medium"))
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("swordmid"))

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 60);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("swordmid"))