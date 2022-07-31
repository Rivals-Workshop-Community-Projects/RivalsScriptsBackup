//Suit Jab
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("suit_jab"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("suit_jab_hurt"));

set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NTHROW, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
