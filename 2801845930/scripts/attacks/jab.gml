set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// Startup

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("jab_start"));

// Rapid Hits

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);

// Final Hit

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("jab_blast"));

// Endlag

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_JAB, 5);

// Charge hit 1

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

// Charge hit 2

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

// Charge hit 3

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -54);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

// Charge hit 3

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -54);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

// Boom Hit

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 65);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 110);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 65);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sound_get("jab_boom"));

// Pull In Hitbox

/*set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -54);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));