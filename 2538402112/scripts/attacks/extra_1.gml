// NSpecial Blast Seed
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("nspecial2_air"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial2_air_hurt"));
// set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
// set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("EatSeed"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 0);
// set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, -8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX_FRAME, 0);
// set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
// set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1)
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 3)
// set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 1)
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 85);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);

set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PLASMA_SAFE, true);