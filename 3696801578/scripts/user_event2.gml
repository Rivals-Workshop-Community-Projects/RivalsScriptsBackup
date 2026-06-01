// JAKE IS NOT DETACHED

var attack_sprites = jake_sprites[? PS_ATTACK_AIR]
var keys = ds_map_keys(attack_sprites)
var values = ds_map_values(attack_sprites)
for (var i = 0; i < ds_map_size(attack_sprites); i++) {
	set_attack_value(keys[i], AG_HURTBOX_SPRITE, values[i].hurtbox)
}

// JAB
reset_attack_value(AT_JAB, AG_NUM_WINDOWS);

// NAIR
reset_attack_value(AT_NAIR, AG_LANDING_LAG)
reset_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH)
reset_hitbox_value(AT_NAIR, 2, HG_LIFETIME)

// FSTRONG
reset_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH)
reset_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH)
reset_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME)
reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE)
reset_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING)
reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX)
reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING)
reset_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME)

// USTRONG
reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)
reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME)
reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT)
reset_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT);
reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP);
reset_hitbox_value(AT_USTRONG, 3, HG_LIFETIME);

// DSTRONG
reset_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH)
reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH)
reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE);
reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE);
reset_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING);
reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER);
reset_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH);
reset_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE);
reset_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME);
reset_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME);
