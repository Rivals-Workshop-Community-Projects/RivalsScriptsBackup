
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,1);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 117);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 66);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 117);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);

