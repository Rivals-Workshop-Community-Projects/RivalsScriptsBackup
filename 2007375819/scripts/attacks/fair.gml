set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, -3);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));