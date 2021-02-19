set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("tauntalt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("tauntalt_hurt"));
set_attack_value(AT_TAUNT_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_ell_overheat"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_num_hitboxes(AT_TAUNT_2, 1);

// Explosion
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 190);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 190);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 50);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, big_hit_fx);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 200);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_PARTICLE_NUM, 1);