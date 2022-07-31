//Suit FTilt
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("suit_ftilt"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("suit_ftilt_hurt"));

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FTHROW, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
