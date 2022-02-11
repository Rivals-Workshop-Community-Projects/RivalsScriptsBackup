set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
// set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));

// SWING BACK
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12); // 18
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .11);
// set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, );

// SINGLE HOLD FRAME (MAGNET)
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 9); // 18
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .11);

// ENDLAG
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6); // 18
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
// set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .11);

set_num_hitboxes(AT_NSPECIAL_2, 0);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 55); //50
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1); //-1
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("round"), 10));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1")); // sfx_kragg_spike
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.3); //0.7
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1); // too punishing for Targma
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("ball_explode")); //nspecial_2_proj_disintegrate