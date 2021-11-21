set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_NAME, "FStrong (Supercharged)");
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .9);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, sound_get("sfx_claw_swing_med"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, sound_get("sfx_shock_large"));

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, electric_hit);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, electro_burst);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("electroball"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("sfx_electro_hit_heavy"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 12);