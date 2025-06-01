set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));


var kickStartup = 6;
var kickEndlag = 16;

// ==================================================
// EQUIP SHELL

// pull shell out startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

// now holds shell
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// go back to idle
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// ==================================================
// KICK FORWARD

// startup
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, kickStartup);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 2);

// kick
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);

// go back to idle
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, kickEndlag);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);

// ==================================================
// KICK UPWARD

// startup
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, kickStartup);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX_FRAME, 2);

// kick
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 12);

// go back to idle
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, kickEndlag);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 13);

// ==================================================
// KICK DOWNWARD

// startup
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, kickStartup);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_SFX_FRAME, 2);

// kick
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 17);

// go back to idle
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, kickEndlag);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 18);

// ==================================================
// GRAB

// startup
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_SFX_FRAME, 2);

// active grab window
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 22);

// go back to idle
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 23);

// ==================================================
// regrab

// """grab"""
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, -1);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 4);

// back to idle
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL, 2);

// shell hitbox
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Shell Moving Hitbox");
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, vfx_shell_hit_med);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);	// empty
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
// set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "If thrown initially upwards or downwards, kb_angle is changed to 55.");

// 
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Grab");
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 0); // lol!
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 302);
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 6);