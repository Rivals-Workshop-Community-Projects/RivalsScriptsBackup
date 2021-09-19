set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

// Startup

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

// Hitboxes

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));

// Endlag

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));

// Hitboxes

set_num_hitboxes(AT_DATTACK, 10);

// Swing

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 95);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));