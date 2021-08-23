set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);//Jab 1
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sfx_krtd_sword_swipe1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_FRAME, 6);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);//Jab 2
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, sfx_krtd_sword_swipe2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);//Jab 3
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, sfx_krtd_sword_swipe1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FTILT, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FTILT, 8, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FTILT, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
//:trollsmile:

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "Ftilt 1");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Ftilt 2");
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 87);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_TECHABLE, 3);

set_hitbox_value(AT_FTILT, 3, HG_MUNO_HITBOX_NAME, "Ftilt 3");
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 87);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 89);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 3, HG_TECHABLE, 3);