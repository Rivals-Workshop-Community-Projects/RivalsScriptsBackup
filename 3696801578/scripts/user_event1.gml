// JAKE IS DETACHED

var attack_sprites = jake_sprites[? PS_ATTACK_AIR]
var keys = ds_map_keys(attack_sprites)
for (var i = 0; i < ds_map_size(attack_sprites); i++) {
	reset_attack_value(keys[i], AG_HURTBOX_SPRITE)
}
// JAB
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);

// NAIR
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 14);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 0);	

// FSTRONG
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4)
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 22)
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4)
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11)
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0)
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"))
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0)
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 0)

// USTRONG
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7)
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4)
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, HFX_GEN_BIG)
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 0);

// DSTRONG
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH,6)
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6)
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 22)
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 0);