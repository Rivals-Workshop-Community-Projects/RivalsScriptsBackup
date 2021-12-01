set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED, -9.25);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 255);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTHROW, 1, HG_EFFECT, 304); // basic large
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTHROW, 1, HG_TECHABLE, 2);


