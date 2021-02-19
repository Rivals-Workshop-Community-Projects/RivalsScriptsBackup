set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);//all these sfx used to be in window 2
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);//3


set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 88);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 33);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);//5
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);//.85
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);//12
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);//.9
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 47);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 55);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 22);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);//4
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .5);//.7
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);//12
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .5);//.9
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));//sfx_icehit_medium2