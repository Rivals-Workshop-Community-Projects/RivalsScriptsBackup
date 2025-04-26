set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_burnend"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("fire_breath"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 4);

//multihits
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_1"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, HFX_ZET_FIRE_DIR);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 3);

//launcher
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -95);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 110);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, HFX_ZET_FIRE_DIR);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 4);