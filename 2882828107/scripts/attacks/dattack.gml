set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_dig"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_mol_uspec_ready"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_VSPEED, -4.5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DATTACK, 7);

//drag
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 24);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, -32);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, -32);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, -32);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, -1);

//flick
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, -18);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 48);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_X, 68);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK, 7, HG_WIDTH, 54);
set_hitbox_value(AT_DATTACK, 7, HG_HEIGHT, 42);
set_hitbox_value(AT_DATTACK, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 7, HG_ANGLE, 100);
set_hitbox_value(AT_DATTACK, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 7, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 7, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 7, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_DATTACK, 7, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_GROUP, 1);