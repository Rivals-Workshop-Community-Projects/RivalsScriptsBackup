set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

// charge loop
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed / 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_absa_jab1"));
// post-charge
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC, "Can be held to loop");