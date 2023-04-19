set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 8);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12); // 6
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 16);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 12); // 6
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 20); // 6
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8); // 6
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 85);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 59);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3); // 8
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("coreblade_hit_05"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, hitfx1);
//set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 41);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 78);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 101);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3); // 8
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("coreblade_hit_05"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 2);
//set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, hitfx1);
//set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 33);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -39);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 117);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4); // 8
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hitfx1);
//set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);