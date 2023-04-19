set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//hit 1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);

//hit 2
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//hit 3
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 4);

//the og
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 89);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 35);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("sfx_magichit_weak1"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);

//rapid jab 1
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 33);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("sfx_magichit_weak1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 0.5);
//rapid jab 2
set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

//finisher
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 49);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 92);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45); //was 40
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, vfx_holyhit_l);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("sfx_magichit_medium1"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_HIT_PARTICLE_NUM, particle_num);