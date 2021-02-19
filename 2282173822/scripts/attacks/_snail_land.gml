set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("snail_land"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_NAME, "Landing in Cloud");

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);
// set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1, 0);

// set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
// set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -30);
// set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 60);
// set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
// set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
// set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10);
// set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
// set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.7);
// set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.6);
// set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_EXTRA_1, 1, HG_MUNO_HITBOX_NAME, "Melee Hit");

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sfx_ssbu_shock);

set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_MUNO_HITBOX_NAME, "Cloud Explosion");