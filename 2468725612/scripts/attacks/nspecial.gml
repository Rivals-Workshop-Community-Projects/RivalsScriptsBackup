set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .60);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 2);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_GOTO, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("throw_hat"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .60);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("throw_hat"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .60);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("throw_hat"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .60);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .60);


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 999999999999999999999999999);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);



