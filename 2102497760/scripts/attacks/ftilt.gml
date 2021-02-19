set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);



set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, -5);


set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 87);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 43);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 122);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 130);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 2, HG_FORCE_FLINCH, 3);

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 87);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 43);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 150);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTILT, 3, HG_EXTRA_HITPAUSE, -4);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTILT, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 3, HG_DRIFT_MULTIPLIER, .01);
set_hitbox_value(AT_FTILT, 3, HG_SDI_MULTIPLIER, .01);
set_hitbox_value(AT_FTILT, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 3, HG_FORCE_FLINCH, 3);
set_hitbox_value(AT_FTILT, 3, HG_THROWS_ROCK, 3);