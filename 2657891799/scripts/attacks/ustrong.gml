set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_water_small);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

//side hitboxes
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, vfx_water_medium);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -50);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);

//tipper
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, vfx_water_large);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);