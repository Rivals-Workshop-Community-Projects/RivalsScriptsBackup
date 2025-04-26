set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);

//start
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));

//open hold
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//close
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_icehit_weak2"));

//slam shut
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//return
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_BAIR, 2);

//sourspot
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.7);

set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_CAMERA_SHAKE, 0);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);

//sweetspot
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.7);

set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -84);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 12);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
