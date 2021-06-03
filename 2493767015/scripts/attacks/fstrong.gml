set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);

//Straight
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//Upwards
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//Downwards
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 9, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 4);

set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_NAME, "Straight Hit 1");

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_NAME, "Straight Hit 2");

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -52);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_NAME, "Upwards Hit");

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_NAME, "Downwards Hit");

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));