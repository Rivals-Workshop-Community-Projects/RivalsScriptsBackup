set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sfx_mach_tornado_start);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

//Strong
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Weak
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sfx_mach_tornado_slash);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 5);

//Weak Repeat
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);

//Endlag
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sfx_mach_tornado_end);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_NSPECIAL, 3);

//Strong Hit
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Strong Hitbox");
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sfx_smash_ult_sword_hit_heavy);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);

//Weak Hit (Start)
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Late Hitbox");
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 65);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 6);

//Weak Hit (Start)
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Late Hitbox");
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 65);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 6);