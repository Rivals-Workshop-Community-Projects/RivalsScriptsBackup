set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//dts   dta   dth   dtr   dte
//0-0:1 1-1:1 2-2:1 3-4:2 5-5:1

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 2);//5//4
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 9);//10//7
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 2);//5
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 88);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -18);//-29
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);//6
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 94);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 34);//57
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 8);//7
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));