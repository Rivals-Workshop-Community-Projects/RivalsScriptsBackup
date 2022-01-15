set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 5);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_JAB, 9, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 5)

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1)
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("axe_hit"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1)
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("axe_hit2"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1)
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("axe_hit2"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, blood_effect);


set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -41);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_TECHABLE, 1)
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("axe_hit3"));
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, blood_effect);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 8);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -76);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 5, HG_TECHABLE, 1)
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sound_get("axe_hit3"));
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, blood_effect);
