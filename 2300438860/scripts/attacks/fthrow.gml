set_attack_value(AT_FTHROW, AG_CATEGORY, 0);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW,2);

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 49);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 54);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 99);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 99);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, sound_get("hstrong"));
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -72);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 99);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 99);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("hstrong"));
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, 1);