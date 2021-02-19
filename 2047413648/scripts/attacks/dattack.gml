set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(AT_DATTACK,3);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, .76);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, .76);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 17);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -65);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 75);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.4)
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 303);

