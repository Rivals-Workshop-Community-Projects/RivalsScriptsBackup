set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,1);

// Big Boom
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 73);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 67);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);

// Mid Level Proj
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("explode_fire"));
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("temp_fstrong_proj2"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("temp_fstrong_proj2"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

// BFG
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("explode_fire"));
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("temp_fstrong_proj1"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, sprite_get("temp_fstrong_proj1"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
