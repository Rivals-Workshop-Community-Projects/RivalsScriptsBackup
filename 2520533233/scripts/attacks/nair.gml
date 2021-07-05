set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("nair"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.53);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 0);


set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.53);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 0);

//install
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 0);


set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.53);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("hisou_hit4"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.53);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sound_get("hisou_hit4"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);

