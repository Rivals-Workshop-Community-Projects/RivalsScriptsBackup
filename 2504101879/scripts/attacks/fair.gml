set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
//startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);
//pause a bit on frame 5
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//active
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//end
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);
//not tipper
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
//TIPPER
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 104);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 6);