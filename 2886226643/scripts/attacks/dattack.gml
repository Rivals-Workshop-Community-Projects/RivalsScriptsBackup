set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);

//dashing active
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 15);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);

//active rise 1
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("ftilt2"));

//active rise 2
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);

//endlag
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 4);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 57);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 57);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 17);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 104);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 57);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 3);