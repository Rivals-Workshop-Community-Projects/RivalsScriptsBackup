set_attack_value(AT_NSPECIAL_ETA, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_ETA, AG_SPRITE, sprite_get("AT_NSPECIAL_ETA_GROUND"));
set_attack_value(AT_NSPECIAL_ETA, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_ETA, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_ETA, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_ETA, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_ETA_AIR"));
set_attack_value(AT_NSPECIAL_ETA, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_ETA_AIR_hurt"));
set_attack_value(AT_NSPECIAL_ETA, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_NSPECIAL_ETA, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ETA, 1, AG_WINDOW_LENGTH, 63);
set_window_value(AT_NSPECIAL_ETA, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_ETA, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ETA, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(AT_NSPECIAL_ETA, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ETA, 1, AG_WINDOW_SFX, asset_get("sfx_ice_hammerstart"));

set_window_value(AT_NSPECIAL_ETA, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ETA, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_ETA, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_ETA, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_ETA, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(AT_NSPECIAL_ETA, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ETA, 2, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_hit_ground"));

set_window_value(AT_NSPECIAL_ETA, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ETA, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_ETA, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_ETA, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_ETA, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL_ETA, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);




set_num_hitboxes(AT_NSPECIAL_ETA, 2);

set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_ETA, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_ETA, 2, HG_ANGLE_FLIPPER, 0);