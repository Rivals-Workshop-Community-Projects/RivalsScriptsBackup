set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//start 1
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 3);

//active 1
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//recovery 1
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_FRAME, 1);

//start 2
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, 5);

//active 2
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 4);

//recovery 2
set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FTILT, 6, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX_FRAME, 5);  

set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FTILT, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 8, AG_WINDOW_HSPEED, 4);

set_window_value(AT_FTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 22);


set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -59);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 63);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("sf_hit5"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 41);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.3);
//set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1.);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sf_hit3"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);

