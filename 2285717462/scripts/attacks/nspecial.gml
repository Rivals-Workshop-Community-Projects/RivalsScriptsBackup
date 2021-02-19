set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
// set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 30);

// Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// Charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// Charge, Air
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 3, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// Roll, Initial
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 4, AG_MUNO_WINDOW_CD_SPECIAL, 3);

// Roll
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 5, AG_MUNO_WINDOW_CD_SPECIAL, 3);

// Endlag
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 6, AG_MUNO_WINDOW_CD_SPECIAL, 3);

// Jump
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_GOTO, 6);
set_window_value(AT_NSPECIAL, 7, AG_MUNO_WINDOW_CD_SPECIAL, 3);

// Enemy Bounce
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 6);
set_window_value(AT_NSPECIAL, 8, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// Homing Attack
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 9, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_num_hitboxes(AT_NSPECIAL, 4);

var hbox_size = 30;

// charge hit ground
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, hbox_size);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, hbox_size);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1); // 2
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Grounded Charge");

// charge hit air
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, hbox_size);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, hbox_size);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Midair Charge");

// roll hit
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, hbox_size);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, hbox_size);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Roll");

// jump hit
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, hbox_size);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, hbox_size);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Jump");

for (var i = 1; i < 5; i++) set_hitbox_value(AT_NSPECIAL, i, HG_MUNO_OBJECT_LAUNCH_ANGLE, 45);