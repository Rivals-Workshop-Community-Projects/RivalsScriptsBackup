set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_TYPE, 0);
//set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_FRAME, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,11);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 55);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 128);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 72);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));

set_hitbox_value(AT_UTILT, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 11, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 11, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 11, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 11, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 11, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 11, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 11, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 11, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 11, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 11, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 11, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 11, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));