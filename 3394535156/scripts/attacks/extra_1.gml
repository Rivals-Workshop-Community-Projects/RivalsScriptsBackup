// bomb burst
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("bombburst"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("bombburst"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_NAME, "Bomb Burst");
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_MISC_ADD, "Activated by holding Special after either NSpecial or FSpecial. Upon release, Plague Knight bursts upwards (or horizontally as well if a direction is held) while releasing lingering explosions at the release point.

Plague Knight can cancel any action into Bomb Burst except hitstun and Strong attacks.");


// "startup"
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

// move
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// "endlag", but can be canceled into whatever
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, explode_medium_fx);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
//set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, HFX_GEN_SPIN);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, explode_large_fx);