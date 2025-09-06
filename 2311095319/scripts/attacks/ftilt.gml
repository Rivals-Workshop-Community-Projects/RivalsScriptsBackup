set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 5);

//First Hit
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 84);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 28);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Second Hit
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 72);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 1.6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTILT, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .64);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Third Hit
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 72);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 1.6);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTILT, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .64);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Final Hit
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_MUNO_HITBOX_NAME, "Finishing Hitbox");
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 71);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 48);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 26);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Hitbox In Front of Mario
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_MUNO_HITBOX_NAME, "Front Scoop Hitbox");
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 52);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 62);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 28);
set_hitbox_value(AT_FTILT, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 12);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 22);
//set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));