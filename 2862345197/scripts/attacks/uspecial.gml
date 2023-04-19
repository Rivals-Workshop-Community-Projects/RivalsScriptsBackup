set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_FAF, "???");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Press Special or Jump to pop the bubble. Bubble pops automatically when near the top blastzone or hitting a ceiling. Bounces off the bottom blastzone during startup.");

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("bubble_enter"));

// bob downward
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// level out
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// upward loop
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

// popping out
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_USPECIAL, 0);
var temp_num = 1;

set_hitbox_value(AT_USPECIAL, temp_num, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_X, -0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ZAP, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_LOCKOUT, 8);
temp_num += 1;

set_hitbox_value(AT_USPECIAL, temp_num, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, temp_num, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_X, -0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ZAP, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_LOCKOUT, 8);
temp_num += 1;

set_hitbox_value(AT_USPECIAL, temp_num, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, temp_num, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_X, -0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ZAP, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_LOCKOUT, 8);
temp_num += 1;