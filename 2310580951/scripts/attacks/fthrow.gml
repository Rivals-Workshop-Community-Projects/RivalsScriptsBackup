set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_FTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 7);

//startup
///spin 1
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, sound_get("spinaround"));

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 14);

//active
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 16);

//recovery
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HSPEED, -6);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FTHROW, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW, 1);

//throw hitbox
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium1"));