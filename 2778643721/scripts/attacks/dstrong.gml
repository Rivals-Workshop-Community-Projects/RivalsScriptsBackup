set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 24);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("sfx_usword_charge"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_usword_swing"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG,3);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 180);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 60 + strong_charge);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("shockwave"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("shockwave"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 256);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 60 + strong_charge);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -120);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("shockwave2"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, sprite_get("shockwave2"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 256);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));