set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_MUNO_ATTACK_COOLDOWN, 0);

// pull
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sfx_mario_2_pull);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 6);

// idle
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

// throw
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, sfx_mario_2_throw);

set_num_hitboxes(AT_DSPECIAL_AIR, 2);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 40); // 48
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 2); // 0
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_MUNO_HITBOX_NAME, "Grab");

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 315);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Throw");