set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

// Startup

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));

// Hitboxes

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ell_fist_explode"));

// Endlag

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_BAIR, 10);

// Fire 1

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -55);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

// Fire 2

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -55);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

// Fire 3 Launch

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -55);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
