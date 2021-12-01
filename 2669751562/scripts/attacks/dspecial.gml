set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_missile_loop"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_cannon"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 29);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_DSPECIAL, 2);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 34);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.90);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_THROWS_ROCK, 0);

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 125);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 125);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.50);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 145);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_THROWS_ROCK, 0);
