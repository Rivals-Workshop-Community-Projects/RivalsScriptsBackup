set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"))
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 82);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 82);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 82);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 82);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1.1412);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 20, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 20, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_X,  100);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 20, HG_WIDTH, 94);
set_hitbox_value(AT_NSPECIAL, 20, HG_HEIGHT, 94);
set_hitbox_value(AT_NSPECIAL, 20, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 20, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 20, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_IS_TRANSCENDENT, true );